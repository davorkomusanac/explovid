import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/tv_show_search/tv_show_search_bloc.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
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
          print("Actor");
          break;
        case (3):
          print("User");
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
      Container(
        height: 150,
        width: 200,
        child: Text("Third"),
      ),
      Container(
        height: 150,
        width: 200,
        child: Text("Fourth"),
      ),
    ];
    return views;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<MovieSearchBloc, MovieSearchState>(
          listener: (context, state) {
            if (state.isSearchPageDoublePressed) {
              setState(() {
                _searchController.clear();
              });
              _tabController.animateTo(0);
              context.read<MovieSearchBloc>().add(
                    MovieSearchEvent.changeIsSearchPageDoublePressed(),
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
                                        print("Actor");
                                        break;
                                      case (3):
                                        print("User");
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
                                print("Actor");
                                context.read<MovieSearchBloc>().add(
                                      MovieSearchEvent.searchTitleChanged(value),
                                    );
                                break;
                              case (3):
                                print("User");
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
                              print("Actor");
                              context.read<MovieSearchBloc>().add(
                                    MovieSearchEvent.searchTitleChanged(value),
                                  );
                              break;
                            case (3):
                              print("User");
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

  ///BUILD TV SHOWS SEARCH TAB View
  Widget _buildSearchTvShowTabView(BuildContext context) {
    return BlocBuilder<TvShowSearchBloc, TvShowSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
              Center(
                child: const Text("Popular Tv Shows are going to show here..."),
              ),
            if (state.isSearching)
              Expanded(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
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
                          ? buildLoaderNextPage()
                          : _buildTvShowCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "☹",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        state.errorMessage,
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "Try again.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  height: 190,
                  width: 132,
                  child: Image.network(
                    "https://image.tmdb.org/t/p/w342/${state.tvShowSearchResults.tvShowSummaries[index].posterPath}",
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        height: 190,
                        color: Colors.green,
                        width: 132,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                      return Container(
                        height: 190,
                        width: 132,
                        color: Colors.yellow[400],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('😢'),
                            const SizedBox(height: 5),
                            const Text(
                              'No image available',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
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
              Center(
                child: const Text("Popular movies are going to show here..."),
              ),
            if (state.isSearching)
              Expanded(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
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
                          ? buildLoaderNextPage()
                          : _buildMovieCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "☹",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        state.errorMessage,
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "Try again.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  height: 190,
                  width: 132,
                  child: Image.network(
                    "https://image.tmdb.org/t/p/w342/${state.movieSearchResults.movieSummaries[index].posterPath}",
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        height: 190,
                        color: Colors.green,
                        width: 132,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                      return Container(
                        height: 190,
                        width: 132,
                        color: Colors.yellow[400],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('😢'),
                            const SizedBox(height: 5),
                            const Text(
                              'No image available',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
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
