part of 'movie_search_bloc.dart';

@freezed
abstract class MovieSearchEvent with _$MovieSearchEvent {
  const factory MovieSearchEvent.searchTitleChanged(String title) = _SearchTitleChanged;
}