import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<MovieSearchBloc, MovieSearchState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          maxLength: 100,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            counterText: "",
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            labelText: 'Search',
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
                !state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted

                    ///Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
                    ? const Text("Hello")
                    : const Divider(height: 1),
                state.isSearching
                    ? Expanded(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    : const Divider(height: 1),
                state.isSearchCompleted
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: state.movieSearchResults.movieSummaries.length,
                          itemBuilder: (context, index) {
                            return buildMovieCard(context, state, index);
                          },
                        ),
                      )
                    : const Divider(height: 1),
                state.errorMessage.isNotEmpty
                    ? Expanded(
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
                      )
                    : const Divider(height: 1),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailsPage(),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
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
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('😢'),
                          const Text('No image available'),
                        ],
                      ),
                    );
                  },
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
                      state.movieSearchResults.movieSummaries[index].overview,
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
                      state.movieSearchResults.movieSummaries[index].releaseDate,
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
