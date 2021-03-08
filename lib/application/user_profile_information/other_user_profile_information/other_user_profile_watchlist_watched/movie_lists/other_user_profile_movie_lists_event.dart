part of 'other_user_profile_movie_lists_bloc.dart';

@freezed
abstract class OtherUserProfileMovieListsEvent with _$OtherUserProfileMovieListsEvent {
  const factory OtherUserProfileMovieListsEvent.loadMovieToListInitial({String userUid}) = _LoadMovieToListInitial;
  const factory OtherUserProfileMovieListsEvent.nextMovieWatchlistPageCalled({String userUid}) = _NextMovieWatchlistPageCalled;
  const factory OtherUserProfileMovieListsEvent.nextMovieWatchedPageCalled({String userUid}) = _NextMovieWatchedPageCalled;
}
