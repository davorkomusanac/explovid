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
    @required TResult nextResultPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
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

  @override
  _$SearchTitleChangedCopyWith<_SearchTitleChanged> get copyWith =>
      __$SearchTitleChangedCopyWithImpl<_SearchTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return searchTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
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
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return searchTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
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
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
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
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
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
    @required TResult nextResultPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
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
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
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
      @required bool isControllerEmpty,
      @required int searchPageNum}) {
    return _MovieSearchState(
      title: title,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      movieSearchResults: movieSearchResults,
      isControllerEmpty: isControllerEmpty,
      searchPageNum: searchPageNum,
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
  bool get isControllerEmpty;
  int get searchPageNum;

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
      bool isControllerEmpty,
      int searchPageNum});
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
    Object isControllerEmpty = freezed,
    Object searchPageNum = freezed,
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
      isControllerEmpty: isControllerEmpty == freezed
          ? _value.isControllerEmpty
          : isControllerEmpty as bool,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
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
      bool isControllerEmpty,
      int searchPageNum});
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
    Object isControllerEmpty = freezed,
    Object searchPageNum = freezed,
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
      isControllerEmpty: isControllerEmpty == freezed
          ? _value.isControllerEmpty
          : isControllerEmpty as bool,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
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
      @required this.isControllerEmpty,
      @required this.searchPageNum})
      : assert(title != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(movieSearchResults != null),
        assert(isControllerEmpty != null),
        assert(searchPageNum != null);

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
  final bool isControllerEmpty;
  @override
  final int searchPageNum;

  @override
  String toString() {
    return 'MovieSearchState(title: $title, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, movieSearchResults: $movieSearchResults, isControllerEmpty: $isControllerEmpty, searchPageNum: $searchPageNum)';
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
            (identical(other.isControllerEmpty, isControllerEmpty) ||
                const DeepCollectionEquality()
                    .equals(other.isControllerEmpty, isControllerEmpty)) &&
            (identical(other.searchPageNum, searchPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.searchPageNum, searchPageNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(movieSearchResults) ^
      const DeepCollectionEquality().hash(isControllerEmpty) ^
      const DeepCollectionEquality().hash(searchPageNum);

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
      @required bool isControllerEmpty,
      @required int searchPageNum}) = _$_MovieSearchState;

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
  bool get isControllerEmpty;
  @override
  int get searchPageNum;
  @override
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith;
}
