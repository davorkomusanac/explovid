part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsEvent with _$MovieDetailsEvent {
  //Add events for onPress for Want to Watch or Watched, maybe put in a separate bloc?

  //Adding event to start loading api data for shorter load time while movie deatils page
  //gets loaded
  const factory MovieDetailsEvent.movieDetailsPressed(int id) = _MovieDetailsPressed;
}
