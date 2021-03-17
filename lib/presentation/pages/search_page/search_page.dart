import 'package:cached_network_image/cached_network_image.dart';
import 'package:explovid/application/search/actor_search/actor_search_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/search/tv_show_search/tv_show_search_bloc.dart';
import 'package:explovid/application/search/user_search/user_search_bloc.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_details_page.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_profile_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/tv_show_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  TextEditingController _searchController;
  ScrollController _scrollController;
  TabController _tabController;
  final List<Tab> _myTabs = <Tab>[
    const Tab(text: "Movies"),
    const Tab(text: "TV Shows"),
    const Tab(text: "Actors"),
    const Tab(text: "Users"),
  ];
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController = ScrollController();
    _tabController = TabController(initialIndex: 0, vsync: this, length: _myTabs.length);
    context.read<MovieSearchBloc>().add(MovieSearchEvent.getPopularMoviesCalled());
    context.read<TvShowSearchBloc>().add(TvShowSearchEvent.getPopularTvShowsCalled());
    context.read<ActorSearchBloc>().add(ActorSearchEvent.getPopularActorsCalled());
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more Results
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling FETCH NEXT PAGE");
      switch (_tabController.index) {
        case (0):
          context.read<MovieSearchBloc>().add(
                MovieSearchEvent.nextResultPageCalled(),
              );
          break;
        case (1):
          context.read<TvShowSearchBloc>().add(
                TvShowSearchEvent.nextResultPageCalled(),
              );
          break;
        case (2):
          context.read<ActorSearchBloc>().add(
                ActorSearchEvent.nextResultPageCalled(),
              );
          break;
        case (3):
          context.read<UserSearchBloc>().add(
                UserSearchEvent.nextSearchResultPageCalled(),
              );
          break;
        default:
      }
    }
    return false;
  }

  //If at end of the GridView (popular movies, tv shows...) search for more Results
  bool _handlePopularScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling FETCH NEXT PAGE");
      switch (_tabController.index) {
        case (0):
          context.read<MovieSearchBloc>().add(
                MovieSearchEvent.nextPopularMoviesPageCalled(),
              );
          break;
        case (1):
          context.read<TvShowSearchBloc>().add(
                TvShowSearchEvent.nextPopularTvShowsPageCalled(),
              );
          break;
        case (2):
          context.read<ActorSearchBloc>().add(
                ActorSearchEvent.nextPopularActorsPageCalled(),
              );
          break;
        case (3):
          print("Popular Users SEARCH NEXT PAGE CALLED");
          break;
        default:
      }
    }
    return false;
  }

  List<Widget> _tabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildSearchMovieTabView(context),
      _buildSearchTvShowTabView(context),
      _buildSearchActorTabView(context),
      _buildSearchUserTabView(context),
    ];
    return views;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<MovieSearchBloc, MovieSearchState>(
          listener: (context, state) {
            if (state.isSearchPageDoublePressed) {
              setState(() {
                _searchController.clear();
              });
              _tabController.animateTo(0);
              context.read<MovieSearchBloc>().add(
                    MovieSearchEvent.changeIsSearchPageDoublePressed(),
                  );
              context.read<TvShowSearchBloc>().add(
                    TvShowSearchEvent.deleteSearchPressed(),
                  );
              context.read<ActorSearchBloc>().add(
                    ActorSearchEvent.deleteSearchPressed(),
                  );
              context.read<UserSearchBloc>().add(
                    UserSearchEvent.deleteSearchPressed(),
                  );
            }
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20.0,
                  bottom: 5.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _searchController,
                        maxLength: 100,
                        autocorrect: false,
                        decoration: InputDecoration(
                          counterText: "",
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          labelText: 'Search',
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    setState(() {
                                      _searchController.clear();
                                    });
                                    switch (_tabController.index) {
                                      case (0):
                                        context.read<MovieSearchBloc>().add(
                                              MovieSearchEvent.deleteSearchPressed(),
                                            );
                                        break;
                                      case (1):
                                        context.read<TvShowSearchBloc>().add(
                                              TvShowSearchEvent.deleteSearchPressed(),
                                            );
                                        break;
                                      case (2):
                                        context.read<ActorSearchBloc>().add(
                                              ActorSearchEvent.deleteSearchPressed(),
                                            );
                                        break;
                                      case (3):
                                        context.read<UserSearchBloc>().add(
                                              UserSearchEvent.deleteSearchPressed(),
                                            );
                                        break;
                                      default:
                                    }
                                  },
                                )
                              : null,
                        ),
                        onChanged: (value) {
                          //Calling this setState so that the _searchController gets updated, the deleteSearch button doesn't show in other tabs from the start
                          setState(() {});
                          //Debouncer, so that the search gets initiated when the user stops typing (for 500 milliseconds)
                          _debouncer.run(() {
                            print(value);
                            switch (_tabController.index) {
                              case (0):
                                context.read<MovieSearchBloc>().add(
                                      MovieSearchEvent.searchTitleChanged(value),
                                    );
                                break;
                              case (1):
                                context.read<TvShowSearchBloc>().add(
                                      TvShowSearchEvent.searchNameChanged(value),
                                    );
                                break;
                              case (2):
                                context.read<ActorSearchBloc>().add(
                                      ActorSearchEvent.searchNameChanged(value),
                                    );
                                break;
                              case (3):
                                context.read<UserSearchBloc>().add(
                                      UserSearchEvent.searchUsernameChanged(value),
                                    );
                                break;
                              default:
                            }
                          });
                        },
                        onFieldSubmitted: (value) {
                          switch (_tabController.index) {
                            case (0):
                              context.read<MovieSearchBloc>().add(
                                    MovieSearchEvent.searchTitleChanged(value),
                                  );
                              break;
                            case (1):
                              context.read<TvShowSearchBloc>().add(
                                    TvShowSearchEvent.searchNameChanged(value),
                                  );
                              break;
                            case (2):
                              context.read<ActorSearchBloc>().add(
                                    ActorSearchEvent.searchNameChanged(value),
                                  );
                              break;
                            case (3):
                              context.read<UserSearchBloc>().add(
                                    UserSearchEvent.searchUsernameChanged(value),
                                  );
                              break;
                            default:
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: _tabController,
                tabs: _myTabs,
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

  ///BUILD USER SEARCH TAB View
  Widget _buildSearchUserTabView(BuildContext context) {
    return BlocBuilder<UserSearchBloc, UserSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              Expanded(
                child: Center(
                  child: Text("Start typing to search users"),
                ),
              ),
            if (state.isSearching) BuildSearchProgressIndicator(),
            if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
            if (state.isSearchCompleted)
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _calculateSearchUserListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.userSearchResults.length
                          ? BuildLoaderNextPage()
                          : _buildUserSearchCard(context, state, index);
                    },
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  int _calculateSearchUserListItemCount(UserSearchState state) {
    if (state.isThereMoreUserSearchPageToLoad) {
      return state.userSearchResults.length + 1;
    } else {
      return state.userSearchResults.length;
    }
  }

  Widget _buildUserSearchCard(BuildContext context, UserSearchState state, int index) {
    var user = state.userSearchResults[index];
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: CachedNetworkImage(
          imageUrl: user.profilePhotoUrl,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            foregroundImage: imageProvider,
            backgroundColor: Colors.black,
            radius: 30,
          ),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) {
            return CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
            );
          },
        ),
      ),
      title: Text(user.username),
      subtitle: Text(user.fullName),
      onTap: () {
        Navigator.of(context, rootNavigator: false).push(
          MaterialPageRoute(
            builder: (context) => OtherUserProfilePage(
              ourUser: user,
            ),
          ),
        );
      },
    );
  }

  ///BUILD ACTOR SEARCH TAB View
  Widget _buildSearchActorTabView(BuildContext context) {
    return BlocBuilder<ActorSearchBloc, ActorSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _handlePopularScrollNotification,
                    child: GridView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                      ),
                      itemCount: _calculatePopularActorsItemCount(state),
                      itemBuilder: (context, index) {
                        return index >= state.popularActors.actorSummaries.length
                            ? BuildLoaderNextPage()
                            : Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: false).push(
                                      MaterialPageRoute(
                                        builder: (context) => ActorDetailsPage(
                                          state.popularActors.actorSummaries[index].id,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 0.69,
                                        child: BuildPosterImage(
                                          height: 135,
                                          width: 90,
                                          imagePath: state.popularActors.actorSummaries[index].profilePath,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                          child: Text(
                                            state.popularActors.actorSummaries[index].name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                ),
              ),
            if (state.isSearching) BuildSearchProgressIndicator(),
            if (state.isSearchCompleted)
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _calculateActorListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.actorSearchResults.actorSummaries.length
                          ? BuildLoaderNextPage()
                          : _buildActorCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
          ],
        );
      },
    );
  }

  int _calculatePopularActorsItemCount(ActorSearchState state) {
    if (state.popularPageNum < state.popularActors.totalPages) {
      return state.popularActors.actorSummaries.length + 1;
    } else {
      return state.popularActors.actorSummaries.length;
    }
  }

  int _calculateActorListItemCount(ActorSearchState state) {
    if (state.searchPageNum < state.actorSearchResults.totalPages) {
      return state.actorSearchResults.actorSummaries.length + 1;
    } else {
      return state.actorSearchResults.actorSummaries.length;
    }
  }

  Widget _buildActorCard(BuildContext context, ActorSearchState state, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: false).push(
            MaterialPageRoute(
              builder: (context) => ActorDetailsPage(state.actorSearchResults.actorSummaries[index].id),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: BuildPosterImage(
                height: 190,
                width: 132,
                imagePath: state.actorSearchResults.actorSummaries[index].profilePath,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 45.0),
                    child: Text(
                      state.actorSearchResults.actorSummaries[index].name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                    child: Text(
                      "Known for: " + state.actorSearchResults.actorSummaries[index].knownForDepartment,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                      ),
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

  ///BUILD TV SHOWS SEARCH TAB View
  Widget _buildSearchTvShowTabView(BuildContext context) {
    return BlocBuilder<TvShowSearchBloc, TvShowSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _handlePopularScrollNotification,
                    child: GridView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                      ),
                      itemCount: _calculatePopularTvShowsItemCount(state),
                      itemBuilder: (context, index) {
                        return index >= state.popularTvShows.tvShowSummaries.length
                            ? BuildLoaderNextPage()
                            : Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: false).push(
                                      MaterialPageRoute(
                                        builder: (context) => TvShowDetailsPage(
                                          state.popularTvShows.tvShowSummaries[index].id,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 0.69,
                                        child: BuildPosterImage(
                                          height: 135,
                                          width: 90,
                                          imagePath: state.popularTvShows.tvShowSummaries[index].posterPath,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                        child: Text(
                                          state.popularTvShows.tvShowSummaries[index].voteCount > 100 &&
                                                  state.popularTvShows.tvShowSummaries[index].voteAverage != 0
                                              ? "⭐ " + state.popularTvShows.tvShowSummaries[index].voteAverage.toString()
                                              : "⭐ N/A",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                ),
              ),
            if (state.isSearching) BuildSearchProgressIndicator(),
            if (state.isSearchCompleted)
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _calculateTvShowListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.tvShowSearchResults.tvShowSummaries.length
                          ? BuildLoaderNextPage()
                          : _buildTvShowCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
          ],
        );
      },
    );
  }

  int _calculatePopularTvShowsItemCount(TvShowSearchState state) {
    if (state.popularPageNum < state.popularTvShows.totalPages) {
      return state.popularTvShows.tvShowSummaries.length + 1;
    } else {
      return state.popularTvShows.tvShowSummaries.length;
    }
  }

  int _calculateTvShowListItemCount(TvShowSearchState state) {
    if (state.searchPageNum < state.tvShowSearchResults.totalPages) {
      return state.tvShowSearchResults.tvShowSummaries.length + 1;
    } else {
      return state.tvShowSearchResults.tvShowSummaries.length;
    }
  }

  Widget _buildTvShowCard(BuildContext context, TvShowSearchState state, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: false).push(
            MaterialPageRoute(
              builder: (context) => TvShowDetailsPage(state.tvShowSearchResults.tvShowSummaries[index].id),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: BuildPosterImage(
                height: 190,
                width: 132,
                imagePath: state.tvShowSearchResults.tvShowSummaries[index].posterPath,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Text(
                      state.tvShowSearchResults.tvShowSummaries[index].name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                    child: Text(
                      state.tvShowSearchResults.tvShowSummaries[index].overview.isEmpty
                          ? "Plot unknown"
                          : state.tvShowSearchResults.tvShowSummaries[index].overview,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      convertReleaseDate(state.tvShowSearchResults.tvShowSummaries[index].firstAirDate),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
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

  ///Build Movie Search Tab View
  Widget _buildSearchMovieTabView(BuildContext context) {
    return BlocBuilder<MovieSearchBloc, MovieSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _handlePopularScrollNotification,
                    child: GridView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                      ),
                      itemCount: _calculatePopularMoviesItemCount(state),
                      itemBuilder: (context, index) {
                        return index >= state.popularMovies.movieSummaries.length
                            ? BuildLoaderNextPage()
                            : Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: false).push(
                                      MaterialPageRoute(
                                        builder: (context) => MovieDetailsPage(
                                          state.popularMovies.movieSummaries[index].id,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 0.69,
                                        child: BuildPosterImage(
                                          height: 135,
                                          width: 90,
                                          imagePath: state.popularMovies.movieSummaries[index].posterPath,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                        child: Text(
                                          state.popularMovies.movieSummaries[index].voteCount > 100 &&
                                                  state.popularMovies.movieSummaries[index].voteAverage != 0
                                              ? "⭐ " + state.popularMovies.movieSummaries[index].voteAverage.toString()
                                              : "⭐ N/A",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                ),
              ),
            if (state.isSearching) BuildSearchProgressIndicator(),
            if (state.isSearchCompleted)
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _calculateMovieListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.movieSearchResults.movieSummaries.length
                          ? BuildLoaderNextPage()
                          : _buildMovieCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
          ],
        );
      },
    );
  }

  int _calculatePopularMoviesItemCount(MovieSearchState state) {
    if (state.popularPageNum < state.popularMovies.totalPages) {
      return state.popularMovies.movieSummaries.length + 1;
    } else {
      return state.popularMovies.movieSummaries.length;
    }
  }

  int _calculateMovieListItemCount(MovieSearchState state) {
    if (state.searchPageNum < state.movieSearchResults.totalPages) {
      return state.movieSearchResults.movieSummaries.length + 1;
    } else {
      return state.movieSearchResults.movieSummaries.length;
    }
  }

  Widget _buildMovieCard(BuildContext context, MovieSearchState state, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: false).push(
            MaterialPageRoute(
              builder: (context) => MovieDetailsPage(state.movieSearchResults.movieSummaries[index].id),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: BuildPosterImage(
                height: 190,
                width: 132,
                imagePath: state.movieSearchResults.movieSummaries[index].posterPath,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Text(
                      state.movieSearchResults.movieSummaries[index].title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                    child: Text(
                      state.movieSearchResults.movieSummaries[index].overview.isEmpty
                          ? "Plot unknown"
                          : state.movieSearchResults.movieSummaries[index].overview,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      convertReleaseDate(state.movieSearchResults.movieSummaries[index].releaseDate),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
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
