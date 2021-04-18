import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_information_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/comments/comment_likers_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/comments/comment_replies_likers_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCommentsPage extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;
  final String postOwnerUsername;
  final String postOwnerProfilePhoto;
  final num postOwnerRating;
  final String postOwnerReview;
  final bool isPostSpoiler;
  final Timestamp postCreationDate;
  final bool isKeyboardFocused;
  final String postPhotoUrl;

  PostCommentsPage({
    @required this.postOwnerUid,
    @required this.postUid,
    @required this.postOwnerUsername,
    @required this.postOwnerProfilePhoto,
    @required this.postOwnerRating,
    @required this.postOwnerReview,
    @required this.isPostSpoiler,
    @required this.postCreationDate,
    @required this.isKeyboardFocused,
    @required this.postPhotoUrl,
  });

  @override
  _PostCommentsPageState createState() => _PostCommentsPageState();
}

class _PostCommentsPageState extends State<PostCommentsPage> {
  bool isCommentSpoiler = false;
  bool isPostSpoiler;
  bool isReviewExpanded = false;
  TextEditingController _textEditingController;
  ScrollController _scrollController;
  FocusNode _focusNode;
  String parentUserBeingRepliedTo = "";
  bool isCommentReplyOrStandAlone = false;
  String parentCommentUid = "";
  String uidOfTheCommentOwnerBeingRepliedTo = "";

  @override
  void initState() {
    super.initState();
    isPostSpoiler = widget.isPostSpoiler;
    _textEditingController = TextEditingController();
    _scrollController = ScrollController();
    _focusNode = FocusNode();
    context.read<UserPostBloc>().add(
          UserPostEvent.showPostCommentsPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  //update data when Navigator pop is called
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.showPostCommentsPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
  }

  //If at end of the Listview, search for more post comments
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next post comments page");
      context.read<UserPostBloc>().add(
            UserPostEvent.nextPageShowPostCommentsPressed(
              postOwnerUid: widget.postOwnerUid,
              postUid: widget.postUid,
            ),
          );
    }
    return false;
  }

  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// Post Owner Review-----------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  Widget _buildPostOwnerReview(UserPostState state) {
    return Column(
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(
                          MaterialPageRoute(
                            builder: (context) => OtherUserProfilePage(otherUserUid: widget.postOwnerUid),
                          ),
                        )
                        .then(
                          (value) => setState(
                            () {
                              sendEvent();
                            },
                          ),
                        );
                  },
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: BuildProfilePhotoAvatar(profilePhotoUrl: widget.postOwnerProfilePhoto, radius: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: widget.postOwnerUsername,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context)
                              .push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(otherUserUid: widget.postOwnerUid),
                                ),
                              )
                              .then(
                                (value) => setState(
                                  () {
                                    sendEvent();
                                  },
                                ),
                              );
                        },
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "  rated it ",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: " ⭐ ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: widget.postOwnerRating.toInt().toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: " / 10",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  !isPostSpoiler || state.isShowAllSpoilersInCommentsPressed
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isReviewExpanded = !isReviewExpanded;
                            });
                          },
                          child: ExpandableText(
                            widget.postOwnerReview,
                            expandText: "more",
                            collapseText: "...collapse",
                            maxLines: 3,
                            expanded: isReviewExpanded,
                            key: UniqueKey(),
                          ),
                        )
                      : OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.tealAccent[700],
                          ),
                          onPressed: () {
                            context.read<UserPostBloc>().add(
                                  UserPostEvent.showAllSpoilersInCommentsPressed(),
                                );
                          },
                          child: Text("This review contains spoilers, press to see"),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      convertPostCreationDate(widget.postCreationDate),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }

  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// Build comments page---------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: SafeArea(
        child: BlocBuilder<CurrentUserProfileInformationBloc, CurrentUserProfileInformationState>(
          builder: (context, userState) {
            return BlocConsumer<UserPostBloc, UserPostState>(
              listener: (context, state) {
                if (state.errorMessage.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMessage),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return userState.isSearching || state.isLoadingPostComments
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: [
                          Expanded(
                            child: NotificationListener<ScrollNotification>(
                              onNotification: _handleScrollNotification,
                              child: ListView.builder(
                                shrinkWrap: true,
                                controller: _scrollController,
                                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                                itemCount: _calculatePostCommentsItemCount(state),
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    return _buildPostOwnerReview(state);
                                  } else {
                                    return index >= state.postComments.length + 1
                                        ? BuildLoaderNextPage()
                                        : _buildPostCommentListCard(context, state, index);
                                  }
                                },
                              ),
                            ),
                          ),
                          Divider(),
                          if (isCommentReplyOrStandAlone)
                            Container(
                              color: Colors.grey[600],
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 25.0, top: 8.0, bottom: 8.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Replying to ",
                                          children: [
                                            TextSpan(
                                              text: parentUserBeingRepliedTo,
                                              style: TextStyle(fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isCommentReplyOrStandAlone = false;
                                          parentUserBeingRepliedTo = "";
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                                        child: Icon(
                                          Icons.clear,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          CheckboxListTile(
                            activeColor: Colors.tealAccent[700],
                            value: isCommentSpoiler,
                            title: Text("Contains spoilers"),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool value) {
                              setState(() {
                                isCommentSpoiler = value;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextField(
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 1000,
                              controller: _textEditingController,
                              focusNode: _focusNode,
                              autocorrect: false,
                              autofocus: widget.isKeyboardFocused,
                              decoration: InputDecoration(
                                counterText: "",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: BuildProfilePhotoAvatar(profilePhotoUrl: userState.ourUser.profilePhotoUrl, radius: 20),
                                ),
                                labelText: 'Comment',
                                suffixIcon: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.tealAccent[700],
                                  ),
                                  onPressed: () {
                                    if (_textEditingController.text.isNotEmpty) {
                                      if (isCommentReplyOrStandAlone) {
                                        context.read<UserPostBloc>().add(
                                              UserPostEvent.replyToCommentPressed(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                parentCommentUid: parentCommentUid,
                                                commentText: _textEditingController.text,
                                                isCommentSpoiler: isCommentSpoiler,
                                                uidOfTheCommentOwnerBeingRepliedTo: uidOfTheCommentOwnerBeingRepliedTo,
                                                postPhotoUrl: widget.postPhotoUrl,
                                              ),
                                            );
                                      } else {
                                        context.read<UserPostBloc>().add(
                                              UserPostEvent.commentPostPressed(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                commentText: _textEditingController.text,
                                                isCommentSpoiler: isCommentSpoiler,
                                                postPhotoUrl: widget.postPhotoUrl,
                                              ),
                                            );
                                      }
                                    }
                                    setState(() {
                                      _textEditingController.clear();
                                      if (isCommentReplyOrStandAlone) {
                                        isCommentReplyOrStandAlone = false;
                                        parentUserBeingRepliedTo = "";
                                      }
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Text("Post"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
              },
            );
          },
        ),
      ),
    );
  }

  //Increased the post Items count by 2 and 1, because the Review from the PostOwner is also inside the ListView
  int _calculatePostCommentsItemCount(UserPostState state) {
    if (state.isThereMorePostCommentsPageToLoad) {
      return state.postComments.length + 2;
    } else {
      return state.postComments.length + 1;
    }
  }

  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// Post Comments---------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  Widget _buildPostCommentListCard(BuildContext context, UserPostState state, int index) {
    var user = state.postCommentsUserProfiles[index - 1];
    var comment = state.postComments[index - 1];
    bool isCommentLiked = state.postCommentsLikedByCurrentUser[comment.commentUid];
    String currentUserUid = BlocProvider.of<CurrentUserProfileInformationBloc>(context, listen: false).state.ourUser.uid;
    // ignore: close_sinks
    final bloc = BlocProvider.of<UserPostBloc>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onLongPress: () {
              if (currentUserUid == widget.postOwnerUid || currentUserUid == user.uid) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return _buildDeleteCommentDialog(
                      bloc: bloc,
                      commentUid: comment.commentUid,
                      commentOwnerUid: user.uid,
                    );
                  },
                );
              }
            },
            onDoubleTap: () {
              if (!isCommentLiked)
                context.read<UserPostBloc>().add(
                      UserPostEvent.likePostCommentPressed(
                        postOwnerUid: widget.postOwnerUid,
                        postUid: widget.postUid,
                        commentUid: comment.commentUid,
                        commentText: comment.commentText,
                        postPhotoUrl: widget.postPhotoUrl,
                        commentOwnerUid: user.uid,
                      ),
                    );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0, right: 1),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(
                              MaterialPageRoute(
                                builder: (context) => OtherUserProfilePage(otherUserUid: user.uid),
                              ),
                            )
                            .then(
                              (value) => setState(
                                () {
                                  sendEvent();
                                },
                              ),
                            );
                      },
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl, radius: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => OtherUserProfilePage(otherUserUid: user.uid),
                                          ),
                                        )
                                        .then(
                                          (value) => setState(
                                            () {
                                              sendEvent();
                                            },
                                          ),
                                        );
                                  },
                                  child: Text(
                                    user.username,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              !comment.isCommentSpoiler || state.isShowAllSpoilersInCommentsPressed
                                  ? Expanded(
                                      flex: 2,
                                      child: _BuildCommentText(comment.commentText),
                                    )
                                  : Expanded(
                                      flex: 2,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.tealAccent[700],
                                        ),
                                        onPressed: () {
                                          context.read<UserPostBloc>().add(
                                                UserPostEvent.showAllSpoilersInCommentsPressed(),
                                              );
                                        },
                                        child: Text("Press to see spoiler"),
                                      ),
                                    ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    convertCommentCreationDate(comment.timestamp),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                if (comment.numberOfLikes == 0) Text("  "),
                                if (comment.numberOfLikes == 1)
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => CommentLikersPage(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                commentUid: comment.commentUid,
                                              ),
                                            ),
                                          )
                                          .then(
                                            (value) => setState(
                                              () {
                                                sendEvent();
                                              },
                                            ),
                                          );
                                    },
                                    child: Text(
                                      "1 like",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                if (comment.numberOfLikes > 1)
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => CommentLikersPage(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                commentUid: comment.commentUid,
                                              ),
                                            ),
                                          )
                                          .then(
                                            (value) => setState(
                                              () {
                                                sendEvent();
                                              },
                                            ),
                                          );
                                    },
                                    child: Text(
                                      comment.numberOfLikes.toString() + " likes",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: InkWell(
                                    onTap: () {
                                      _focusNode.requestFocus();
                                      setState(() {
                                        isCommentReplyOrStandAlone = true;
                                        parentUserBeingRepliedTo = user.username;
                                        parentCommentUid = comment.commentUid;
                                        uidOfTheCommentOwnerBeingRepliedTo = user.uid;
                                      });
                                      //Have to call here show comment Replies when first replying, since otherwise if user presses reply
                                      //and sends something, he will not be able to load older replies without reloading the page
                                      if (state.commentReplies[comment.commentUid] == null ||
                                          state.commentReplies[comment.commentUid].length < 5) {
                                        context.read<UserPostBloc>().add(
                                              UserPostEvent.showCommentRepliesPressed(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                parentCommentUid: comment.commentUid,
                                              ),
                                            );
                                      }
                                    },
                                    child: Text(
                                      "Reply",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: InkWell(
                      onTap: () {
                        isCommentLiked
                            ? context.read<UserPostBloc>().add(
                                  UserPostEvent.unlikePostCommentPressed(
                                    postOwnerUid: widget.postOwnerUid,
                                    postUid: widget.postUid,
                                    commentUid: comment.commentUid,
                                    commentOwnerUid: user.uid,
                                  ),
                                )
                            : context.read<UserPostBloc>().add(
                                  UserPostEvent.likePostCommentPressed(
                                    postOwnerUid: widget.postOwnerUid,
                                    postUid: widget.postUid,
                                    commentUid: comment.commentUid,
                                    commentText: comment.commentText,
                                    commentOwnerUid: user.uid,
                                    postPhotoUrl: widget.postPhotoUrl,
                                  ),
                                );
                      },
                      child: isCommentLiked
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 16,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: 16,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _BuildReplyCommentButton(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
            index: index - 1,
            bloc: bloc,
          ),
          if (state.isCommentRepliesShown[comment.commentUid] != null && state.isCommentRepliesShown[comment.commentUid])
            _buildCommentRepliesList(
              context: context,
              state: state,
              parentCommentUid: comment.commentUid,
              parentCommentOwnerUid: user.uid,
            ),
        ],
      ),
    );
  }

  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// Comment Replies-------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  Widget _buildCommentRepliesList({
    @required BuildContext context,
    @required UserPostState state,
    @required String parentCommentUid,
    @required String parentCommentOwnerUid,
  }) {
    //Had to check each for null, since they are initialized as empty maps
    if (state.isLoadingCommentReplies[parentCommentUid] != null &&
        !state.isLoadingCommentReplies[parentCommentUid] &&
        state.commentReplies[parentCommentUid] != null &&
        state.isCommentRepliesShown[parentCommentUid] != null &&
        state.isCommentRepliesShown[parentCommentUid]) {
      var replies = state.commentReplies[parentCommentUid];
      var profiles = state.commentRepliesUserProfiles[parentCommentUid];
      //var user = state.postCommentsUserProfiles[index - 1];
      //var parentComment = state.postComments[index - 1];

      // ignore: close_sinks
      final bloc = BlocProvider.of<UserPostBloc>(context, listen: false);
      String currentUserUid = BlocProvider.of<CurrentUserProfileInformationBloc>(context, listen: false).state.ourUser.uid;

      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: replies.length,
        itemBuilder: (context, index) {
          var comment = replies[index];
          var user = profiles[index];
          bool isReplyLiked = state.commentRepliesLikedByCurrentUser[comment.commentUid] ?? false;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onLongPress: () {
                if (currentUserUid == widget.postOwnerUid || currentUserUid == user.uid) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return _buildDeleteCommentDialog(
                        bloc: bloc,
                        commentUid: comment.commentUid,
                        parentCommentUid: parentCommentUid,
                        isCommentAReplyToAnotherComment: true,
                        commentOwnerUid: user.uid,
                        parentCommentOwnerUid: parentCommentOwnerUid,
                      );
                    },
                  );
                }
              },
              onDoubleTap: () {
                if (!isReplyLiked)
                  context.read<UserPostBloc>().add(
                        UserPostEvent.likeReplyToCommentPressed(
                          postOwnerUid: widget.postOwnerUid,
                          postUid: widget.postUid,
                          parentCommentUid: parentCommentUid,
                          commentUid: comment.commentUid,
                          commentOwnerUid: user.uid,
                          postPhotoUrl: widget.postPhotoUrl,
                          commentText: comment.commentText,
                        ),
                      );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0, right: 1.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(otherUserUid: user.uid),
                                ),
                              )
                              .then(
                                (value) => setState(
                                  () {
                                    sendEvent();
                                  },
                                ),
                              );
                        },
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl, radius: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => OtherUserProfilePage(otherUserUid: user.uid),
                                            ),
                                          )
                                          .then(
                                            (value) => setState(
                                              () {
                                                sendEvent();
                                              },
                                            ),
                                          );
                                    },
                                    child: Text(
                                      user.username,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                !comment.isCommentSpoiler || state.isShowAllSpoilersInCommentsPressed
                                    ? Expanded(
                                        flex: 2,
                                        child: _BuildCommentText(comment.commentText),
                                      )
                                    : Expanded(
                                        flex: 2,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            primary: Colors.tealAccent[700],
                                          ),
                                          onPressed: () {
                                            context.read<UserPostBloc>().add(
                                                  UserPostEvent.showAllSpoilersInCommentsPressed(),
                                                );
                                          },
                                          child: Text("Press to see spoiler"),
                                        ),
                                      ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      convertCommentCreationDate(comment.timestamp),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  if (comment.numberOfLikes == 0) Text("  "),
                                  if (comment.numberOfLikes == 1)
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(
                                              MaterialPageRoute(
                                                builder: (context) => CommentRepliesLikersPage(
                                                  postOwnerUid: widget.postOwnerUid,
                                                  postUid: widget.postUid,
                                                  parentCommentUid: parentCommentUid,
                                                  commentUid: comment.commentUid,
                                                ),
                                              ),
                                            )
                                            .then(
                                              (value) => setState(
                                                () {
                                                  sendEvent();
                                                },
                                              ),
                                            );
                                      },
                                      child: Text(
                                        "1 like",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  if (comment.numberOfLikes > 1)
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(
                                              MaterialPageRoute(
                                                builder: (context) => CommentRepliesLikersPage(
                                                  postOwnerUid: widget.postOwnerUid,
                                                  postUid: widget.postUid,
                                                  commentUid: comment.commentUid,
                                                  parentCommentUid: parentCommentUid,
                                                ),
                                              ),
                                            )
                                            .then(
                                              (value) => setState(
                                                () {
                                                  sendEvent();
                                                },
                                              ),
                                            );
                                      },
                                      child: Text(
                                        comment.numberOfLikes.toString() + " likes",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: InkWell(
                                      onTap: () {
                                        _focusNode.requestFocus();
                                        setState(() {
                                          //Set replied comment uid also so that the notification can be sent both to the parent and user being replied to
                                          isCommentReplyOrStandAlone = true;
                                          parentUserBeingRepliedTo = user.username;
                                          this.parentCommentUid = parentCommentUid;
                                          uidOfTheCommentOwnerBeingRepliedTo = user.uid;
                                        });
                                      },
                                      child: Text(
                                        "Reply",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: InkWell(
                        onTap: () {
                          isReplyLiked
                              ? context.read<UserPostBloc>().add(
                                    UserPostEvent.unlikeReplyToCommentPressed(
                                      postOwnerUid: widget.postOwnerUid,
                                      postUid: widget.postUid,
                                      parentCommentUid: parentCommentUid,
                                      commentUid: comment.commentUid,
                                      commentOwnerUid: user.uid,
                                    ),
                                  )
                              : context.read<UserPostBloc>().add(
                                    UserPostEvent.likeReplyToCommentPressed(
                                      postOwnerUid: widget.postOwnerUid,
                                      postUid: widget.postUid,
                                      parentCommentUid: parentCommentUid,
                                      commentUid: comment.commentUid,
                                      commentText: comment.commentText,
                                      postPhotoUrl: widget.postPhotoUrl,
                                      commentOwnerUid: user.uid,
                                    ),
                                  );
                        },
                        child: isReplyLiked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 16,
                              )
                            : Icon(
                                Icons.favorite_border,
                                size: 16,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      ///
      /// --------------------
      /// SHOW LOADING while waiting fo replies
      /// --------------------
      ///
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// Alert Dialogs---------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  /// ----------------------------------------------------------------------------------------------------
  Widget _buildDeleteCommentDialog({
    @required UserPostBloc bloc,
    @required String commentUid,
    @required String commentOwnerUid,
    String parentCommentOwnerUid = "",
    String parentCommentUid = "",
    bool isCommentAReplyToAnotherComment = false,
  }) {
    return AlertDialog(
      title: Text("Do you want to delete this comment?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _buildConfirmDeleteCommentDialog(
                  bloc: bloc,
                  commentUid: commentUid,
                  parentCommentUid: parentCommentUid,
                  isCommentAReplyToAnotherComment: isCommentAReplyToAnotherComment,
                  parentCommentOwnerUid: parentCommentOwnerUid,
                  commentOwnerUid: commentOwnerUid,
                );
              },
            );
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }

  Widget _buildConfirmDeleteCommentDialog({
    @required UserPostBloc bloc,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String parentCommentUid,
    @required String parentCommentOwnerUid,
    @required bool isCommentAReplyToAnotherComment,
  }) {
    return AlertDialog(
      title: Text("Are you sure you want to delete this comment?\nThis action cannot be undone."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            bloc.add(
              isCommentAReplyToAnotherComment
                  ? UserPostEvent.deleteReplyToCommentPressed(
                      postOwnerUid: widget.postOwnerUid,
                      postUid: widget.postUid,
                      commentUid: commentUid,
                      parentCommentUid: parentCommentUid,
                      parentCommentOwnerUid: parentCommentOwnerUid,
                      commentOwnerUid: commentOwnerUid,
                    )
                  : UserPostEvent.deleteCommentPostPressed(
                      postOwnerUid: widget.postOwnerUid,
                      postUid: widget.postUid,
                      commentUid: commentUid,
                      commentOwnerUid: commentOwnerUid,
                    ),
            );
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}

class _BuildCommentText extends StatefulWidget {
  final String commentText;

  _BuildCommentText(this.commentText);

  @override
  __BuildCommentTextState createState() => __BuildCommentTextState();
}

class __BuildCommentTextState extends State<_BuildCommentText> {
  bool isCommentExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCommentExpanded = !isCommentExpanded;
        });
      },
      child: ExpandableText(
        widget.commentText,
        expandText: "more",
        collapseText: "...collapse",
        maxLines: 3,
        expanded: isCommentExpanded,
        key: UniqueKey(),
      ),
    );
  }
}

/// ----------------------------------------------------------------------------------------------------
/// ----------------------------------------------------------------------------------------------------
/// Reply button----------------------------------------------------------------------------------------
/// ----------------------------------------------------------------------------------------------------
/// ----------------------------------------------------------------------------------------------------
class _BuildReplyCommentButton extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;
  final int index;
  final UserPostBloc bloc;

  _BuildReplyCommentButton({
    @required this.postOwnerUid,
    @required this.postUid,
    @required this.index,
    @required this.bloc,
  });

  @override
  __BuildReplyCommentButtonState createState() => __BuildReplyCommentButtonState();
}

class __BuildReplyCommentButtonState extends State<_BuildReplyCommentButton> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<UserPostBloc, UserPostState>(
        builder: (context, state) {
          var comment = state.postComments[widget.index];
          num currentReplies =
              state.commentReplies[comment.commentUid] == null ? 0 : state.commentReplies[comment.commentUid].length;
          num numberOfRepliesLeft = comment.numberOfReplies - currentReplies;
          //If the replies are getting loaded, then show nothing
          if (state.isLoadingCommentReplies[comment.commentUid] != null && state.isLoadingCommentReplies[comment.commentUid])
            return Offstage();
          //If there is less than 1 reply, then show nothing
          if (comment.numberOfReplies < 1 && comment.numberOfReplies >= currentReplies) return Offstage();
          //If there is more than 0 replies and there is no more to load, show "Show Less"
          if (state.isThereMoreCommentRepliesPageToLoad[comment.commentUid] != null &&
              !state.isThereMoreCommentRepliesPageToLoad[comment.commentUid] &&
              state.isCommentRepliesShown[comment.commentUid] != null &&
              state.isCommentRepliesShown[comment.commentUid]) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Expanded(
                  flex: 5,
                  child: InkWell(
                    onTap: () {
                      context.read<UserPostBloc>().add(
                            UserPostEvent.hideCommentRepliesPressed(
                              parentCommentUid: comment.commentUid,
                            ),
                          );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        "– Hide Replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          //If all replies are shown, and Show Less is pressed, so show "View $allNumberOfReplies"
          if (state.isThereMoreCommentRepliesPageToLoad[comment.commentUid] != null &&
              !state.isThereMoreCommentRepliesPageToLoad[comment.commentUid] &&
              state.isCommentRepliesShown[comment.commentUid] != null &&
              !state.isCommentRepliesShown[comment.commentUid]) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Expanded(
                  flex: 5,
                  child: InkWell(
                    onTap: () {
                      context.read<UserPostBloc>().add(
                            UserPostEvent.unHideCommentRepliesPressed(
                              parentCommentUid: comment.commentUid,
                            ),
                          );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        "– View $currentReplies Replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          //If there is more than 0 replies and there is more to load, show "View ${number of replies - replies.length} replies"
          if (state.isThereMoreCommentRepliesPageToLoad[comment.commentUid] == null ||
              state.isThereMoreCommentRepliesPageToLoad[comment.commentUid]) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Expanded(
                  flex: 5,
                  child: InkWell(
                    onTap: () {
                      //If commentReplies are not initialized, fewer than 5, or lastInList not initialized, then call showCommentReplies, else call nextPage
                      if (state.commentReplies[comment.commentUid] == null ||
                          state.commentReplies[comment.commentUid].length < 5 ||
                          state.commentRepliesLastInListTimestamp[comment.commentUid] == null) {
                        context.read<UserPostBloc>().add(
                              UserPostEvent.showCommentRepliesPressed(
                                postOwnerUid: widget.postOwnerUid,
                                postUid: widget.postUid,
                                parentCommentUid: comment.commentUid,
                              ),
                            );
                      } else {
                        context.read<UserPostBloc>().add(
                              UserPostEvent.nextPageShowCommentRepliesPressed(
                                postOwnerUid: widget.postOwnerUid,
                                postUid: widget.postUid,
                                parentCommentUid: comment.commentUid,
                              ),
                            );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        "– View $numberOfRepliesLeft Replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          //Had to add widget here in case not one condition is fulfilled?
          return Offstage();
        },
      ),
    );
  }
}
