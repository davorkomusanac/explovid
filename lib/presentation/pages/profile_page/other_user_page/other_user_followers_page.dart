import 'package:explovid/application/user_interactions/follow/follow_bloc.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'other_user_profile_page.dart';

class OtherUserFollowersPage extends StatefulWidget {
  final String profileOwnerUid;

  OtherUserFollowersPage({@required this.profileOwnerUid});

  @override
  _OtherUserFollowersPageState createState() => _OtherUserFollowersPageState();
}

class _OtherUserFollowersPageState extends State<OtherUserFollowersPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void didChangeDependencies() {
    context.read<FollowBloc>().add(
          FollowEvent.showFollowersPressed(profileOwnerUid: widget.profileOwnerUid),
        );
    super.didChangeDependencies();
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<FollowBloc>().add(
          FollowEvent.showFollowersPressed(profileOwnerUid: widget.profileOwnerUid),
        );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more Followers
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next followers list page");
      context.read<FollowBloc>().add(
            FollowEvent.nextPageShowFollowersPressed(profileOwnerUid: widget.profileOwnerUid),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Followers"),
      ),
      body: BlocBuilder<FollowBloc, FollowState>(
        builder: (context, state) {
          return state.isLoadingFollowList
              ? Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _calculateFollowersListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.followers.length
                          ? BuildLoaderNextPage()
                          : _buildFollowerListCard(context, state, index);
                    },
                  ),
                );
        },
      ),
    );
  }

  int _calculateFollowersListItemCount(FollowState state) {
    if (state.isThereMoreFollowersPageToLoad) {
      return state.followers.length + 1;
    } else {
      return state.followers.length;
    }
  }

  Widget _buildFollowerListCard(BuildContext context, FollowState state, int index) {
    var user = state.followers[index];
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl),
      ),
      title: Text(user.username),
      subtitle: Text(user.fullName),
      onTap: () {
        //Calling then and setState when Navigator is popped to update the page
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
