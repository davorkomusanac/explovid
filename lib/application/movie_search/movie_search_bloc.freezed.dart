// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieSearchEventTearOff {
  const _$MovieSearchEventTearOff();

// ignore: unused_element
  _SearchTitleChanged searchTitleChanged(String title) {
    return _SearchTitleChanged(
      title,
    );
  }

// ignore: unused_element
  _DeleteSearchPressed deleteSearchPressed() {
    return const _DeleteSearchPressed();
  }

// ignore: unused_element
  _SearchPageDoublePressed searchPageDoublePressed() {
    return const _SearchPageDoublePressed();
  }

// ignore: unused_element
  _ChangeIsSearchPageDoublePressed changeIsSearchPageDoublePressed() {
    return const _ChangeIsSearchPageDoublePressed();
  }

// ignore: unused_element
  _NextResultPageCalled nextResultPageCalled() {
    return const _NextResultPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $MovieSearchEvent = _$MovieSearchEventTearOff();

/// @nodoc
mixin _$MovieSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieSearchEventCopyWith<$Res> {
  factory $MovieSearchEventCopyWith(
          MovieSearchEvent value, $Res Function(MovieSearchEvent) then) =
      _$MovieSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieSearchEventCopyWithImpl<$Res>
    implements $MovieSearchEventCopyWith<$Res> {
  _$MovieSearchEventCopyWithImpl(this._value, this._then);

  final MovieSearchEvent _value;
  // ignore: unused_field
  final $Res Function(MovieSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchTitleChangedCopyWith<$Res> {
  factory _$SearchTitleChangedCopyWith(
          _SearchTitleChanged value, $Res Function(_SearchTitleChanged) then) =
      __$SearchTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$SearchTitleChangedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$SearchTitleChangedCopyWith<$Res> {
  __$SearchTitleChangedCopyWithImpl(
      _SearchTitleChanged _value, $Res Function(_SearchTitleChanged) _then)
      : super(_value, (v) => _then(v as _SearchTitleChanged));

  @override
  _SearchTitleChanged get _value => super._value as _SearchTitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_SearchTitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_SearchTitleChanged implements _SearchTitleChanged {
  const _$_SearchTitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'MovieSearchEvent.searchTitleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$SearchTitleChangedCopyWith<_SearchTitleChanged> get copyWith =>
      __$SearchTitleChangedCopyWithImpl<_SearchTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return searchTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchTitleChanged != null) {
      return searchTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return searchTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchTitleChanged != null) {
      return searchTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTitleChanged implements MovieSearchEvent {
  const factory _SearchTitleChanged(String title) = _$_SearchTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$SearchTitleChangedCopyWith<_SearchTitleChanged> get copyWith;
}

/// @nodoc
abstract class _$DeleteSearchPressedCopyWith<$Res> {
  factory _$DeleteSearchPressedCopyWith(_DeleteSearchPressed value,
          $Res Function(_DeleteSearchPressed) then) =
      __$DeleteSearchPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSearchPressedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
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
    return 'MovieSearchEvent.deleteSearchPressed()';
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
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
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
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSearchPressed implements MovieSearchEvent {
  const factory _DeleteSearchPressed() = _$_DeleteSearchPressed;
}

/// @nodoc
abstract class _$SearchPageDoublePressedCopyWith<$Res> {
  factory _$SearchPageDoublePressedCopyWith(_SearchPageDoublePressed value,
          $Res Function(_SearchPageDoublePressed) then) =
      __$SearchPageDoublePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchPageDoublePressedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$SearchPageDoublePressedCopyWith<$Res> {
  __$SearchPageDoublePressedCopyWithImpl(_SearchPageDoublePressed _value,
      $Res Function(_SearchPageDoublePressed) _then)
      : super(_value, (v) => _then(v as _SearchPageDoublePressed));

  @override
  _SearchPageDoublePressed get _value =>
      super._value as _SearchPageDoublePressed;
}

/// @nodoc
class _$_SearchPageDoublePressed implements _SearchPageDoublePressed {
  const _$_SearchPageDoublePressed();

  @override
  String toString() {
    return 'MovieSearchEvent.searchPageDoublePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchPageDoublePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return searchPageDoublePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchPageDoublePressed != null) {
      return searchPageDoublePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return searchPageDoublePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchPageDoublePressed != null) {
      return searchPageDoublePressed(this);
    }
    return orElse();
  }
}

abstract class _SearchPageDoublePressed implements MovieSearchEvent {
  const factory _SearchPageDoublePressed() = _$_SearchPageDoublePressed;
}

/// @nodoc
abstract class _$ChangeIsSearchPageDoublePressedCopyWith<$Res> {
  factory _$ChangeIsSearchPageDoublePressedCopyWith(
          _ChangeIsSearchPageDoublePressed value,
          $Res Function(_ChangeIsSearchPageDoublePressed) then) =
      __$ChangeIsSearchPageDoublePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeIsSearchPageDoublePressedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$ChangeIsSearchPageDoublePressedCopyWith<$Res> {
  __$ChangeIsSearchPageDoublePressedCopyWithImpl(
      _ChangeIsSearchPageDoublePressed _value,
      $Res Function(_ChangeIsSearchPageDoublePressed) _then)
      : super(_value, (v) => _then(v as _ChangeIsSearchPageDoublePressed));

  @override
  _ChangeIsSearchPageDoublePressed get _value =>
      super._value as _ChangeIsSearchPageDoublePressed;
}

/// @nodoc
class _$_ChangeIsSearchPageDoublePressed
    implements _ChangeIsSearchPageDoublePressed {
  const _$_ChangeIsSearchPageDoublePressed();

  @override
  String toString() {
    return 'MovieSearchEvent.changeIsSearchPageDoublePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeIsSearchPageDoublePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return changeIsSearchPageDoublePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeIsSearchPageDoublePressed != null) {
      return changeIsSearchPageDoublePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return changeIsSearchPageDoublePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeIsSearchPageDoublePressed != null) {
      return changeIsSearchPageDoublePressed(this);
    }
    return orElse();
  }
}

abstract class _ChangeIsSearchPageDoublePressed implements MovieSearchEvent {
  const factory _ChangeIsSearchPageDoublePressed() =
      _$_ChangeIsSearchPageDoublePressed;
}

/// @nodoc
abstract class _$NextResultPageCalledCopyWith<$Res> {
  factory _$NextResultPageCalledCopyWith(_NextResultPageCalled value,
          $Res Function(_NextResultPageCalled) then) =
      __$NextResultPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextResultPageCalledCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
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
    return 'MovieSearchEvent.nextResultPageCalled()';
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
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult searchPageDoublePressed(),
    @required TResult changeIsSearchPageDoublePressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult searchPageDoublePressed(),
    TResult changeIsSearchPageDoublePressed(),
    TResult nextResultPageCalled(),
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
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    @required
        TResult changeIsSearchPageDoublePressed(
            _ChangeIsSearchPageDoublePressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(searchPageDoublePressed != null);
    assert(changeIsSearchPageDoublePressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult searchPageDoublePressed(_SearchPageDoublePressed value),
    TResult changeIsSearchPageDoublePressed(
        _ChangeIsSearchPageDoublePressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextResultPageCalled implements MovieSearchEvent {
  const factory _NextResultPageCalled() = _$_NextResultPageCalled;
}

/// @nodoc
class _$MovieSearchStateTearOff {
  const _$MovieSearchStateTearOff();

// ignore: unused_element
  _MovieSearchState call(
      {@required String title,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required MovieSearchResults movieSearchResults,
      @required int searchPageNum,
      @required bool isSearchPageDoublePressed}) {
    return _MovieSearchState(
      title: title,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      movieSearchResults: movieSearchResults,
      searchPageNum: searchPageNum,
      isSearchPageDoublePressed: isSearchPageDoublePressed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieSearchState = _$MovieSearchStateTearOff();

/// @nodoc
mixin _$MovieSearchState {
  String get title;
  String get errorMessage;
  bool get isSearching;
  bool get isSearchCompleted;
  MovieSearchResults get movieSearchResults;
  int get searchPageNum;
  bool get isSearchPageDoublePressed;

  @JsonKey(ignore: true)
  $MovieSearchStateCopyWith<MovieSearchState> get copyWith;
}

/// @nodoc
abstract class $MovieSearchStateCopyWith<$Res> {
  factory $MovieSearchStateCopyWith(
          MovieSearchState value, $Res Function(MovieSearchState) then) =
      _$MovieSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      MovieSearchResults movieSearchResults,
      int searchPageNum,
      bool isSearchPageDoublePressed});
}

/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._value, this._then);

  final MovieSearchState _value;
  // ignore: unused_field
  final $Res Function(MovieSearchState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object movieSearchResults = freezed,
    Object searchPageNum = freezed,
    Object isSearchPageDoublePressed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      movieSearchResults: movieSearchResults == freezed
          ? _value.movieSearchResults
          : movieSearchResults as MovieSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      isSearchPageDoublePressed: isSearchPageDoublePressed == freezed
          ? _value.isSearchPageDoublePressed
          : isSearchPageDoublePressed as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieSearchStateCopyWith<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  factory _$MovieSearchStateCopyWith(
          _MovieSearchState value, $Res Function(_MovieSearchState) then) =
      __$MovieSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      MovieSearchResults movieSearchResults,
      int searchPageNum,
      bool isSearchPageDoublePressed});
}

/// @nodoc
class __$MovieSearchStateCopyWithImpl<$Res>
    extends _$MovieSearchStateCopyWithImpl<$Res>
    implements _$MovieSearchStateCopyWith<$Res> {
  __$MovieSearchStateCopyWithImpl(
      _MovieSearchState _value, $Res Function(_MovieSearchState) _then)
      : super(_value, (v) => _then(v as _MovieSearchState));

  @override
  _MovieSearchState get _value => super._value as _MovieSearchState;

  @override
  $Res call({
    Object title = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object movieSearchResults = freezed,
    Object searchPageNum = freezed,
    Object isSearchPageDoublePressed = freezed,
  }) {
    return _then(_MovieSearchState(
      title: title == freezed ? _value.title : title as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      movieSearchResults: movieSearchResults == freezed
          ? _value.movieSearchResults
          : movieSearchResults as MovieSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      isSearchPageDoublePressed: isSearchPageDoublePressed == freezed
          ? _value.isSearchPageDoublePressed
          : isSearchPageDoublePressed as bool,
    ));
  }
}

/// @nodoc
class _$_MovieSearchState implements _MovieSearchState {
  const _$_MovieSearchState(
      {@required this.title,
      @required this.errorMessage,
      @required this.isSearching,
      @required this.isSearchCompleted,
      @required this.movieSearchResults,
      @required this.searchPageNum,
      @required this.isSearchPageDoublePressed})
      : assert(title != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(movieSearchResults != null),
        assert(searchPageNum != null),
        assert(isSearchPageDoublePressed != null);

  @override
  final String title;
  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final bool isSearchCompleted;
  @override
  final MovieSearchResults movieSearchResults;
  @override
  final int searchPageNum;
  @override
  final bool isSearchPageDoublePressed;

  @override
  String toString() {
    return 'MovieSearchState(title: $title, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, movieSearchResults: $movieSearchResults, searchPageNum: $searchPageNum, isSearchPageDoublePressed: $isSearchPageDoublePressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieSearchState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isSearchCompleted, isSearchCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchCompleted, isSearchCompleted)) &&
            (identical(other.movieSearchResults, movieSearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.movieSearchResults, movieSearchResults)) &&
            (identical(other.searchPageNum, searchPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.searchPageNum, searchPageNum)) &&
            (identical(other.isSearchPageDoublePressed,
                    isSearchPageDoublePressed) ||
                const DeepCollectionEquality().equals(
                    other.isSearchPageDoublePressed,
                    isSearchPageDoublePressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(movieSearchResults) ^
      const DeepCollectionEquality().hash(searchPageNum) ^
      const DeepCollectionEquality().hash(isSearchPageDoublePressed);

  @JsonKey(ignore: true)
  @override
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith =>
      __$MovieSearchStateCopyWithImpl<_MovieSearchState>(this, _$identity);
}

abstract class _MovieSearchState implements MovieSearchState {
  const factory _MovieSearchState(
      {@required String title,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required MovieSearchResults movieSearchResults,
      @required int searchPageNum,
      @required bool isSearchPageDoublePressed}) = _$_MovieSearchState;

  @override
  String get title;
  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  bool get isSearchCompleted;
  @override
  MovieSearchResults get movieSearchResults;
  @override
  int get searchPageNum;
  @override
  bool get isSearchPageDoublePressed;
  @override
  @JsonKey(ignore: true)
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith;
}
