// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tv_show_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TvShowSearchEventTearOff {
  const _$TvShowSearchEventTearOff();

// ignore: unused_element
  _SearchNameChanged searchNameChanged(String name) {
    return _SearchNameChanged(
      name,
    );
  }

// ignore: unused_element
  _DeleteSearchPressed deleteSearchPressed() {
    return const _DeleteSearchPressed();
  }

// ignore: unused_element
  _NextResultPageCalled nextResultPageCalled() {
    return const _NextResultPageCalled();
  }

// ignore: unused_element
  _GetPopularTvShowsCalled getPopularTvShowsCalled() {
    return const _GetPopularTvShowsCalled();
  }

// ignore: unused_element
  _NextPopularTvShowsPageCalled nextPopularTvShowsPageCalled() {
    return const _NextPopularTvShowsPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowSearchEvent = _$TvShowSearchEventTearOff();

/// @nodoc
mixin _$TvShowSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TvShowSearchEventCopyWith<$Res> {
  factory $TvShowSearchEventCopyWith(
          TvShowSearchEvent value, $Res Function(TvShowSearchEvent) then) =
      _$TvShowSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TvShowSearchEventCopyWithImpl<$Res>
    implements $TvShowSearchEventCopyWith<$Res> {
  _$TvShowSearchEventCopyWithImpl(this._value, this._then);

  final TvShowSearchEvent _value;
  // ignore: unused_field
  final $Res Function(TvShowSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchNameChangedCopyWith<$Res> {
  factory _$SearchNameChangedCopyWith(
          _SearchNameChanged value, $Res Function(_SearchNameChanged) then) =
      __$SearchNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$SearchNameChangedCopyWithImpl<$Res>
    extends _$TvShowSearchEventCopyWithImpl<$Res>
    implements _$SearchNameChangedCopyWith<$Res> {
  __$SearchNameChangedCopyWithImpl(
      _SearchNameChanged _value, $Res Function(_SearchNameChanged) _then)
      : super(_value, (v) => _then(v as _SearchNameChanged));

  @override
  _SearchNameChanged get _value => super._value as _SearchNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_SearchNameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_SearchNameChanged implements _SearchNameChanged {
  const _$_SearchNameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'TvShowSearchEvent.searchNameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$SearchNameChangedCopyWith<_SearchNameChanged> get copyWith =>
      __$SearchNameChangedCopyWithImpl<_SearchNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return searchNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchNameChanged != null) {
      return searchNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return searchNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchNameChanged != null) {
      return searchNameChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchNameChanged implements TvShowSearchEvent {
  const factory _SearchNameChanged(String name) = _$_SearchNameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$SearchNameChangedCopyWith<_SearchNameChanged> get copyWith;
}

/// @nodoc
abstract class _$DeleteSearchPressedCopyWith<$Res> {
  factory _$DeleteSearchPressedCopyWith(_DeleteSearchPressed value,
          $Res Function(_DeleteSearchPressed) then) =
      __$DeleteSearchPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSearchPressedCopyWithImpl<$Res>
    extends _$TvShowSearchEventCopyWithImpl<$Res>
    implements _$DeleteSearchPressedCopyWith<$Res> {
  __$DeleteSearchPressedCopyWithImpl(
      _DeleteSearchPressed _value, $Res Function(_DeleteSearchPressed) _then)
      : super(_value, (v) => _then(v as _DeleteSearchPressed));

  @override
  _DeleteSearchPressed get _value => super._value as _DeleteSearchPressed;
}

/// @nodoc
class _$_DeleteSearchPressed implements _DeleteSearchPressed {
  const _$_DeleteSearchPressed();

  @override
  String toString() {
    return 'TvShowSearchEvent.deleteSearchPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSearchPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSearchPressed implements TvShowSearchEvent {
  const factory _DeleteSearchPressed() = _$_DeleteSearchPressed;
}

/// @nodoc
abstract class _$NextResultPageCalledCopyWith<$Res> {
  factory _$NextResultPageCalledCopyWith(_NextResultPageCalled value,
          $Res Function(_NextResultPageCalled) then) =
      __$NextResultPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextResultPageCalledCopyWithImpl<$Res>
    extends _$TvShowSearchEventCopyWithImpl<$Res>
    implements _$NextResultPageCalledCopyWith<$Res> {
  __$NextResultPageCalledCopyWithImpl(
      _NextResultPageCalled _value, $Res Function(_NextResultPageCalled) _then)
      : super(_value, (v) => _then(v as _NextResultPageCalled));

  @override
  _NextResultPageCalled get _value => super._value as _NextResultPageCalled;
}

/// @nodoc
class _$_NextResultPageCalled implements _NextResultPageCalled {
  const _$_NextResultPageCalled();

  @override
  String toString() {
    return 'TvShowSearchEvent.nextResultPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextResultPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextResultPageCalled implements TvShowSearchEvent {
  const factory _NextResultPageCalled() = _$_NextResultPageCalled;
}

/// @nodoc
abstract class _$GetPopularTvShowsCalledCopyWith<$Res> {
  factory _$GetPopularTvShowsCalledCopyWith(_GetPopularTvShowsCalled value,
          $Res Function(_GetPopularTvShowsCalled) then) =
      __$GetPopularTvShowsCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPopularTvShowsCalledCopyWithImpl<$Res>
    extends _$TvShowSearchEventCopyWithImpl<$Res>
    implements _$GetPopularTvShowsCalledCopyWith<$Res> {
  __$GetPopularTvShowsCalledCopyWithImpl(_GetPopularTvShowsCalled _value,
      $Res Function(_GetPopularTvShowsCalled) _then)
      : super(_value, (v) => _then(v as _GetPopularTvShowsCalled));

  @override
  _GetPopularTvShowsCalled get _value =>
      super._value as _GetPopularTvShowsCalled;
}

/// @nodoc
class _$_GetPopularTvShowsCalled implements _GetPopularTvShowsCalled {
  const _$_GetPopularTvShowsCalled();

  @override
  String toString() {
    return 'TvShowSearchEvent.getPopularTvShowsCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPopularTvShowsCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return getPopularTvShowsCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularTvShowsCalled != null) {
      return getPopularTvShowsCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return getPopularTvShowsCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularTvShowsCalled != null) {
      return getPopularTvShowsCalled(this);
    }
    return orElse();
  }
}

abstract class _GetPopularTvShowsCalled implements TvShowSearchEvent {
  const factory _GetPopularTvShowsCalled() = _$_GetPopularTvShowsCalled;
}

/// @nodoc
abstract class _$NextPopularTvShowsPageCalledCopyWith<$Res> {
  factory _$NextPopularTvShowsPageCalledCopyWith(
          _NextPopularTvShowsPageCalled value,
          $Res Function(_NextPopularTvShowsPageCalled) then) =
      __$NextPopularTvShowsPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextPopularTvShowsPageCalledCopyWithImpl<$Res>
    extends _$TvShowSearchEventCopyWithImpl<$Res>
    implements _$NextPopularTvShowsPageCalledCopyWith<$Res> {
  __$NextPopularTvShowsPageCalledCopyWithImpl(
      _NextPopularTvShowsPageCalled _value,
      $Res Function(_NextPopularTvShowsPageCalled) _then)
      : super(_value, (v) => _then(v as _NextPopularTvShowsPageCalled));

  @override
  _NextPopularTvShowsPageCalled get _value =>
      super._value as _NextPopularTvShowsPageCalled;
}

/// @nodoc
class _$_NextPopularTvShowsPageCalled implements _NextPopularTvShowsPageCalled {
  const _$_NextPopularTvShowsPageCalled();

  @override
  String toString() {
    return 'TvShowSearchEvent.nextPopularTvShowsPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextPopularTvShowsPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularTvShowsCalled(),
    @required TResult nextPopularTvShowsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return nextPopularTvShowsPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularTvShowsCalled(),
    TResult nextPopularTvShowsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularTvShowsPageCalled != null) {
      return nextPopularTvShowsPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    @required
        TResult nextPopularTvShowsPageCalled(
            _NextPopularTvShowsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularTvShowsCalled != null);
    assert(nextPopularTvShowsPageCalled != null);
    return nextPopularTvShowsPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularTvShowsCalled(_GetPopularTvShowsCalled value),
    TResult nextPopularTvShowsPageCalled(_NextPopularTvShowsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularTvShowsPageCalled != null) {
      return nextPopularTvShowsPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextPopularTvShowsPageCalled implements TvShowSearchEvent {
  const factory _NextPopularTvShowsPageCalled() =
      _$_NextPopularTvShowsPageCalled;
}

/// @nodoc
class _$TvShowSearchStateTearOff {
  const _$TvShowSearchStateTearOff();

// ignore: unused_element
  _TvShowSearchState call(
      {@required String name,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required TvShowSearchResults tvShowSearchResults,
      @required int searchPageNum,
      @required TvShowSearchResults popularTvShows,
      @required int popularPageNum}) {
    return _TvShowSearchState(
      name: name,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      tvShowSearchResults: tvShowSearchResults,
      searchPageNum: searchPageNum,
      popularTvShows: popularTvShows,
      popularPageNum: popularPageNum,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowSearchState = _$TvShowSearchStateTearOff();

/// @nodoc
mixin _$TvShowSearchState {
  String get name;
  String get errorMessage;
  bool get isSearching;
  bool get isSearchCompleted;
  TvShowSearchResults get tvShowSearchResults;
  int get searchPageNum;
  TvShowSearchResults get popularTvShows;
  int get popularPageNum;

  @JsonKey(ignore: true)
  $TvShowSearchStateCopyWith<TvShowSearchState> get copyWith;
}

/// @nodoc
abstract class $TvShowSearchStateCopyWith<$Res> {
  factory $TvShowSearchStateCopyWith(
          TvShowSearchState value, $Res Function(TvShowSearchState) then) =
      _$TvShowSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      TvShowSearchResults tvShowSearchResults,
      int searchPageNum,
      TvShowSearchResults popularTvShows,
      int popularPageNum});
}

/// @nodoc
class _$TvShowSearchStateCopyWithImpl<$Res>
    implements $TvShowSearchStateCopyWith<$Res> {
  _$TvShowSearchStateCopyWithImpl(this._value, this._then);

  final TvShowSearchState _value;
  // ignore: unused_field
  final $Res Function(TvShowSearchState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object tvShowSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularTvShows = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      tvShowSearchResults: tvShowSearchResults == freezed
          ? _value.tvShowSearchResults
          : tvShowSearchResults as TvShowSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows as TvShowSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
abstract class _$TvShowSearchStateCopyWith<$Res>
    implements $TvShowSearchStateCopyWith<$Res> {
  factory _$TvShowSearchStateCopyWith(
          _TvShowSearchState value, $Res Function(_TvShowSearchState) then) =
      __$TvShowSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      TvShowSearchResults tvShowSearchResults,
      int searchPageNum,
      TvShowSearchResults popularTvShows,
      int popularPageNum});
}

/// @nodoc
class __$TvShowSearchStateCopyWithImpl<$Res>
    extends _$TvShowSearchStateCopyWithImpl<$Res>
    implements _$TvShowSearchStateCopyWith<$Res> {
  __$TvShowSearchStateCopyWithImpl(
      _TvShowSearchState _value, $Res Function(_TvShowSearchState) _then)
      : super(_value, (v) => _then(v as _TvShowSearchState));

  @override
  _TvShowSearchState get _value => super._value as _TvShowSearchState;

  @override
  $Res call({
    Object name = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object tvShowSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularTvShows = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_TvShowSearchState(
      name: name == freezed ? _value.name : name as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      tvShowSearchResults: tvShowSearchResults == freezed
          ? _value.tvShowSearchResults
          : tvShowSearchResults as TvShowSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows as TvShowSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
class _$_TvShowSearchState implements _TvShowSearchState {
  const _$_TvShowSearchState(
      {@required this.name,
      @required this.errorMessage,
      @required this.isSearching,
      @required this.isSearchCompleted,
      @required this.tvShowSearchResults,
      @required this.searchPageNum,
      @required this.popularTvShows,
      @required this.popularPageNum})
      : assert(name != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(tvShowSearchResults != null),
        assert(searchPageNum != null),
        assert(popularTvShows != null),
        assert(popularPageNum != null);

  @override
  final String name;
  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final bool isSearchCompleted;
  @override
  final TvShowSearchResults tvShowSearchResults;
  @override
  final int searchPageNum;
  @override
  final TvShowSearchResults popularTvShows;
  @override
  final int popularPageNum;

  @override
  String toString() {
    return 'TvShowSearchState(name: $name, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, tvShowSearchResults: $tvShowSearchResults, searchPageNum: $searchPageNum, popularTvShows: $popularTvShows, popularPageNum: $popularPageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowSearchState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isSearchCompleted, isSearchCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchCompleted, isSearchCompleted)) &&
            (identical(other.tvShowSearchResults, tvShowSearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowSearchResults, tvShowSearchResults)) &&
            (identical(other.searchPageNum, searchPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.searchPageNum, searchPageNum)) &&
            (identical(other.popularTvShows, popularTvShows) ||
                const DeepCollectionEquality()
                    .equals(other.popularTvShows, popularTvShows)) &&
            (identical(other.popularPageNum, popularPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.popularPageNum, popularPageNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(tvShowSearchResults) ^
      const DeepCollectionEquality().hash(searchPageNum) ^
      const DeepCollectionEquality().hash(popularTvShows) ^
      const DeepCollectionEquality().hash(popularPageNum);

  @JsonKey(ignore: true)
  @override
  _$TvShowSearchStateCopyWith<_TvShowSearchState> get copyWith =>
      __$TvShowSearchStateCopyWithImpl<_TvShowSearchState>(this, _$identity);
}

abstract class _TvShowSearchState implements TvShowSearchState {
  const factory _TvShowSearchState(
      {@required String name,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required TvShowSearchResults tvShowSearchResults,
      @required int searchPageNum,
      @required TvShowSearchResults popularTvShows,
      @required int popularPageNum}) = _$_TvShowSearchState;

  @override
  String get name;
  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  bool get isSearchCompleted;
  @override
  TvShowSearchResults get tvShowSearchResults;
  @override
  int get searchPageNum;
  @override
  TvShowSearchResults get popularTvShows;
  @override
  int get popularPageNum;
  @override
  @JsonKey(ignore: true)
  _$TvShowSearchStateCopyWith<_TvShowSearchState> get copyWith;
}
