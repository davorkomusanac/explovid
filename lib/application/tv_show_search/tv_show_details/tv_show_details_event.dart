part of 'tv_show_details_bloc.dart';

@freezed
abstract class TvShowDetailsEvent with _$TvShowDetailsEvent {
  const factory TvShowDetailsEvent.tvShowDetailsPressed(int id) = _TvShowDetailsPressed;
}
