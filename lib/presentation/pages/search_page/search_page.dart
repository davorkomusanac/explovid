import 'package:explovid/application/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<MovieSearchBloc, MovieSearchState>(
          listener: (context, state) {
            if (state.isControllerEmpty) searchController.clear();
          },
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: searchController,
                          maxLength: 100,
                          autocorrect: false,
                          decoration: InputDecoration(
                            counterText: "",
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            labelText: 'Search',
                            suffixIcon: searchController.text.isNotEmpty
                                ? IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      searchController.clear();
                                      context.read<MovieSearchBloc>().add(MovieSearchEvent.deleteSearchPressed());
                                    },
                                  )
                                : null,
                          ),
                          onChanged: (value) {
                            context.read<MovieSearchBloc>().add(
                                  MovieSearchEvent.searchTitleChanged(value),
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
                  //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
                  const Text("Hello"),
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
                    child: ListView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: state.movieSearchResults.movieSummaries.length,
                      itemBuilder: (context, index) {
                        return buildMovieCard(context, state, index);
                      },
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
        ),
      ),
    );
  }

  Widget buildMovieCard(BuildContext context, MovieSearchState state, int index) {
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
