part of 'tv_show_search_bloc.dart';

@freezed
abstract class TvShowSearchState with _$TvShowSearchState {
  const factory TvShowSearchState({
    @required String name,
    @required String errorMessage,
    @required bool isSearching,
    @required bool isSearchCompleted,
    @required TvShowSearchResults tvShowSearchResults,
    @required int searchPageNum,
    @required TvShowSearchResults popularTvShows,
    @required int popularPageNum,
  }) = _TvShowSearchState;

  factory TvShowSearchState.initial() => TvShowSearchState(
        name: '',
        errorMessage: '',
        isSearching: false,
        isSearchCompleted: false,
        tvShowSearchResults: TvShowSearchResults(totalResults: 0),
        searchPageNum: 1,
        popularTvShows: TvShowSearchResults(totalResults: 0),
        popularPageNum: 1,
      );
}
