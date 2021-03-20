import 'package:explovid/application/user_interactions/follow/follow_bloc.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentUserFollowingPage extends StatefulWidget {
  final String profileOwnerUid;

  CurrentUserFollowingPage({@required this.profileOwnerUid});

  @override
  _CurrentUserFollowingPageState createState() => _CurrentUserFollowingPageState();
}

class _CurrentUserFollowingPageState extends State<CurrentUserFollowingPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
    final bloc = BlocProvider.of<FollowBloc>(context, listen: false);
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: BuildProfilePhotoAvatar(profilePhotoUrl: user.profilePhotoUrl),
      ),
      trailing: _buildRemoveFollowingButton(bloc, state, index),
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

  Widget _buildRemoveFollowingButton(FollowBloc bloc, FollowState state, int index) {
    return state.removedFollowingUid == state.following[index].uid
        ? Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircularProgressIndicator(),
          )
        : ElevatedButton(
            style: kNotWatchedButton,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _buildConfirmActionDialog(
                    bloc: bloc,
                    otherUserUid: state.following[index].uid,
                  );
                },
              );
            },
            child: Text("Unfollow"),
          );
  }

  Widget _buildConfirmActionDialog({FollowBloc bloc, String otherUserUid}) {
    return AlertDialog(
      title: Text("Are you sure you want to unfollow this user?"),
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
              FollowEvent.removeUserFollowingPressed(otherUserUid: otherUserUid),
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
