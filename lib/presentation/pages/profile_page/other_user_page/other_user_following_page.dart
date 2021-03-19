import 'package:explovid/application/user_interactions/follow/follow_bloc.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'other_user_profile_page.dart';

class OtherUserFollowingPage extends StatefulWidget {
  final String profileOwnerUid;

  OtherUserFollowingPage({@required this.profileOwnerUid});

  @override
  _OtherUserFollowingPageState createState() => _OtherUserFollowingPageState();
}

class _OtherUserFollowingPageState extends State<OtherUserFollowingPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  //Calling the event this way so that the bloc updates correctly when moving between several instances
  @override
  void didChangeDependencies() {
    context.read<FollowBloc>().add(
          FollowEvent.showFollowingPressed(profileOwnerUid: widget.profileOwnerUid),
        );
    super.didChangeDependencies();
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<FollowBloc>().add(
          FollowEvent.showFollowingPressed(profileOwnerUid: widget.profileOwnerUid),
        );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more Following
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next following list page");
      context.read<FollowBloc>().add(
            FollowEvent.nextPageShowFollowingPressed(profileOwnerUid: widget.profileOwnerUid),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Following"),
      ),
      body: BlocBuilder<FollowBloc, FollowState>(
        builder: (context, state) {
          return state.isLoadingFollowList
              ? Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _calculateFollowingListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.following.length
                          ? BuildLoaderNextPage()
                          : _buildFollowingListCard(context, state, index);
                    },
                  ),
                );
        },
      ),
    );
  }

  int _calculateFollowingListItemCount(FollowState state) {
    if (state.isThereMoreFollowingPageToLoad) {
      return state.following.length + 1;
    } else {
      return state.following.length;
    }
  }

  Widget _buildFollowingListCard(BuildContext context, FollowState state, int index) {
    var user = state.following[index];
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
