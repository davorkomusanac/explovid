import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:explovid/domain/movie_db/movie_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieRepository movieRepository;

  MovieDetailsBloc(this.movieRepository) : super(MovieDetailsState.initial());

  @override
  Stream<MovieDetailsState> mapEventToState(
    MovieDetailsEvent event,
  ) async* {
    yield* event.map(
      movieDetailsPressed: (e) async* {
        yield state.copyWith(
          isSearching: true,
          errorMessage: "",
        );
        var movieDetailsResult = await movieRepository.getMovieDetails(e.id);
        if (movieDetailsResult.errorMessage.isNotEmpty) {
          yield state.copyWith(
            isSearching: false,
            errorMessage: movieDetailsResult.errorMessage,
          );
        } else {
          yield state.copyWith(
            isSearching: false,
            errorMessage: "",
            movieDetails: movieDetailsResult,
          );
        }
      },
    );
  }
}
