import 'package:community_material_icon/community_material_icon.dart';
import 'package:explovid/application/user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
  TabController _watchTypeTabController;
  TabController _moviesTabController;
  TabController _tvShowsTabController;
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
  }

  @override
  void dispose() {
    _watchTypeTabController.dispose();
    _moviesTabController.dispose();
    _tvShowsTabController.dispose();
    super.dispose();
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
          return CircularProgressIndicator();
        } else {
          final movieWatchlist = state.movieWatchlist;
          return movieWatchlist.isEmpty
              ? Center(
                  child: Text(
                    "Movies added to watchlist will show up here",
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.69,
                  ),
                  itemCount: movieWatchlist.length,
                  itemBuilder: (context, index) {
                    return _buildGridImage(posterPath: movieWatchlist[index].posterPath);
                  },
                );
        }
      },
    );
  }

  Widget _buildMovieWatchedTab(BuildContext context) {
    return BlocBuilder<MovieListsUserProfileBloc, MovieListsUserProfileState>(
      builder: (context, state) {
        if (state.isLoading) {
          return CircularProgressIndicator();
        } else {
          final movieWatched = state.movieWatched;
          return movieWatched.isEmpty
              ? Center(
                  child: Text(
                    "Movies marked as watched will show up here",
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.69,
                  ),
                  itemCount: movieWatched.length,
                  itemBuilder: (context, index) {
                    return _buildGridImage(posterPath: movieWatched[index].posterPath);
                  },
                );
        }
      },
    );
  }

  Widget _buildTvShowWatchlistTab(BuildContext context) {
    return BlocBuilder<TvShowListsUserProfileBloc, TvShowListsUserProfileState>(
      builder: (context, state) {
        if (state.isLoading) {
          return CircularProgressIndicator();
        } else {
          final tvShowWatchlist = state.tvShowWatchlist;
          return tvShowWatchlist.isEmpty
              ? Center(
                  child: Text(
                    "TV shows added to watchlist will show up here",
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.69,
                  ),
                  itemCount: tvShowWatchlist.length,
                  itemBuilder: (context, index) {
                    return _buildGridImage(posterPath: tvShowWatchlist[index].posterPath);
                  },
                );
        }
      },
    );
  }

  Widget _buildTvShowWatchedTab(BuildContext context) {
    return BlocBuilder<TvShowListsUserProfileBloc, TvShowListsUserProfileState>(
      builder: (context, state) {
        if (state.isLoading) {
          return CircularProgressIndicator();
        } else {
          final tvShowWatched = state.tvShowWatched;
          return tvShowWatched.isEmpty
              ? Center(
                  child: Text(
                    "TV shows marked as watched will show up here",
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.69,
                  ),
                  itemCount: tvShowWatched.length,
                  itemBuilder: (context, index) {
                    return _buildGridImage(posterPath: tvShowWatched[index].posterPath);
                  },
                );
        }
      },
    );
  }

  Widget _buildGridImage({String posterPath}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 0.69,
        child: BuildPosterImage(
          height: 135,
          width: 90,
          imagePath: posterPath,
        ),
      ),
    );
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
                  CircleAvatar(
                    child: Text(
                      "USER PHOTO",
                      textAlign: TextAlign.center,
                    ),
                    radius: 40,
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
