import 'dart:async';
import 'dart:core';

import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:explovid/application/feedback/block_user/block_user_bloc.dart';
import 'package:explovid/application/feedback/report/report_bloc.dart';
import 'package:explovid/application/user_post/global_news_feed/global_news_feed_bloc.dart';
import 'package:explovid/application/user_post/user_news_feed/user_news_feed_bloc.dart';
import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_information_bloc.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_comments_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_likers_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/tv_show_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsFeedPage extends StatefulWidget {
  @override
  _NewsFeedPageState createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> with TickerProviderStateMixin {
  ScrollController _userNewsFeedScrollController;
  ScrollController _globalNewsFeedScrollController;
  UserActionsRepository _userActionsRepository;
  OtherUserProfileRepository _otherUserProfileRepository;
  Completer<void> _refreshCompleter;
  TabController _tabController;
  final List<Tab> _tabs = <Tab>[
    const Tab(text: "Your Feed"),
    const Tab(text: "Worldwide"),
  ];

  @override
  void initState() {
    super.initState();
    _userNewsFeedScrollController = ScrollController();
    _globalNewsFeedScrollController = ScrollController();
    _userActionsRepository = UserActionsRepository();
    _otherUserProfileRepository = OtherUserProfileRepository();
    _refreshCompleter = Completer<void>();
    _tabController = TabController(initialIndex: 0, vsync: this, length: _tabs.length);
  }

  @override
  void dispose() {
    _userNewsFeedScrollController.dispose();
    _globalNewsFeedScrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more reviews
  bool _handleUserNewsFeedScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _userNewsFeedScrollController.position.extentAfter == 0) {
      print("Calling fetch next user news feed page");
      context.read<UserNewsFeedBloc>().add(
            UserNewsFeedEvent.loadReviewsPressedNextPage(),
          );
    }
    return false;
  }

  //If at end of the Listview, search for more reviews
  bool _handleGlobalNewsFeedScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _globalNewsFeedScrollController.position.extentAfter == 0) {
      print("Calling fetch next global news feed page");
      context.read<GlobalNewsFeedBloc>().add(
            GlobalNewsFeedEvent.loadReviewsPressedNextPage(),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<ReportBloc, ReportState>(
          listener: (context, reportState) {
            if (reportState.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(reportState.errorMessage),
                  duration: Duration(seconds: 2),
                ),
              );
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                controller: _tabController,
                tabs: _tabs,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: _tabViews(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _tabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildUserNewsFeed(context),
      _buildGlobalNewsFeed(context),
    ];
    return views;
  }

  Widget _buildUserNewsFeed(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<UserNewsFeedBloc>().add(
              UserNewsFeedEvent.refreshReviewsPressed(),
            );
        return _refreshCompleter.future;
      },
      child: BlocConsumer<UserNewsFeedBloc, UserNewsFeedState>(
        listener: (context, state) {
          if (!state.isRefreshingReviews) {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          }
        },
        builder: (context, state) {
          return state.isLoadingReviews
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleUserNewsFeedScrollNotification,
                  child: state.reviews.isEmpty
                      ? ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _userNewsFeedScrollController,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Text("Follow other people to see their reviews"),
                            );
                          },
                        )
                      : ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _userNewsFeedScrollController,
                          itemCount: _calculateUserNewsFeedListLength(state),
                          itemBuilder: (context, index) {
                            if (index >= state.reviews.length) {
                              return BuildLoaderNextPage();
                            } else {
                              String postOwnerUid = state.reviews[index].postOwnerUid;
                              String postUid = state.reviews[index].postUid;
                              return BlocBuilder<BlockUserBloc, BlockUserState>(
                                builder: (context, userBlockState) {
                                  return userBlockState.blockedUsers.contains(postOwnerUid) ||
                                          userBlockState.usersBlockedBy.contains(postOwnerUid)
                                      ? SizedBox(width: 0, height: 0)
                                      : BlocProvider(
                                          create: (context) => UserPostBloc(
                                            _userActionsRepository,
                                          ),
                                          child: BlocProvider(
                                            create: (context) => OtherUserProfileInformationBloc(
                                              _otherUserProfileRepository,
                                            ),
                                            child: _UserNewsFeedReview(
                                              postOwnerUid: postOwnerUid,
                                              postUid: postUid,
                                              key: ValueKey(postUid),
                                            ),
                                          ),
                                        );
                                },
                              );
                            }
                          },
                        ),
                );
        },
      ),
    );
  }

  int _calculateUserNewsFeedListLength(UserNewsFeedState state) {
    if (state.isThereMoreReviewsToLoad) {
      return state.reviews.length + 1;
    } else {
      return state.reviews.length;
    }
  }

  Widget _buildGlobalNewsFeed(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<GlobalNewsFeedBloc>().add(
              GlobalNewsFeedEvent.refreshReviewsPressed(),
            );
        return _refreshCompleter.future;
      },
      child: BlocConsumer<GlobalNewsFeedBloc, GlobalNewsFeedState>(
        listener: (context, state) {
          if (!state.isRefreshingReviews) {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          }
        },
        builder: (context, state) {
          return state.isLoadingReviews
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleGlobalNewsFeedScrollNotification,
                  child: state.reviews.isEmpty
                      ? const Center(
                          child: Text("Other user's reviews will show up here"),
                        )
                      : ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _globalNewsFeedScrollController,
                          itemCount: _calculateGlobalNewsFeedListLength(state),
                          itemBuilder: (context, index) {
                            if (index >= state.reviews.length) {
                              return BuildLoaderNextPage();
                            } else {
                              String postOwnerUid = state.reviews[index].postOwnerUid;
                              String postUid = state.reviews[index].postUid;
                              return BlocBuilder<BlockUserBloc, BlockUserState>(
                                builder: (context, userBlockState) {
                                  return userBlockState.blockedUsers.contains(postOwnerUid) ||
                                          userBlockState.usersBlockedBy.contains(postOwnerUid)
                                      ? SizedBox(width: 0, height: 0)
                                      : BlocProvider(
                                          create: (context) => UserPostBloc(
                                            _userActionsRepository,
                                          ),
                                          child: BlocProvider(
                                            create: (context) => OtherUserProfileInformationBloc(
                                              _otherUserProfileRepository,
                                            ),
                                            child: _UserNewsFeedReview(
                                              postOwnerUid: postOwnerUid,
                                              postUid: postUid,
                                              key: ValueKey(postUid),
                                            ),
                                          ),
                                        );
                                },
                              );
                            }
                          },
                        ),
                );
        },
      ),
    );
  }

  int _calculateGlobalNewsFeedListLength(GlobalNewsFeedState state) {
    if (state.isThereMoreReviewsToLoad) {
      return state.reviews.length + 1;
    } else {
      return state.reviews.length;
    }
  }
}

/// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// UserFeedReviewItem/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class _UserNewsFeedReview extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;
  final Key key;

  _UserNewsFeedReview({
    @required this.postOwnerUid,
    @required this.postUid,
    @required this.key,
  });

  @override
  _UserNewsFeedReviewState createState() => _UserNewsFeedReviewState();
}

class _UserNewsFeedReviewState extends State<_UserNewsFeedReview> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  bool isReviewExpanded = false;
  bool toggleHeartIconAnimation = false;

  @override
  void initState() {
    super.initState();
    context.read<UserPostBloc>().add(
          UserPostEvent.loadPostPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
    context.read<OtherUserProfileInformationBloc>().add(
          OtherUserProfileInformationEvent.otherUserProfileLoaded(
            otherUserUid: widget.postOwnerUid,
          ),
        );
  }

  @override
  bool get wantKeepAlive => true;

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.loadPostPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
    context.read<OtherUserProfileInformationBloc>().add(
          OtherUserProfileInformationEvent.otherUserProfileLoaded(
            otherUserUid: widget.postOwnerUid,
          ),
        );
  }

  void updateHeartIconAnimation() {
    setState(() {
      toggleHeartIconAnimation = !toggleHeartIconAnimation;
    });
  }

  Widget _buildConfirmUnlikeDialog({@required UserPostBloc bloc}) {
    return AlertDialog(
      title: Text("Are you sure you want to unlike this post?"),
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
              UserPostEvent.unlikePostPressed(postOwnerUid: widget.postOwnerUid, postUid: widget.postUid),
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

  Widget _buildEditPostActionsDialog({
    UserPostBloc userPostBloc,
    MovieListsUserProfileBloc movieListsUserProfileBloc,
    TvShowListsUserProfileBloc tvShowListsUserProfileBloc,
    @required UserPostState state,
  }) {
    return SimpleDialog(
      children: [
        SimpleDialogOption(
          padding: EdgeInsets.all(16),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _BuildUpdateReviewDialog(
                  state: state,
                  movieListsBloc: movieListsUserProfileBloc,
                  tvShowListsUserProfileBloc: tvShowListsUserProfileBloc,
                );
              },
            ).then((value) {
              userPostBloc.add(
                UserPostEvent.loadPostPressed(
                  postOwnerUid: widget.postOwnerUid,
                  postUid: widget.postUid,
                ),
              );
            });
          },
          child: Text(
            "Edit Review",
            textAlign: TextAlign.center,
          ),
        ),
        SimpleDialogOption(
          padding: EdgeInsets.all(16),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _buildConfirmDeletePostDialog(
                  state: state,
                  movieListsBloc: movieListsUserProfileBloc,
                  tvShowListsUserProfileBloc: tvShowListsUserProfileBloc,
                );
              },
            );
          },
          child: Text(
            "Delete Review",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmDeletePostDialog({
    MovieListsUserProfileBloc movieListsBloc,
    TvShowListsUserProfileBloc tvShowListsUserProfileBloc,
    @required UserPostState state,
  }) {
    return AlertDialog(
      title:
          Text("Are you sure you want to delete this post?\nAll the comments will be deleted and this action cannot be undone."),
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
            state.userPost.isOfTypeMovie
                ? movieListsBloc.add(
                    MovieListsUserProfileEvent.removeMovieFromWatchedPressed(
                      movieTitle: state.userPost.title,
                      movieId: state.userPost.tmdbId,
                    ),
                  )
                : tvShowListsUserProfileBloc.add(
                    TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed(
                      tvShowTitle: state.userPost.title,
                      tvShowId: state.userPost.tmdbId,
                    ),
                  );
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
            //Refresh news feed
            context.read<GlobalNewsFeedBloc>().add(
                  GlobalNewsFeedEvent.refreshReviewsPressed(),
                );
            context.read<UserNewsFeedBloc>().add(
                  UserNewsFeedEvent.refreshReviewsPressed(),
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

  Widget _reportPostDialogConfirmation({
    @required String otherUserUid,
    @required String postUid,
    @required String postText,
    @required ReportBloc bloc,
  }) {
    return SimpleDialog(
      children: [
        SimpleDialogOption(
          padding: EdgeInsets.all(16),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return ReportPostDialog(
                  otherUserUid: otherUserUid,
                  postUid: postUid,
                  postText: postText,
                  bloc: bloc,
                );
              },
            );
          },
          child: Text(
            "Report Post",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  //TODO Check if post is empty (already delete) then just show Offstage?
  @override
  Widget build(BuildContext context) {
    //Need to call mustCallSuper for automaticKeepAlive?
    super.build(context);
    return BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
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
            if (state.isLoadingPost || userState.isSearching) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              if (state.userPost.posterPath.isEmpty) {
                //return Offstage();
                return SizedBox(width: 0, height: 0);
              } else {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
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
                              child: Row(
                                children: [
                                  Material(
                                    elevation: 20,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    child:
                                        BuildProfilePhotoAvatar(profilePhotoUrl: userState.ourUser.profilePhotoUrl, radius: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      userState.ourUser.username,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              // ignore: close_sinks
                              final movieBloc = BlocProvider.of<MovieListsUserProfileBloc>(context, listen: false);
                              // ignore: close_sinks
                              final tvShowBloc = BlocProvider.of<TvShowListsUserProfileBloc>(context, listen: false);
                              // ignore: close_sinks
                              final userPostBloc = BlocProvider.of<UserPostBloc>(context, listen: false);
                              // ignore: close_sinks
                              final reportBloc = BlocProvider.of<ReportBloc>(context, listen: false);

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return state.isCurrentUserOwnerOfPost
                                      ? _buildEditPostActionsDialog(
                                          userPostBloc: userPostBloc,
                                          movieListsUserProfileBloc: movieBloc,
                                          tvShowListsUserProfileBloc: tvShowBloc,
                                          state: state,
                                        )
                                      : _reportPostDialogConfirmation(
                                          otherUserUid: widget.postOwnerUid,
                                          postUid: widget.postUid,
                                          postText: state.userPost.review,
                                          bloc: reportBloc,
                                        );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      GestureDetector(
                        onDoubleTap: () {
                          updateHeartIconAnimation();
                          Future.delayed(Duration(milliseconds: 1000), () {
                            updateHeartIconAnimation();
                          });
                          if (!state.isPostLiked)
                            context.read<UserPostBloc>().add(
                                  UserPostEvent.likePostPressed(
                                    postOwnerUid: widget.postOwnerUid,
                                    postUid: widget.postUid,
                                    postPhotoUrl: state.userPost.posterPath,
                                  ),
                                );
                        },
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            BuildPosterImage(
                              resolution: "original",
                              height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                              width: MediaQuery.of(context).size.width * 0.7,
                              imagePath: state.userPost.posterPath,
                            ),
                            AnimatedSizeAndFade.showHide(
                              show: toggleHeartIconAnimation,
                              vsync: this,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: MediaQuery.of(context).size.width * 0.25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.only(),
                                  icon: state.isPostLiked
                                      ? const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )
                                      : const Icon(
                                          Icons.favorite_border,
                                          //color: Colors.black,
                                        ),
                                  onPressed: () {
                                    // ignore: close_sinks
                                    final bloc = BlocProvider.of<UserPostBloc>(context, listen: false);
                                    state.isPostLiked
                                        ? showDialog(
                                            context: context,
                                            builder: (context) {
                                              return _buildConfirmUnlikeDialog(bloc: bloc);
                                            },
                                          )
                                        : context.read<UserPostBloc>().add(
                                              UserPostEvent.likePostPressed(
                                                postOwnerUid: widget.postOwnerUid,
                                                postUid: widget.postUid,
                                                postPhotoUrl: state.userPost.posterPath,
                                              ),
                                            );
                                  },
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => PostLikersPage(
                                              postOwnerUid: widget.postOwnerUid,
                                              postUid: widget.postUid,
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                      bottom: 8.0,
                                      top: 8.0,
                                    ),
                                    child: Text(
                                      convertNumberOfLikesAndComments(state.numberOfLikes),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  padding: EdgeInsets.only(),
                                  icon: const Icon(
                                    CommunityMaterialIcons.chat_outline,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => PostCommentsPage(
                                              postOwnerUid: widget.postOwnerUid,
                                              postUid: widget.postUid,
                                              postOwnerUsername: userState.ourUser.username,
                                              postOwnerProfilePhoto: userState.ourUser.profilePhotoUrl,
                                              postOwnerRating: state.userPost.rating,
                                              postOwnerReview: state.userPost.review,
                                              isPostSpoiler: state.isSpoiler,
                                              postCreationDate: state.userPost.postCreationDate,
                                              isKeyboardFocused: true,
                                              postPhotoUrl: state.userPost.posterPath,
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
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => PostCommentsPage(
                                              postOwnerUid: widget.postOwnerUid,
                                              postUid: widget.postUid,
                                              postOwnerUsername: userState.ourUser.username,
                                              postOwnerProfilePhoto: userState.ourUser.profilePhotoUrl,
                                              postOwnerRating: state.userPost.rating,
                                              postOwnerReview: state.userPost.review,
                                              isPostSpoiler: state.isSpoiler,
                                              postCreationDate: state.userPost.postCreationDate,
                                              isKeyboardFocused: false,
                                              postPhotoUrl: state.userPost.posterPath,
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                      bottom: 8.0,
                                      top: 8.0,
                                    ),
                                    child: Text(
                                      convertNumberOfLikesAndComments(state.numberOfComments),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.tealAccent[200],
                              ),
                              onPressed: () {
                                state.userPost.isOfTypeMovie
                                    ? Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => MovieDetailsPage(
                                            movieId: state.userPost.tmdbId,
                                            movieTitle: state.userPost.title,
                                          ),
                                        ),
                                      )
                                    : Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => TvShowDetailsPage(
                                              tvShowName: state.userPost.title,
                                              tvShowId: state.userPost.tmdbId,
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
                              child: Column(
                                children: [
                                  Text(
                                    state.userPost.title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                              text: userState.ourUser.username,
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
                                const TextSpan(
                                  text: "  rated it ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                const TextSpan(
                                  text: " ⭐ ",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: state.userPost.rating.toInt().toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.yellow,
                                    fontSize: 20,
                                  ),
                                ),
                                const TextSpan(
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
                        ),
                      ),
                      state.isSpoiler
                          ? OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.tealAccent[700],
                              ),
                              onPressed: () {
                                context.read<UserPostBloc>().add(
                                      UserPostEvent.showSpoilerPressed(),
                                    );
                              },
                              child: Text("This review contains spoilers, press to see"),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isReviewExpanded = !isReviewExpanded;
                                    });
                                  },
                                  child: ExpandableText(
                                    state.userPost.review,
                                    expandText: "more",
                                    collapseText: "...collapse",
                                    maxLines: 3,
                                    expanded: isReviewExpanded,
                                    key: UniqueKey(),
                                  ),
                                ),
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            convertPostCreationDate(state.userPost.postCreationDate),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          },
        );
      },
    );
  }
}

class _BuildUpdateReviewDialog extends StatefulWidget {
  final MovieListsUserProfileBloc movieListsBloc;
  final TvShowListsUserProfileBloc tvShowListsUserProfileBloc;
  final UserPostState state;

  _BuildUpdateReviewDialog({
    this.movieListsBloc,
    this.tvShowListsUserProfileBloc,
    this.state,
  });

  @override
  __BuildUpdateReviewDialogState createState() => __BuildUpdateReviewDialogState();
}

class __BuildUpdateReviewDialogState extends State<_BuildUpdateReviewDialog> {
  double rating;
  bool isSpoiler;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    rating = widget.state.userPost.rating;
    isSpoiler = widget.state.userPost.isSpoiler;
    _controller = TextEditingController(text: widget.state.userPost.review);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        actionsPadding: EdgeInsets.only(right: 12),
        contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
        insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "⭐ ${rating.toInt().toString()}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Slider(
                  min: 1.0,
                  max: 10.0,
                  divisions: 9,
                  value: rating,
                  activeColor: Colors.tealAccent[700],
                  onChanged: (double value) {
                    setState(() {
                      rating = value;
                    });
                  }),
              Expanded(
                child: TextField(
                  controller: _controller,
                  maxLines: 80,
                  maxLength: 1000,
                  decoration: InputDecoration(
                    counter: Offstage(),
                  ),
                ),
              ),
              CheckboxListTile(
                activeColor: Colors.tealAccent[700],
                value: isSpoiler,
                title: Text("Contains spoilers"),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {
                  setState(() {
                    isSpoiler = value;
                  });
                },
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: TextButton.styleFrom(
              primary: Colors.tealAccent[200],
            ),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              widget.state.userPost.isOfTypeMovie
                  ? widget.movieListsBloc.add(
                      MovieListsUserProfileEvent.updateMovieWatchedReviewPressed(
                        movieTitle: widget.state.userPost.title,
                        movieId: widget.state.userPost.tmdbId,
                        review: _controller.text,
                        rating: rating,
                        isSpoiler: isSpoiler,
                      ),
                    )
                  : widget.tvShowListsUserProfileBloc.add(
                      TvShowListsUserProfileEvent.updateTvShowWatchedReviewPressed(
                        tvShowTitle: widget.state.userPost.title,
                        tvShowId: widget.state.userPost.tmdbId,
                        review: _controller.text,
                        rating: rating,
                        isSpoiler: isSpoiler,
                      ),
                    );
              Navigator.of(context, rootNavigator: true).pop();
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.tealAccent[700],
            ),
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
