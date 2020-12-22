import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<MovieSearchBloc, MovieSearchState>(
          listener: (context, state) {
            //
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
                          maxLength: 100,
                          autofocus: true,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            counterText: "",
                            prefixIcon: Icon(
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
                state.isSearching
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    : Divider(height: 1),
                state.isSearchCompleted ? buildListView(context, state) : Divider(height: 1),
                state.errorMessage.isNotEmpty
                    ? Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "☹",
                                style: TextStyle(fontSize: 50),
                              ),
                              Text(
                                state.errorMessage,
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Try again.",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Divider(height: 1),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildListView(BuildContext context, MovieSearchState state) {
    return Expanded(
      child: ListView.builder(
        itemCount: state.movieSearchResults.movieSummaries.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(state.movieSearchResults.movieSummaries[index].title),
          );
        },
      ),
    );
  }
}
