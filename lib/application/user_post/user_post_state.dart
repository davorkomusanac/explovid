part of 'user_post_bloc.dart';

@freezed
abstract class UserPostState with _$UserPostState {
  const factory UserPostState({
    @required bool isLoadingPost,
    @required bool isPostLiked,
    @required bool isCurrentUserOwnerOfPost,
    @required bool isSpoiler,
    @required OurUserPost userPost,
    //Added numberOfLikes and Comments as part of state, so that the UI updates when liked or commented
    @required num numberOfLikes,
    @required num numberOfComments,
    @required String errorMessage,
    //post likers
    @required List<OurUser> postLikers,
    @required bool isLoadingPostLikers,
    //pagination
    @required Timestamp postLikersLastInListTimestamp,
    @required int nextPage,
    @required bool isThereMorePostLikersPageToLoad,
    //post comments
    @required bool isShowAllSpoilersInCommentsPressed,
    @required bool isUploadingComment,
    @required bool isLoadingPostComments,
    @required List<OurPostComment> postComments,
    @required List<OurUser> postCommentsUserProfiles,
    //pagination
    @required Timestamp postCommentLastInListTimestamp,
    @required num postCommentLastInListNumberOfLikes,
    @required bool isThereMorePostCommentsPageToLoad,
    //like post comments
    @required Map<String, bool> postCommentsLikedByCurrentUser,
    //comment likers
    @required List<OurUser> commentLikers,
    @required bool isLoadingCommentLikers,
    //pagination
    @required Timestamp commentLikersLastInListTimestamp,
    @required bool isThereMoreCommentLikersPageToLoad,
    //comment replies
    @required Map<String, bool> isCommentRepliesShown,
    @required Map<String, bool> isLoadingCommentReplies,
    @required Map<String, List<OurPostComment>> commentReplies,
    @required Map<String, List<OurUser>> commentRepliesUserProfiles,
    //pagination
    @required Map<String, Timestamp> commentRepliesLastInListTimestamp,
    @required Map<String, bool> isThereMoreCommentRepliesPageToLoad,
    //like reply
    @required Map<String, bool> commentRepliesLikedByCurrentUser,
    //reply likers
    @required List<OurUser> replyLikers,
    @required bool isLoadingReplyLikers,
    //pagination
    @required Timestamp replyLikersLastInListTimestamp,
    @required bool isThereMoreReplyLikersPageToLoad,
  }) = _UserPostState;

  factory UserPostState.initial() => UserPostState(
        isLoadingPost: true,
        isPostLiked: false,
        isCurrentUserOwnerOfPost: false,
        isSpoiler: false,
        errorMessage: "",
        numberOfLikes: 0,
        numberOfComments: 0,
        userPost: OurUserPost(
            tmdbId: 0,
            title: "",
            posterPath: "",
            isOfTypeMovie: true,
            isSpoiler: false,
            review: "",
            rating: 0,
            postUid: "",
            postOwnerUid: "",
            postCreationDate: Timestamp.now(),
            numberOfLikes: 0,
            numberOfComments: 0),
        //post likers
        postLikers: [],
        isLoadingPostLikers: false,
        postLikersLastInListTimestamp: Timestamp.now(),
        nextPage: 1,
        isThereMorePostLikersPageToLoad: true,
        //comments
        isShowAllSpoilersInCommentsPressed: false,
        isUploadingComment: false,
        isLoadingPostComments: true,
        postComments: [],
        postCommentsUserProfiles: [],
        //pagination
        postCommentLastInListTimestamp: Timestamp.now(),
        postCommentLastInListNumberOfLikes: 0,
        isThereMorePostCommentsPageToLoad: true,
        postCommentsLikedByCurrentUser: {},
        //comment likers
        commentLikers: [],
        isLoadingCommentLikers: true,
        commentLikersLastInListTimestamp: Timestamp.now(),
        isThereMoreCommentLikersPageToLoad: true,
        //comment replies
        isCommentRepliesShown: {},
        isLoadingCommentReplies: {},
        commentReplies: {},
        commentRepliesUserProfiles: {},
        commentRepliesLastInListTimestamp: {},
        isThereMoreCommentRepliesPageToLoad: {},
        //like replies
        commentRepliesLikedByCurrentUser: {},
        //reply likers
        replyLikers: [],
        isLoadingReplyLikers: true,
        //pagination
        replyLikersLastInListTimestamp: Timestamp.now(),
        isThereMoreReplyLikersPageToLoad: true,
      );
}
