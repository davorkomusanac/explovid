import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/models/our_user_post/our_post_comment.dart';
import 'package:explovid/data/models/our_user_post/our_user_post.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'user_post_bloc.freezed.dart';
part 'user_post_event.dart';
part 'user_post_state.dart';

class UserPostBloc extends Bloc<UserPostEvent, UserPostState> {
  final UserActionsRepository _userActionsRepository;
  UserPostBloc(this._userActionsRepository) : super(UserPostState.initial());

  @override
  Stream<UserPostState> mapEventToState(
    UserPostEvent event,
  ) async* {
    yield* event.map(
      loadPostPressed: (e) async* {
        yield state.copyWith(
          isLoadingPost: true,
          errorMessage: '',
        );
        var values = await Future.wait([
          _userActionsRepository.getPost(postOwnerUid: e.postOwnerUid, postUid: e.postUid),
          _userActionsRepository.isPostLiked(postOwnerUid: e.postOwnerUid, postUid: e.postUid),
        ]);
        OurUserPost post = values[0];
        bool isPostLiked = values[1];
        bool isCurrentUserOwnerOfPost = _userActionsRepository.isUserOwnerOfPost(postOwnerUid: e.postOwnerUid);
        yield state.copyWith(
          isLoadingPost: false,
          isPostLiked: isPostLiked,
          isCurrentUserOwnerOfPost: isCurrentUserOwnerOfPost,
          userPost: post,
          numberOfLikes: post.numberOfLikes,
          numberOfComments: post.numberOfComments,
          isSpoiler: post.isSpoiler,
        );
      },
      likePostPressed: (e) async* {
        yield state.copyWith(
          isPostLiked: true,
          errorMessage: '',
          numberOfLikes: state.numberOfLikes + 1,
        );
        var result = await _userActionsRepository.likePost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          postPhotoUrl: e.postPhotoUrl,
        );
        bool isSuccessfullyLiked = result.isEmpty;
        yield isSuccessfullyLiked
            ? state.copyWith(
                isPostLiked: true,
                errorMessage: '',
              )
            : state.copyWith(
                isPostLiked: false,
                errorMessage: result,
                numberOfLikes: state.numberOfLikes - 1,
              );
      },
      unlikePostPressed: (e) async* {
        yield state.copyWith(
          isPostLiked: false,
          errorMessage: '',
          numberOfLikes: state.numberOfLikes - 1,
        );
        var result = await _userActionsRepository.unlikePost(postOwnerUid: e.postOwnerUid, postUid: e.postUid);
        bool isSuccessfullyUnliked = result.isEmpty;
        yield isSuccessfullyUnliked
            ? state.copyWith(
                isPostLiked: false,
                errorMessage: '',
              )
            : state.copyWith(
                isPostLiked: true,
                errorMessage: result,
                numberOfLikes: state.numberOfLikes + 1,
              );
      },
      showSpoilerPressed: (e) async* {
        yield state.copyWith(
          isSpoiler: false,
        );
      },
      showPostLikersPressed: (e) async* {
        yield state.copyWith(
          isLoadingPostLikers: true,
        );
        //Need to get the timestamp so that pagination is possible (startAfter requires the timestamp)
        List<dynamic> postLikersWithTime =
            await _userActionsRepository.showPostLikers(postOwnerUid: e.postOwnerUid, postUid: e.postUid);
        List<OurUser> postLikers = postLikersWithTime[0];
        Timestamp time = postLikersWithTime[1];
        yield state.copyWith(
          isLoadingPostLikers: false,
          postLikers: postLikers,
          postLikersLastInListTimestamp: time,
          isThereMorePostLikersPageToLoad: postLikers.length < 15 ? false : true,
        );
      },
      nextPageShowPostLikersPressed: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMorePostLikersPageToLoad) {
          List<dynamic> nextPagePostLikersWithTimestamp = await _userActionsRepository.showPostLikersNextPage(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            lastUserTimestamp: state.postLikersLastInListTimestamp,
          );
          List<OurUser> nextPagePostLikers = nextPagePostLikersWithTimestamp[0];
          time = nextPagePostLikersWithTimestamp[1];
          isThereMore = nextPagePostLikers.length < 15 ? false : true;
          for (OurUser user in nextPagePostLikers) {
            state.postLikers.add(user);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          postLikersLastInListTimestamp: time,
          isThereMorePostLikersPageToLoad: isThereMore,
        );
      },
      //Comment
      commentPostPressed: (e) async* {
        yield state.copyWith(
          isUploadingComment: true,
          errorMessage: '',
          numberOfComments: state.numberOfComments + 1,
        );
        List<dynamic> result = await _userActionsRepository.commentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          commentText: e.commentText,
          isCommentSpoiler: e.isCommentSpoiler,
          postPhotoUrl: e.postPhotoUrl,
        );
        OurUser user = result[0];
        OurPostComment comment = result[1];
        if (user.uid.isNotEmpty) {
          state.postCommentsUserProfiles.add(user);
          state.postComments.add(comment);
          //Set default unliked comment when first posted
          state.postCommentsLikedByCurrentUser[comment.commentUid] = false;
        }
        yield user.uid.isEmpty
            ? state.copyWith(
                isUploadingComment: true,
                errorMessage: 'There was an error uploading your comment, try again.',
                numberOfComments: state.numberOfComments - 1,
              )
            : state.copyWith(
                isUploadingComment: false,
                errorMessage: '',
              );
      },
      deleteCommentPostPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberOfComments: state.numberOfComments - 1,
        );
        var result = await _userActionsRepository.deleteCommentFromPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          commentUid: e.commentUid,
          commentOwnerUid: e.commentOwnerUid,
        );
        if (result.isEmpty) {
          add(
            UserPostEvent.showPostCommentsPressed(postOwnerUid: e.postOwnerUid, postUid: e.postUid),
          );
        }
        yield result.isEmpty
            ? state.copyWith(
                //increment nextPage to change state
                nextPage: state.nextPage + 1,
              )
            : state.copyWith(
                //increment nextPage to change state
                nextPage: state.nextPage + 1,
                numberOfComments: state.numberOfComments + 1,
                errorMessage: result,
              );
      },
      showPostCommentsPressed: (e) async* {
        //Clear all comment replies, so that the state gets updated when moving between different comment pages
        state.isCommentRepliesShown.clear();
        state.isLoadingCommentReplies.clear();
        state.commentReplies.clear();
        state.commentRepliesUserProfiles.clear();
        state.commentRepliesLastInListTimestamp.clear();
        state.isThereMoreCommentRepliesPageToLoad.clear();
        state.commentRepliesLikedByCurrentUser.clear();

        yield state.copyWith(
          isLoadingPostComments: true,
          isShowAllSpoilersInCommentsPressed: false,
        );
        List<dynamic> result = await _userActionsRepository.showPostComments(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
        );
        List<OurPostComment> postComments = result[0];
        List<OurUser> postCommentsUserProfiles = result[1];
        Timestamp time = result[2];
        num commentNumberOfLikes = result[3];

        //Check if comments are liked by current user
        Map<String, bool> likedComments = await _userActionsRepository.isCommentPostLiked(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          allComments: postComments,
        );

        yield state.copyWith(
          isLoadingPostComments: false,
          postComments: postComments,
          postCommentsUserProfiles: postCommentsUserProfiles,
          postCommentLastInListTimestamp: time,
          postCommentLastInListNumberOfLikes: commentNumberOfLikes,
          isThereMorePostCommentsPageToLoad: postComments.length < 15 ? false : true,
          postCommentsLikedByCurrentUser: likedComments,
        );
      },
      showAllSpoilersInCommentsPressed: (e) async* {
        yield state.copyWith(
          isShowAllSpoilersInCommentsPressed: true,
        );
      },
      nextPageShowPostCommentsPressed: (e) async* {
        Timestamp time = Timestamp.now();
        num commentNumberOfLikes = 0;
        bool isThereMore = false;
        if (state.isThereMorePostCommentsPageToLoad) {
          List<dynamic> nextPageResult = await _userActionsRepository.showPostCommentsNextPage(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            lastCommentTimestamp: state.postCommentLastInListTimestamp,
            lastCommentNumberOfLikes: state.postCommentLastInListNumberOfLikes,
          );
          List<OurPostComment> postComments = nextPageResult[0];
          List<OurUser> postCommentsUserProfiles = nextPageResult[1];
          time = nextPageResult[2];
          commentNumberOfLikes = nextPageResult[3];
          isThereMore = postComments.length < 15 ? false : true;

          //Check if comments are liked by current user
          Map<String, bool> likedComments = await _userActionsRepository.isCommentPostLiked(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            allComments: postComments,
          );
          for (String key in likedComments.keys) state.postCommentsLikedByCurrentUser[key] = likedComments[key];

          for (OurPostComment comment in postComments) state.postComments.add(comment);
          for (OurUser user in postCommentsUserProfiles) state.postCommentsUserProfiles.add(user);
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          postCommentLastInListTimestamp: time,
          postCommentLastInListNumberOfLikes: commentNumberOfLikes,
          isThereMorePostCommentsPageToLoad: isThereMore,
        );
      },
      likePostCommentPressed: (e) async* {
        //Put it to true first, and then if it there is an error, remove the like
        state.postCommentsLikedByCurrentUser[e.commentUid] = true;
        yield state.copyWith(
          errorMessage: '',
          nextPage: state.nextPage + 1,
        );
        String result = await _userActionsRepository.likeCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          commentUid: e.commentUid,
          commentOwnerUid: e.commentOwnerUid,
          postPhotoUrl: e.postPhotoUrl,
          commentText: e.commentText,
        );
        if (result.isNotEmpty) {
          state.postCommentsLikedByCurrentUser[e.commentUid] = false;
          yield state.copyWith(
            errorMessage: result,
          );
        } else {
          //Increasing num just to update state
          yield state.copyWith(
            nextPage: state.nextPage + 1,
          );
        }
      },
      unlikePostCommentPressed: (e) async* {
        //Put it to true first, and then if it there is an error, remove the like
        state.postCommentsLikedByCurrentUser[e.commentUid] = false;
        yield state.copyWith(
          errorMessage: '',
          nextPage: state.nextPage + 1,
        );
        String result = await _userActionsRepository.unlikeCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          commentUid: e.commentUid,
          commentOwnerUid: e.commentOwnerUid,
        );
        if (result.isNotEmpty) {
          state.postCommentsLikedByCurrentUser[e.commentUid] = true;
          yield state.copyWith(
            errorMessage: result,
          );
        } else {
          //Increasing num just to update state
          yield state.copyWith(
            nextPage: state.nextPage + 1,
          );
        }
      },
      showCommentLikersPressed: (e) async* {
        yield state.copyWith(
          isLoadingCommentLikers: true,
        );
        //Need to get the timestamp so that pagination is possible (startAfter requires the timestamp)
        List<dynamic> commentLikersWithTime = await _userActionsRepository.showCommentLikers(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          commentUid: e.commentUid,
        );
        List<OurUser> commentLikers = commentLikersWithTime[0];
        Timestamp time = commentLikersWithTime[1];
        yield state.copyWith(
          isLoadingCommentLikers: false,
          commentLikers: commentLikers,
          commentLikersLastInListTimestamp: time,
          isThereMoreCommentLikersPageToLoad: commentLikers.length < 15 ? false : true,
        );
      },
      nextPageShowCommentLikersPressed: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreCommentLikersPageToLoad) {
          List<dynamic> nextPageCommentLikersWithTimestamp = await _userActionsRepository.showCommentLikersNextPage(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            commentUid: e.commentUid,
            lastUserTimestamp: state.commentLikersLastInListTimestamp,
          );
          List<OurUser> nextPageCommentLikers = nextPageCommentLikersWithTimestamp[0];
          time = nextPageCommentLikersWithTimestamp[1];
          isThereMore = nextPageCommentLikers.length < 15 ? false : true;
          for (OurUser user in nextPageCommentLikers) {
            state.commentLikers.add(user);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          commentLikersLastInListTimestamp: time,
          isThereMoreCommentLikersPageToLoad: isThereMore,
        );
      },
      //Replies
      replyToCommentPressed: (e) async* {
        yield state.copyWith(
          isUploadingComment: true,
          errorMessage: '',
          numberOfComments: state.numberOfComments + 1,
        );
        List<dynamic> result = await _userActionsRepository.replyToOtherCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          commentText: e.commentText,
          isCommentSpoiler: e.isCommentSpoiler,
          postPhotoUrl: e.postPhotoUrl,
          uidOfTheCommentOwnerBeingRepliedTo: e.uidOfTheCommentOwnerBeingRepliedTo,
        );
        OurUser user = result[0];
        OurPostComment comment = result[1];
        if (user.uid.isNotEmpty) {
          //Check if the list is initialized, if not, set it to empty.
          if (state.commentReplies[e.parentCommentUid] == null) state.commentReplies[e.parentCommentUid] = [];
          if (state.commentRepliesUserProfiles[e.parentCommentUid] == null)
            state.commentRepliesUserProfiles[e.parentCommentUid] = [];
          //Add reply to list of replies for that parent
          state.commentReplies[e.parentCommentUid].add(comment);
          state.commentRepliesUserProfiles[e.parentCommentUid].add(user);
          //Make the reply appear even if no other replies are loaded yet
          state.isCommentRepliesShown[e.parentCommentUid] = true;
          state.isLoadingCommentReplies[e.parentCommentUid] = false;
          //Check how many replies are there so that the view more replies button is hidden if this is the only reply
          state.isThereMoreCommentRepliesPageToLoad[e.parentCommentUid] =
              state.commentReplies[e.parentCommentUid].length < 5 ? false : true;
        }
        yield user.uid.isEmpty
            ? state.copyWith(
                isUploadingComment: false,
                errorMessage: 'There was an error uploading your comment, try again.',
                numberOfComments: state.numberOfComments - 1,
              )
            : state.copyWith(
                isUploadingComment: false,
              );
      },
      deleteReplyToCommentPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberOfComments: state.numberOfComments - 1,
        );
        var result = await _userActionsRepository.deleteReplyToOtherCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          commentUid: e.commentUid,
          commentOwnerUid: e.commentOwnerUid,
          parentCommentOwnerUid: e.parentCommentOwnerUid,
        );
        //Reset so that the comments load again
        if (result.isEmpty) {
          add(
            UserPostEvent.showPostCommentsPressed(postOwnerUid: e.postOwnerUid, postUid: e.postUid),
          );
        }
        yield result.isEmpty
            ? state.copyWith(
                //increment nextPage to change state
                nextPage: state.nextPage + 1,
              )
            : state.copyWith(
                //increment nextPage to change state
                nextPage: state.nextPage + 1,
                numberOfComments: state.numberOfComments + 1,
                errorMessage: result,
              );
      },
      showCommentRepliesPressed: (e) async* {
        state.isCommentRepliesShown[e.parentCommentUid] = true;
        state.isLoadingCommentReplies[e.parentCommentUid] = true;
        //Incrementing nextPage just to update state
        yield state.copyWith(
          nextPage: state.nextPage + 1,
        );
        List<dynamic> result = await _userActionsRepository.showCommentReplies(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
        );
        List<OurPostComment> commentReplies = result[0];
        List<OurUser> commentRepliesUserProfiles = result[1];
        Timestamp time = result[2];

        //Add all replies to the map of replies for particular parent comment
        //Reversed the list so that the newest one are shown from bottom up
        state.commentReplies[e.parentCommentUid] = commentReplies.reversed.toList();
        state.commentRepliesUserProfiles[e.parentCommentUid] = commentRepliesUserProfiles.reversed.toList();
        //For pagination
        state.commentRepliesLastInListTimestamp[e.parentCommentUid] = time;
        state.isThereMoreCommentRepliesPageToLoad[e.parentCommentUid] = commentReplies.length < 5 ? false : true;

        //Check if replies are liked by current user
        Map<String, bool> likedReplies = await _userActionsRepository.isCommentRepliesLiked(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          allComments: commentReplies.reversed.toList(),
        );
        for (var reply in likedReplies.keys) {
          state.commentRepliesLikedByCurrentUser[reply] = likedReplies[reply];
        }
        state.isLoadingCommentReplies[e.parentCommentUid] = false;

        //Update state
        yield state.copyWith(
          nextPage: state.nextPage + 1,
        );
      },
      nextPageShowCommentRepliesPressed: (e) async* {
        if (state.isThereMoreCommentRepliesPageToLoad[e.parentCommentUid]) {
          state.isCommentRepliesShown[e.parentCommentUid] = true;
          state.isLoadingCommentReplies[e.parentCommentUid] = true;
          //Incrementing nextPage just to update state
          yield state.copyWith(
            nextPage: state.nextPage + 1,
          );

          List<dynamic> result = await _userActionsRepository.showCommentRepliesNextPage(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            parentCommentUid: e.parentCommentUid,
            lastReplyTimestamp: state.commentRepliesLastInListTimestamp[e.parentCommentUid],
          );
          List<OurPostComment> commentReplies = result[0];
          List<OurUser> commentRepliesUserProfiles = result[1];
          Timestamp time = result[2];

          //Add all replies to the map of replies for particular parent comment
          //Reversed the list so that the newest one are shown from bottom up
          state.commentReplies[e.parentCommentUid].insertAll(0, commentReplies.reversed);
          state.commentRepliesUserProfiles[e.parentCommentUid].insertAll(0, commentRepliesUserProfiles.reversed);
          //For pagination
          state.commentRepliesLastInListTimestamp[e.parentCommentUid] = time;
          state.isThereMoreCommentRepliesPageToLoad[e.parentCommentUid] = commentReplies.length < 5 ? false : true;

          //Check if replies are liked by current user
          Map<String, bool> likedReplies = await _userActionsRepository.isCommentRepliesLiked(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            parentCommentUid: e.parentCommentUid,
            allComments: commentReplies.reversed.toList(),
          );
          for (var reply in likedReplies.keys) {
            state.commentRepliesLikedByCurrentUser[reply] = likedReplies[reply];
          }

          //Set loading to false so that results are shown
          state.isLoadingCommentReplies[e.parentCommentUid] = false;
        }
        //Update state
        yield state.copyWith(
          nextPage: state.nextPage + 1,
        );
      },
      hideCommentRepliesPressed: (e) async* {
        state.isCommentRepliesShown[e.parentCommentUid] = false;
        //Incrementing nextPage just to update state
        yield state.copyWith(
          nextPage: state.nextPage + 1,
        );
      },
      unHideCommentRepliesPressed: (e) async* {
        state.isCommentRepliesShown[e.parentCommentUid] = true;
        //Incrementing nextPage just to update state
        yield state.copyWith(
          nextPage: state.nextPage + 1,
        );
      },
      //like replies
      likeReplyToCommentPressed: (e) async* {
        state.commentRepliesLikedByCurrentUser[e.commentUid] = true;
        yield state.copyWith(
          errorMessage: '',
          nextPage: state.nextPage + 1,
        );
        String result = await _userActionsRepository.likeReplyToOtherCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          commentUid: e.commentUid,
          commentText: e.commentText,
          postPhotoUrl: e.postPhotoUrl,
          commentOwnerUid: e.commentOwnerUid,
        );
        if (result.isNotEmpty) {
          state.commentRepliesLikedByCurrentUser[e.commentUid] = false;
          yield state.copyWith(
            errorMessage: result,
          );
        } else {
          //Increasing num just to update state
          yield state.copyWith(
            nextPage: state.nextPage + 1,
          );
        }
      },
      unlikeReplyToCommentPressed: (e) async* {
        state.commentRepliesLikedByCurrentUser[e.commentUid] = false;
        yield state.copyWith(
          errorMessage: '',
          nextPage: state.nextPage + 1,
        );
        String result = await _userActionsRepository.unLikeReplyToOtherCommentPost(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          commentUid: e.commentUid,
          commentOwnerUid: e.commentOwnerUid,
        );
        if (result.isNotEmpty) {
          state.commentRepliesLikedByCurrentUser[e.commentUid] = true;
          yield state.copyWith(
            errorMessage: result,
          );
        } else {
          //Increasing num just to update state
          yield state.copyWith(
            nextPage: state.nextPage + 1,
          );
        }
      },
      showReplyLikersPressed: (e) async* {
        yield state.copyWith(
          isLoadingReplyLikers: true,
        );
        //Need to get the timestamp so that pagination is possible (startAfter requires the timestamp)
        List<dynamic> replyLikersWithTime = await _userActionsRepository.showCommentRepliesLikers(
          postOwnerUid: e.postOwnerUid,
          postUid: e.postUid,
          parentCommentUid: e.parentCommentUid,
          commentUid: e.commentUid,
        );
        List<OurUser> replyLikers = replyLikersWithTime[0];
        Timestamp time = replyLikersWithTime[1];
        yield state.copyWith(
          isLoadingReplyLikers: false,
          replyLikers: replyLikers,
          replyLikersLastInListTimestamp: time,
          isThereMoreReplyLikersPageToLoad: replyLikers.length < 15 ? false : true,
        );
      },
      nextPageShowReplyLikersPressed: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreReplyLikersPageToLoad) {
          List<dynamic> nextPageReplyLikersWithTimestamp = await _userActionsRepository.showCommentRepliesLikersNextPage(
            postOwnerUid: e.postOwnerUid,
            postUid: e.postUid,
            parentCommentUid: e.parentCommentUid,
            commentUid: e.commentUid,
            lastUserTimestamp: state.replyLikersLastInListTimestamp,
          );
          List<OurUser> nextPageReplyLikers = nextPageReplyLikersWithTimestamp[0];
          time = nextPageReplyLikersWithTimestamp[1];
          isThereMore = nextPageReplyLikers.length < 15 ? false : true;
          for (OurUser user in nextPageReplyLikers) {
            state.replyLikers.add(user);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          replyLikersLastInListTimestamp: time,
          isThereMoreReplyLikersPageToLoad: isThereMore,
        );
      },
    );
  }
}
