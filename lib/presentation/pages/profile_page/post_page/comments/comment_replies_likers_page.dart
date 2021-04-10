import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentRepliesLikersPage extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;
  final String commentUid;
  final String parentCommentUid;

  CommentRepliesLikersPage({
    @required this.postOwnerUid,
    @required this.postUid,
    @required this.commentUid,
    @required this.parentCommentUid,
  });
  @override
  _CommentRepliesLikersState createState() => _CommentRepliesLikersState();
}

class _CommentRepliesLikersState extends State<CommentRepliesLikersPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<UserPostBloc>().add(
          UserPostEvent.showReplyLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
            commentUid: widget.commentUid,
            parentCommentUid: widget.parentCommentUid,
          ),
        );
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.showReplyLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
            commentUid: widget.commentUid,
            parentCommentUid: widget.parentCommentUid,
          ),
        );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more comment Likers
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next reply likers page");
      UserPostEvent.nextPageShowReplyLikersPressed(
        postOwnerUid: widget.postOwnerUid,
        postUid: widget.postUid,
        commentUid: widget.commentUid,
        parentCommentUid: widget.parentCommentUid,
      );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Likes"),
      ),
      body: BlocBuilder<UserPostBloc, UserPostState>(
        builder: (context, state) {
          return state.isLoadingReplyLikers
              ? Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _calculateReplyLikersListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.replyLikers.length
                          ? BuildLoaderNextPage()
                          : _buildReplyLikersListCard(context, state, index);
                    },
                  ),
                );
        },
      ),
    );
  }

  int _calculateReplyLikersListItemCount(UserPostState state) {
    if (state.isThereMoreReplyLikersPageToLoad) {
      return state.replyLikers.length + 1;
    } else {
      return state.replyLikers.length;
    }
  }

  Widget _buildReplyLikersListCard(BuildContext context, UserPostState state, int index) {
    var user = state.replyLikers[index];
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl),
      ),
      title: Text(user.username),
      subtitle: Text(user.fullName),
      onTap: () {
        Navigator.of(context, rootNavigator: false)
            .push(
              MaterialPageRoute(
                builder: (context) => OtherUserProfilePage(
                  otherUserUid: user.uid,
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
    );
  }
}
