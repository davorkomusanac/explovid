import 'package:community_material_icon/community_material_icon.dart';
import 'package:explovid/application/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
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

class ProfilePage extends StatefulWidget {
  final String uid;

  ProfilePage({this.uid});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
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
              context.read<MovieListsUserProfileBloc>().add(
                    MovieListsUserProfileEvent.nextMovieWatchlistPageCalled(),
                  );
              break;
            case (1):
              context.read<MovieListsUserProfileBloc>().add(
                    MovieListsUserProfileEvent.nextMovieWatchedPageCalled(),
                  );
              break;
            default:
          }
          break;
        case (1):
          switch (_tvShowsTabController.index) {
            case (0):
              context.read<TvShowListsUserProfileBloc>().add(
                    TvShowListsUserProfileEvent.nextTvShowWatchlistPageCalled(),
                  );
              break;
            case (1):
              context.read<TvShowListsUserProfileBloc>().add(
                    TvShowListsUserProfileEvent.nextTvShowWatchedPageCalled(),
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
    return BlocBuilder<MovieListsUserProfileBloc, MovieListsUserProfileState>(
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

  int _calculateMovieWatchlistItemCount(MovieListsUserProfileState state) {
    if (state.movieWatchlist.length < 18 || state.movieWatchlist.length % 3 != 0 || !state.isThereMoreMovieWatchlistPageToLoad) {
      return state.movieWatchlist.length;
    } else {
      return state.movieWatchlist.length + 1;
    }
  }

  Widget _buildMovieWatchedTab(BuildContext context) {
    return BlocBuilder<MovieListsUserProfileBloc, MovieListsUserProfileState>(
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

  int _calculateMovieWatchedItemCount(MovieListsUserProfileState state) {
    if (state.movieWatched.length < 18 || state.movieWatched.length % 3 != 0 || !state.isThereMoreMovieWatchedPageToLoad) {
      return state.movieWatched.length;
    } else {
      return state.movieWatched.length + 1;
    }
  }

  Widget _buildTvShowWatchlistTab(BuildContext context) {
    return BlocBuilder<TvShowListsUserProfileBloc, TvShowListsUserProfileState>(
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

  int _calculateTvShowWatchlistItemCount(TvShowListsUserProfileState state) {
    if (state.tvShowWatchlist.length < 18 ||
        state.tvShowWatchlist.length % 3 != 0 ||
        !state.isThereMoreTvShowWatchlistPageToLoad) {
      return state.tvShowWatchlist.length;
    } else {
      return state.tvShowWatchlist.length + 1;
    }
  }

  Widget _buildTvShowWatchedTab(BuildContext context) {
    return BlocBuilder<TvShowListsUserProfileBloc, TvShowListsUserProfileState>(
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

  int _calculateTvShowWatchedItemCount(TvShowListsUserProfileState state) {
    if (state.tvShowWatched.length < 18 || state.tvShowWatched.length % 3 != 0 || !state.isThereMoreTvShowWatchedPageToLoad) {
      return state.tvShowWatched.length;
    } else {
      return state.tvShowWatched.length + 1;
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

  Widget _buildPostListView() {
    // return ListView.builder(itemBuilder: null)
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Username HERE",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          "USER PHOTO",
                          textAlign: TextAlign.center,
                        ),
                        radius: 40,
                      ),
                      Positioned(
                        bottom: -15,
                        right: -15,
                        child: IconButton(
                          icon: Icon(Icons.add_circle),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("0"),
                      Text("Posts"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("100"),
                      Text("Followers"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("200"),
                      Text("Following"),
                    ],
                  ),
                ],
              ),
            ),
            Text("NAME"),
            Text(
              "Short bio goes here... two or three lines of text max? ",
              maxLines: 3,
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
