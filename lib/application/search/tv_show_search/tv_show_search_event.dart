part of 'tv_show_search_bloc.dart';

@freezed
abstract class TvShowSearchEvent with _$TvShowSearchEvent {
  const factory TvShowSearchEvent.searchNameChanged(String name) = _SearchNameChanged;
  const factory TvShowSearchEvent.deleteSearchPressed() = _DeleteSearchPressed;
  const factory TvShowSearchEvent.nextResultPageCalled() = _NextResultPageCalled;
  const factory TvShowSearchEvent.getPopularTvShowsCalled() = _GetPopularTvShowsCalled;
  const factory TvShowSearchEvent.nextPopularTvShowsPageCalled() = _NextPopularTvShowsPageCalled;
}
