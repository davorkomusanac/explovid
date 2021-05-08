import 'package:explovid/application/user_interactions/notifications/notifications_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_information_bloc.dart';
import 'package:explovid/data/models/our_notification/our_notification.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  ScrollController _scrollController;
  OtherUserProfileRepository _otherUserProfileRepository;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _otherUserProfileRepository = OtherUserProfileRepository();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //TODO on every new notification added change isWatched = false, and when user opens notifications page, then change it to true, and remove mark on icon

  //If at end of the Listview, search for more notifications
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next notifications page");
      context.read<NotificationsBloc>().add(
            NotificationsEvent.nextNotificationsPageCalled(),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
      ),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
          return state.isLoading
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: state.notifications.isEmpty
                      ? Center(
                          child: Text("Your notifications will show up here"),
                        )
                      : ListView.builder(
                          cacheExtent: 5 * MediaQuery.of(context).size.height,
                          controller: _scrollController,
                          itemCount: _calculateNotificationsListLength(state),
                          itemBuilder: (context, index) {
                            return index >= state.notifications.length
                                ? BuildLoaderNextPage()
                                : BlocProvider(
                                    create: (context) => OtherUserProfileInformationBloc(
                                      _otherUserProfileRepository,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: _BuildNotificationItem(notification: state.notifications[index]),
                                    ),
                                  );
                          },
                        ),
                );
        },
      ),
    );
  }

  int _calculateNotificationsListLength(NotificationsState state) {
    if (state.isThereMoreNotificationsToLoad) {
      return state.notifications.length + 1;
    } else {
      return state.notifications.length;
    }
  }
}

class _BuildNotificationItem extends StatefulWidget {
  final OurNotification notification;

  _BuildNotificationItem({
    @required this.notification,
  });

  @override
  __BuildNotificationItemState createState() => __BuildNotificationItemState();
}

class __BuildNotificationItemState extends State<_BuildNotificationItem> {
  @override
  void initState() {
    super.initState();
    context.read<OtherUserProfileInformationBloc>().add(
          OtherUserProfileInformationEvent.otherUserProfileLoaded(
            otherUserUid: widget.notification.senderUid,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.notification.typeOfNotification == kLikePost) {
      return _buildLikePostNotification();
    } else if (widget.notification.typeOfNotification == kLikeComment) {
      return _buildLikeCommentNotification();
    } else if (widget.notification.typeOfNotification == kCommentPost) {
      return _buildCommentPostNotification();
    } else if (widget.notification.typeOfNotification == kRepliedComment) {
      return _buildRepliedCommentNotification();
    } else if (widget.notification.typeOfNotification == kFollow) {
      return _buildFollowNotification();
    } else if (widget.notification.typeOfNotification == kLikeRepliedComment) {
      return _buildLikeCommentNotification();
    } else {
      return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text("Error loading, try again"),
      );
    }
  }

  Widget _buildLikePostNotification() {
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
      builder: (context, state) {
        if (state.isSearching) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return state.ourUser.uid.isEmpty
              ? SizedBox(width: 0, height: 0)
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                      MaterialPageRoute(
                        builder: (context) => PostPage(
                          postOwnerUid: widget.notification.postOwnerUid,
                          postUid: widget.notification.postUid,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(
                                    otherUserUid: widget.notification.senderUid,
                                  ),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: BuildProfilePhotoAvatar(
                                profilePhotoUrl: state.ourUser.profilePhotoUrl,
                                radius: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: RichText(
                          maxLines: 4,
                          text: TextSpan(
                            text: state.ourUser.username,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => OtherUserProfilePage(
                                      otherUserUid: widget.notification.senderUid,
                                    ),
                                  ),
                                );
                              },
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: " liked your review.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + convertCommentCreationDate(widget.notification.notificationCreationDate),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                  builder: (context) => PostPage(
                                    postOwnerUid: widget.notification.postOwnerUid,
                                    postUid: widget.notification.postUid,
                                  ),
                                ),
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: BuildPosterImage(
                                height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                                width: MediaQuery.of(context).size.width * 0.7,
                                imagePath: widget.notification.postPhotoUrl,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        }
      },
    );
  }

  Widget _buildLikeCommentNotification() {
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
      builder: (context, state) {
        if (state.isSearching) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return state.ourUser.uid.isEmpty
              ? SizedBox(width: 0, height: 0)
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                      MaterialPageRoute(
                        builder: (context) => PostPage(
                          postOwnerUid: widget.notification.postOwnerUid,
                          postUid: widget.notification.postUid,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(
                                    otherUserUid: widget.notification.senderUid,
                                  ),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: BuildProfilePhotoAvatar(
                                profilePhotoUrl: state.ourUser.profilePhotoUrl,
                                radius: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: RichText(
                          maxLines: 4,
                          text: TextSpan(
                            text: state.ourUser.username,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => OtherUserProfilePage(
                                      otherUserUid: widget.notification.senderUid,
                                    ),
                                  ),
                                );
                              },
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: " liked your comment:",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + widget.notification.notificationText,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + convertCommentCreationDate(widget.notification.notificationCreationDate),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                  builder: (context) => PostPage(
                                    postOwnerUid: widget.notification.postOwnerUid,
                                    postUid: widget.notification.postUid,
                                  ),
                                ),
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: BuildPosterImage(
                                height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                                width: MediaQuery.of(context).size.width * 0.7,
                                imagePath: widget.notification.postPhotoUrl,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        }
      },
    );
  }

  Widget _buildCommentPostNotification() {
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
      builder: (context, state) {
        if (state.isSearching) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return state.ourUser.uid.isEmpty
              ? SizedBox(width: 0, height: 0)
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                      MaterialPageRoute(
                        builder: (context) => PostPage(
                          postOwnerUid: widget.notification.postOwnerUid,
                          postUid: widget.notification.postUid,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(
                                    otherUserUid: widget.notification.senderUid,
                                  ),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: BuildProfilePhotoAvatar(
                                profilePhotoUrl: state.ourUser.profilePhotoUrl,
                                radius: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: RichText(
                          maxLines: 4,
                          text: TextSpan(
                            text: state.ourUser.username,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => OtherUserProfilePage(
                                      otherUserUid: widget.notification.senderUid,
                                    ),
                                  ),
                                );
                              },
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: " commented your review:",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + widget.notification.notificationText,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + convertCommentCreationDate(widget.notification.notificationCreationDate),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                  builder: (context) => PostPage(
                                    postOwnerUid: widget.notification.postOwnerUid,
                                    postUid: widget.notification.postUid,
                                  ),
                                ),
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: BuildPosterImage(
                                height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                                width: MediaQuery.of(context).size.width * 0.7,
                                imagePath: widget.notification.postPhotoUrl,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        }
      },
    );
  }

  Widget _buildRepliedCommentNotification() {
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
      builder: (context, state) {
        if (state.isSearching) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return state.ourUser.uid.isEmpty
              ? SizedBox(width: 0, height: 0)
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                      MaterialPageRoute(
                        builder: (context) => PostPage(
                          postOwnerUid: widget.notification.postOwnerUid,
                          postUid: widget.notification.postUid,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(
                                    otherUserUid: widget.notification.senderUid,
                                  ),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: BuildProfilePhotoAvatar(
                                profilePhotoUrl: state.ourUser.profilePhotoUrl,
                                radius: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: RichText(
                          maxLines: 5,
                          text: TextSpan(
                            text: state.ourUser.username,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => OtherUserProfilePage(
                                      otherUserUid: widget.notification.senderUid,
                                    ),
                                  ),
                                );
                              },
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: " replied to your comment:",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + widget.notification.notificationText,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + convertCommentCreationDate(widget.notification.notificationCreationDate),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                  builder: (context) => PostPage(
                                    postOwnerUid: widget.notification.postOwnerUid,
                                    postUid: widget.notification.postUid,
                                  ),
                                ),
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: BuildPosterImage(
                                height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                                width: MediaQuery.of(context).size.width * 0.7,
                                imagePath: widget.notification.postPhotoUrl,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        }
      },
    );
  }

  Widget _buildFollowNotification() {
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
      builder: (context, state) {
        if (state.isSearching) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return state.ourUser.uid.isEmpty
              ? SizedBox(width: 0, height: 0)
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                      MaterialPageRoute(
                        builder: (context) => OtherUserProfilePage(
                          otherUserUid: widget.notification.senderUid,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtherUserProfilePage(
                                    otherUserUid: widget.notification.senderUid,
                                  ),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: BuildProfilePhotoAvatar(
                                profilePhotoUrl: state.ourUser.profilePhotoUrl,
                                radius: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 14,
                        child: RichText(
                          maxLines: 4,
                          text: TextSpan(
                            text: state.ourUser.username,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => OtherUserProfilePage(
                                      otherUserUid: widget.notification.senderUid,
                                    ),
                                  ),
                                );
                              },
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: " started following you.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\n" + convertCommentCreationDate(widget.notification.notificationCreationDate),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        }
      },
    );
  }

  // Widget _buildLikeRepliedCommentNotification() {
  //   return Offstage();
  //   //TODO Right now no need since it is the same as likedComment?
  // }
}
