import 'package:explovid/application/user_interactions/follow/follow_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentUserFollowersPage extends StatefulWidget {
  final String profileOwnerUid;

  CurrentUserFollowersPage({@required this.profileOwnerUid});

  @override
  _CurrentUserFollowersPageState createState() => _CurrentUserFollowersPageState();
}

class _CurrentUserFollowersPageState extends State<CurrentUserFollowersPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
    final bloc = BlocProvider.of<FollowBloc>(context, listen: false);
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl),
      ),
      trailing: _buildRemoveFollowerButton(bloc, state, index),
      title: Text(user.username),
      subtitle: Text(user.fullName),
      onTap: () {
        Navigator.of(context, rootNavigator: false).push(
          MaterialPageRoute(
            builder: (context) => OtherUserProfilePage(
              otherUserUid: user.uid,
            ),
          ),
        );
      },
    );
  }

  Widget _buildRemoveFollowerButton(FollowBloc bloc, FollowState state, int index) {
    return state.removedFollowerUid == state.followers[index].uid
        ? Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircularProgressIndicator(),
          )
        : ElevatedButton(
            style: kWatchedButton,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _buildConfirmActionDialog(
                    bloc: bloc,
                    otherUserUid: state.followers[index].uid,
                  );
                },
              );
            },
            child: Text("Remove"),
          );
  }

  Widget _buildConfirmActionDialog({FollowBloc bloc, String otherUserUid}) {
    return AlertDialog(
      title: Text("Are you sure you want to remove this user as a follower?"),
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
            bloc.add(
              FollowEvent.removeUserFollowerPressed(otherUserUid: otherUserUid),
            );
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
