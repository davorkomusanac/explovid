import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostLikersPage extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;

  PostLikersPage({
    @required this.postOwnerUid,
    @required this.postUid,
  });

  @override
  _PostLikersPageState createState() => _PostLikersPageState();
}

class _PostLikersPageState extends State<PostLikersPage> {
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
          UserPostEvent.showPostLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.showPostLikersPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more post Likers
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next post likers page");
      context.read<UserPostBloc>().add(
            UserPostEvent.nextPageShowPostLikersPressed(
              postOwnerUid: widget.postOwnerUid,
              postUid: widget.postUid,
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
          return state.isLoadingPostLikers
              ? Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _calculatePostLikersListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.postLikers.length
                          ? BuildLoaderNextPage()
                          : _buildPostLikersListCard(context, state, index);
                    },
                  ),
                );
        },
      ),
    );
  }

  int _calculatePostLikersListItemCount(UserPostState state) {
    if (state.isThereMorePostLikersPageToLoad) {
      return state.postLikers.length + 1;
    } else {
      return state.postLikers.length;
    }
  }

  Widget _buildPostLikersListCard(BuildContext context, UserPostState state, int index) {
    var user = state.postLikers[index];
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
