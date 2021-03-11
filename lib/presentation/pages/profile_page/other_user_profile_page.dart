import 'package:community_material_icon/community_material_icon.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_watchlist_watched/movie_lists/other_user_profile_movie_lists_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_watchlist_watched/tv_show_lists/other_user_profile_tv_show_lists_bloc.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/tv_show_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum VideoType {
  MOVIE_WATCHLIST,
  MOVIE_WATCHED,
  TV_SHOW_WATCHLIST,
  TV_SHOW_WATCHED,
}

class OtherUserProfilePage extends StatefulWidget {
  final OurUser ourUser;

  OtherUserProfilePage({this.ourUser});

  @override
  _OtherUserProfilePageState createState() => _OtherUserProfilePageState();
}

class _OtherUserProfilePageState extends State<OtherUserProfilePage> with TickerProviderStateMixin {
  TabController _watchTypeTabController;
  TabController _moviesTabController;
  TabController _tvShowsTabController;
  ScrollController _scrollController;
  final List<Tab> _watchTypeTabs = <Tab>[
    const Tab(
      icon: Icon(
        CommunityMaterialIcons.movie_open,
        size: 30,
      ),
    ),
    const Tab(
      icon: Icon(
        CommunityMaterialIcons.television_classic,
        size: 30,
      ),
    ),
  ];
  final List<Tab> _moviesTabs = <Tab>[
    const Tab(text: "Watchlist"),
    const Tab(text: "Watched"),
  ];
  final List<Tab> _tvShowsTabs = <Tab>[
    const Tab(text: "Watchlist"),
    const Tab(text: "Watched"),
  ];

  @override
  void initState() {
    super.initState();
    _watchTypeTabController = TabController(initialIndex: 0, vsync: this, length: _watchTypeTabs.length);
    _moviesTabController = TabController(initialIndex: 0, vsync: this, length: _watchTypeTabs.length);
    _tvShowsTabController = TabController(initialIndex: 0, vsync: this, length: _watchTypeTabs.length);
    _scrollController = ScrollController();
    context.read<OtherUserProfileMovieListsBloc>().add(
          OtherUserProfileMovieListsEvent.loadMovieToListInitial(userUid: widget.ourUser.uid),
        );
    context.read<OtherUserProfileTvShowListsBloc>().add(
          OtherUserProfileTvShowListsEvent.loadTvShowToListInitial(userUid: widget.ourUser.uid),
        );
  }

  @override
  void dispose() {
    _watchTypeTabController.dispose();
    _moviesTabController.dispose();
    _tvShowsTabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling FETCH NEXT WATCH TYPE PAGE");
      switch (_watchTypeTabController.index) {
        case (0):
          switch (_moviesTabController.index) {
            case (0):
              context.read<OtherUserProfileMovieListsBloc>().add(
                    OtherUserProfileMovieListsEvent.nextMovieWatchlistPageCalled(userUid: widget.ourUser.uid),
                  );
              break;
            case (1):
              context.read<OtherUserProfileMovieListsBloc>().add(
                    OtherUserProfileMovieListsEvent.nextMovieWatchedPageCalled(userUid: widget.ourUser.uid),
                  );
              break;
            default:
          }
          break;
        case (1):
          switch (_tvShowsTabController.index) {
            case (0):
              context.read<OtherUserProfileTvShowListsBloc>().add(
                    OtherUserProfileTvShowListsEvent.nextTvShowWatchlistPageCalled(userUid: widget.ourUser.uid),
                  );
              break;
            case (1):
              context.read<OtherUserProfileTvShowListsBloc>().add(
                    OtherUserProfileTvShowListsEvent.nextTvShowWatchedPageCalled(userUid: widget.ourUser.uid),
                  );
              break;
            default:
          }
          break;
        default:
      }
    }
    return false;
  }

  List<Widget> _watchTypeTabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildMoviesTabs(context),
      _buildTvShowsTabs(context),
    ];
    return views;
  }

  Widget _buildMoviesTabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _moviesTabController,
              children: _moviesTabViews(context),
            ),
          ),
          TabBar(
            controller: _moviesTabController,
            tabs: _moviesTabs,
          ),
        ],
      ),
    );
  }

  Widget _buildTvShowsTabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tvShowsTabController,
              children: _tvShowsTabViews(context),
            ),
          ),
          TabBar(
            controller: _tvShowsTabController,
            tabs: _tvShowsTabs,
          ),
        ],
      ),
    );
  }

  List<Widget> _moviesTabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildMovieWatchlistTab(context),
      _buildMovieWatchedTab(context),
    ];
    return views;
  }

  List<Widget> _tvShowsTabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildTvShowWatchlistTab(context),
      _buildTvShowWatchedTab(context),
    ];
    return views;
  }

  Widget _buildMovieWatchlistTab(BuildContext context) {
    return BlocBuilder<OtherUserProfileMovieListsBloc, OtherUserProfileMovieListsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final movieWatchlist = state.movieWatchlist;
          return movieWatchlist.isEmpty
              ? Center(
                  child: Text(
                    "Movies added to watchlist will show up here",
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: GridView.builder(
                    controller: _scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.69,
                    ),
                    itemCount: _calculateMovieWatchlistItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= movieWatchlist.length
                          ? BuildLoaderNextPage()
                          : _buildGridImage(
                              posterPath: movieWatchlist[index].posterPath,
                              id: movieWatchlist[index].id,
                              videoType: VideoType.MOVIE_WATCHLIST,
                            );
                    },
                  ),
                );
        }
      },
    );
  }

  int _calculateMovieWatchlistItemCount(OtherUserProfileMovieListsState state) {
    if (state.isThereMoreMovieWatchlistPageToLoad) {
      return state.movieWatchlist.length + 1;
    } else {
      return state.movieWatchlist.length;
    }
  }

  Widget _buildMovieWatchedTab(BuildContext context) {
    return BlocBuilder<OtherUserProfileMovieListsBloc, OtherUserProfileMovieListsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final movieWatched = state.movieWatched;
          return movieWatched.isEmpty
              ? Center(
                  child: Text(
                    "Movies marked as watched will show up here",
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: GridView.builder(
                    controller: _scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.69,
                    ),
                    itemCount: _calculateMovieWatchedItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= movieWatched.length
                          ? BuildLoaderNextPage()
                          : _buildGridImage(
                              posterPath: movieWatched[index].posterPath,
                              id: movieWatched[index].id,
                              videoType: VideoType.MOVIE_WATCHED,
                            );
                    },
                  ),
                );
        }
      },
    );
  }

  int _calculateMovieWatchedItemCount(OtherUserProfileMovieListsState state) {
    if (state.isThereMoreMovieWatchedPageToLoad) {
      return state.movieWatched.length + 1;
    } else {
      return state.movieWatched.length;
    }
  }

  Widget _buildTvShowWatchlistTab(BuildContext context) {
    return BlocBuilder<OtherUserProfileTvShowListsBloc, OtherUserProfileTvShowListsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final tvShowWatchlist = state.tvShowWatchlist;
          return tvShowWatchlist.isEmpty
              ? Center(
                  child: Text(
                    "TV shows added to watchlist will show up here",
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: GridView.builder(
                    controller: _scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.69,
                    ),
                    itemCount: _calculateTvShowWatchlistItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= tvShowWatchlist.length
                          ? BuildLoaderNextPage()
                          : _buildGridImage(
                              posterPath: tvShowWatchlist[index].posterPath,
                              id: tvShowWatchlist[index].id,
                              videoType: VideoType.TV_SHOW_WATCHLIST,
                            );
                    },
                  ),
                );
        }
      },
    );
  }

  int _calculateTvShowWatchlistItemCount(OtherUserProfileTvShowListsState state) {
    if (state.isThereMoreTvShowWatchlistPageToLoad) {
      return state.tvShowWatchlist.length + 1;
    } else {
      return state.tvShowWatchlist.length;
    }
  }

  Widget _buildTvShowWatchedTab(BuildContext context) {
    return BlocBuilder<OtherUserProfileTvShowListsBloc, OtherUserProfileTvShowListsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final tvShowWatched = state.tvShowWatched;
          return tvShowWatched.isEmpty
              ? Center(
                  child: Text(
                    "TV shows marked as watched will show up here",
                  ),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: GridView.builder(
                    controller: _scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.69,
                    ),
                    itemCount: _calculateTvShowWatchedItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= tvShowWatched.length
                          ? BuildLoaderNextPage()
                          : _buildGridImage(
                              posterPath: tvShowWatched[index].posterPath,
                              id: tvShowWatched[index].id,
                              videoType: VideoType.TV_SHOW_WATCHED,
                            );
                    },
                  ),
                );
        }
      },
    );
  }

  int _calculateTvShowWatchedItemCount(OtherUserProfileTvShowListsState state) {
    if (state.isThereMoreTvShowWatchedPageToLoad) {
      return state.tvShowWatched.length + 1;
    } else {
      return state.tvShowWatched.length;
    }
  }

  Widget _buildGridImage({String posterPath, int id, VideoType videoType}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: false).push(
          MaterialPageRoute(
            // ignore: missing_return
            builder: (context) {
              switch (videoType) {
                case VideoType.MOVIE_WATCHLIST:
                  return MovieDetailsPage(id);
                  break;
                case VideoType.MOVIE_WATCHED:
                  return PostPage();
                  break;
                case VideoType.TV_SHOW_WATCHLIST:
                  return TvShowDetailsPage(id);
                  break;
                case VideoType.TV_SHOW_WATCHED:
                  return PostPage();
                  break;
              }
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 0.69,
          child: BuildPosterImage(
            height: 135,
            width: 90,
            imagePath: posterPath,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 0.0, right: 12.0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  Text(
                    widget.ourUser.username,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg",
                      ),
                      backgroundColor: Colors.black,
                      child: Text(
                        "USER PHOTO",
                        textAlign: TextAlign.center,
                      ),
                      radius: 40,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 80,
                      //ListView to stop overflow if user Font Size is very large
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.ourUser.watchedLength.toString(),
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),

                                ),
                                Text(
                                  "Watched",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(widget.ourUser.followers.toString(),
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                                Text(
                                  "Followers",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(widget.ourUser.following.toString(),
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                                Text(
                                  "Following",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(widget.ourUser.fullName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.ourUser.bio,
                  maxLines: 3,
                ),
              ),
            ),
            ElevatedButton(
              style: kNotWatchedButton,
              onPressed: () {
                //TODO Implement Follow and Unfollow button
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Text("Follow"),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabBar(
                    controller: _watchTypeTabController,
                    tabs: _watchTypeTabs,
                    labelColor: Colors.tealAccent,
                    unselectedLabelColor: Colors.grey,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _watchTypeTabController,
                      children: _watchTypeTabViews(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
