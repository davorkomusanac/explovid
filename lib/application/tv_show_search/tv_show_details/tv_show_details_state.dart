part of 'tv_show_details_bloc.dart';

@freezed
abstract class TvShowDetailsState with _$TvShowDetailsState {
  const factory TvShowDetailsState({
    @required String errorMessage,
    @required bool isSearching,
    @required TvShowDetails tvShowDetails,
    @required bool isTrailerAvailable,
  }) = _TvShowDetailsState;

  factory TvShowDetailsState.initial() => TvShowDetailsState(
        errorMessage: '',
        isSearching: true,
        tvShowDetails: TvShowDetails(),
        isTrailerAvailable: false,
      );
}
