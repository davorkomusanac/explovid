import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentLikersPage extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;
  final String commentUid;

  CommentLikersPage({
    @required this.postOwnerUid,
    @required this.postUid,
    @required this.commentUid,
  });
  @override
  _CommentLikersPageState createState() => _CommentLikersPageState();
}

class _CommentLikersPageState extends State<CommentLikersPage> {
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
          UserPostEvent.showCommentLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
            commentUid: widget.commentUid,
          ),
        );
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.showCommentLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
            commentUid: widget.commentUid,
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
      print("Calling fetch next comment likers page");
      context.read<UserPostBloc>().add(
            UserPostEvent.nextPageShowCommentLikersPressed(
              postOwnerUid: widget.postOwnerUid,
              postUid: widget.postUid,
              commentUid: widget.commentUid,
            ),
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
          return state.isLoadingCommentLikers
              ? Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _calculateCommentLikersListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.commentLikers.length
                          ? BuildLoaderNextPage()
                          : _buildCommentLikersListCard(context, state, index);
                    },
                  ),
                );
        },
      ),
    );
  }

  int _calculateCommentLikersListItemCount(UserPostState state) {
    if (state.isThereMoreCommentLikersPageToLoad) {
      return state.commentLikers.length + 1;
    } else {
      return state.commentLikers.length;
    }
  }

  Widget _buildCommentLikersListCard(BuildContext context, UserPostState state, int index) {
    var user = state.commentLikers[index];
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
