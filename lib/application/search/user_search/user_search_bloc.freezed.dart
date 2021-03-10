// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSearchEventTearOff {
  const _$UserSearchEventTearOff();

// ignore: unused_element
  _SearchUsernameChanged searchUsernameChanged(String username) {
    return _SearchUsernameChanged(
      username,
    );
  }

// ignore: unused_element
  _DeleteSearchPressed deleteSearchPressed() {
    return const _DeleteSearchPressed();
  }

// ignore: unused_element
  _NextSearchResultPageCalled nextSearchResultPageCalled() {
    return const _NextSearchResultPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchEvent = _$UserSearchEventTearOff();

/// @nodoc
mixin _$UserSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchUsernameChanged(String username),
    @required TResult deleteSearchPressed(),
    @required TResult nextSearchResultPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchUsernameChanged(String username),
    TResult deleteSearchPressed(),
    TResult nextSearchResultPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchUsernameChanged(_SearchUsernameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required
        TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchUsernameChanged(_SearchUsernameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserSearchEventCopyWith<$Res> {
  factory $UserSearchEventCopyWith(
          UserSearchEvent value, $Res Function(UserSearchEvent) then) =
      _$UserSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSearchEventCopyWithImpl<$Res>
    implements $UserSearchEventCopyWith<$Res> {
  _$UserSearchEventCopyWithImpl(this._value, this._then);

  final UserSearchEvent _value;
  // ignore: unused_field
  final $Res Function(UserSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchUsernameChangedCopyWith<$Res> {
  factory _$SearchUsernameChangedCopyWith(_SearchUsernameChanged value,
          $Res Function(_SearchUsernameChanged) then) =
      __$SearchUsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$SearchUsernameChangedCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res>
    implements _$SearchUsernameChangedCopyWith<$Res> {
  __$SearchUsernameChangedCopyWithImpl(_SearchUsernameChanged _value,
      $Res Function(_SearchUsernameChanged) _then)
      : super(_value, (v) => _then(v as _SearchUsernameChanged));

  @override
  _SearchUsernameChanged get _value => super._value as _SearchUsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_SearchUsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$_SearchUsernameChanged implements _SearchUsernameChanged {
  const _$_SearchUsernameChanged(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'UserSearchEvent.searchUsernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchUsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$SearchUsernameChangedCopyWith<_SearchUsernameChanged> get copyWith =>
      __$SearchUsernameChangedCopyWithImpl<_SearchUsernameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchUsernameChanged(String username),
    @required TResult deleteSearchPressed(),
    @required TResult nextSearchResultPageCalled(),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return searchUsernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchUsernameChanged(String username),
    TResult deleteSearchPressed(),
    TResult nextSearchResultPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchUsernameChanged != null) {
      return searchUsernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchUsernameChanged(_SearchUsernameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required
        TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return searchUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchUsernameChanged(_SearchUsernameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchUsernameChanged != null) {
      return searchUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchUsernameChanged implements UserSearchEvent {
  const factory _SearchUsernameChanged(String username) =
      _$_SearchUsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$SearchUsernameChangedCopyWith<_SearchUsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$DeleteSearchPressedCopyWith<$Res> {
  factory _$DeleteSearchPressedCopyWith(_DeleteSearchPressed value,
          $Res Function(_DeleteSearchPressed) then) =
      __$DeleteSearchPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSearchPressedCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res>
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
    return 'UserSearchEvent.deleteSearchPressed()';
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
    @required TResult searchUsernameChanged(String username),
    @required TResult deleteSearchPressed(),
    @required TResult nextSearchResultPageCalled(),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchUsernameChanged(String username),
    TResult deleteSearchPressed(),
    TResult nextSearchResultPageCalled(),
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
    @required TResult searchUsernameChanged(_SearchUsernameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required
        TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchUsernameChanged(_SearchUsernameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSearchPressed implements UserSearchEvent {
  const factory _DeleteSearchPressed() = _$_DeleteSearchPressed;
}

/// @nodoc
abstract class _$NextSearchResultPageCalledCopyWith<$Res> {
  factory _$NextSearchResultPageCalledCopyWith(
          _NextSearchResultPageCalled value,
          $Res Function(_NextSearchResultPageCalled) then) =
      __$NextSearchResultPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextSearchResultPageCalledCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res>
    implements _$NextSearchResultPageCalledCopyWith<$Res> {
  __$NextSearchResultPageCalledCopyWithImpl(_NextSearchResultPageCalled _value,
      $Res Function(_NextSearchResultPageCalled) _then)
      : super(_value, (v) => _then(v as _NextSearchResultPageCalled));

  @override
  _NextSearchResultPageCalled get _value =>
      super._value as _NextSearchResultPageCalled;
}

/// @nodoc
class _$_NextSearchResultPageCalled implements _NextSearchResultPageCalled {
  const _$_NextSearchResultPageCalled();

  @override
  String toString() {
    return 'UserSearchEvent.nextSearchResultPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextSearchResultPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchUsernameChanged(String username),
    @required TResult deleteSearchPressed(),
    @required TResult nextSearchResultPageCalled(),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return nextSearchResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchUsernameChanged(String username),
    TResult deleteSearchPressed(),
    TResult nextSearchResultPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextSearchResultPageCalled != null) {
      return nextSearchResultPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchUsernameChanged(_SearchUsernameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required
        TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
  }) {
    assert(searchUsernameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextSearchResultPageCalled != null);
    return nextSearchResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchUsernameChanged(_SearchUsernameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextSearchResultPageCalled(_NextSearchResultPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextSearchResultPageCalled != null) {
      return nextSearchResultPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextSearchResultPageCalled implements UserSearchEvent {
  const factory _NextSearchResultPageCalled() = _$_NextSearchResultPageCalled;
}

/// @nodoc
class _$UserSearchStateTearOff {
  const _$UserSearchStateTearOff();

// ignore: unused_element
  _UserSearchState call(
      {@required String usernameSearchTerm,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required bool isThereMoreUserSearchPageToLoad,
      @required List<OurUser> userSearchResults,
      @required int nextPage}) {
    return _UserSearchState(
      usernameSearchTerm: usernameSearchTerm,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      isThereMoreUserSearchPageToLoad: isThereMoreUserSearchPageToLoad,
      userSearchResults: userSearchResults,
      nextPage: nextPage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchState = _$UserSearchStateTearOff();

/// @nodoc
mixin _$UserSearchState {
  String get usernameSearchTerm;
  String get errorMessage;
  bool get isSearching;
  bool get isSearchCompleted;
  bool get isThereMoreUserSearchPageToLoad;
  List<OurUser> get userSearchResults;
  int get nextPage;

  @JsonKey(ignore: true)
  $UserSearchStateCopyWith<UserSearchState> get copyWith;
}

/// @nodoc
abstract class $UserSearchStateCopyWith<$Res> {
  factory $UserSearchStateCopyWith(
          UserSearchState value, $Res Function(UserSearchState) then) =
      _$UserSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String usernameSearchTerm,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      bool isThereMoreUserSearchPageToLoad,
      List<OurUser> userSearchResults,
      int nextPage});
}

/// @nodoc
class _$UserSearchStateCopyWithImpl<$Res>
    implements $UserSearchStateCopyWith<$Res> {
  _$UserSearchStateCopyWithImpl(this._value, this._then);

  final UserSearchState _value;
  // ignore: unused_field
  final $Res Function(UserSearchState) _then;

  @override
  $Res call({
    Object usernameSearchTerm = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object isThereMoreUserSearchPageToLoad = freezed,
    Object userSearchResults = freezed,
    Object nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      usernameSearchTerm: usernameSearchTerm == freezed
          ? _value.usernameSearchTerm
          : usernameSearchTerm as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      isThereMoreUserSearchPageToLoad:
          isThereMoreUserSearchPageToLoad == freezed
              ? _value.isThereMoreUserSearchPageToLoad
              : isThereMoreUserSearchPageToLoad as bool,
      userSearchResults: userSearchResults == freezed
          ? _value.userSearchResults
          : userSearchResults as List<OurUser>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
    ));
  }
}

/// @nodoc
abstract class _$UserSearchStateCopyWith<$Res>
    implements $UserSearchStateCopyWith<$Res> {
  factory _$UserSearchStateCopyWith(
          _UserSearchState value, $Res Function(_UserSearchState) then) =
      __$UserSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String usernameSearchTerm,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      bool isThereMoreUserSearchPageToLoad,
      List<OurUser> userSearchResults,
      int nextPage});
}

/// @nodoc
class __$UserSearchStateCopyWithImpl<$Res>
    extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$UserSearchStateCopyWith<$Res> {
  __$UserSearchStateCopyWithImpl(
      _UserSearchState _value, $Res Function(_UserSearchState) _then)
      : super(_value, (v) => _then(v as _UserSearchState));

  @override
  _UserSearchState get _value => super._value as _UserSearchState;

  @override
  $Res call({
    Object usernameSearchTerm = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object isThereMoreUserSearchPageToLoad = freezed,
    Object userSearchResults = freezed,
    Object nextPage = freezed,
  }) {
    return _then(_UserSearchState(
      usernameSearchTerm: usernameSearchTerm == freezed
          ? _value.usernameSearchTerm
          : usernameSearchTerm as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      isThereMoreUserSearchPageToLoad:
          isThereMoreUserSearchPageToLoad == freezed
              ? _value.isThereMoreUserSearchPageToLoad
              : isThereMoreUserSearchPageToLoad as bool,
      userSearchResults: userSearchResults == freezed
          ? _value.userSearchResults
          : userSearchResults as List<OurUser>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
    ));
  }
}

/// @nodoc
class _$_UserSearchState implements _UserSearchState {
  const _$_UserSearchState(
      {@required this.usernameSearchTerm,
      @required this.errorMessage,
      @required this.isSearching,
      @required this.isSearchCompleted,
      @required this.isThereMoreUserSearchPageToLoad,
      @required this.userSearchResults,
      @required this.nextPage})
      : assert(usernameSearchTerm != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(isThereMoreUserSearchPageToLoad != null),
        assert(userSearchResults != null),
        assert(nextPage != null);

  @override
  final String usernameSearchTerm;
  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final bool isSearchCompleted;
  @override
  final bool isThereMoreUserSearchPageToLoad;
  @override
  final List<OurUser> userSearchResults;
  @override
  final int nextPage;

  @override
  String toString() {
    return 'UserSearchState(usernameSearchTerm: $usernameSearchTerm, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, isThereMoreUserSearchPageToLoad: $isThereMoreUserSearchPageToLoad, userSearchResults: $userSearchResults, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSearchState &&
            (identical(other.usernameSearchTerm, usernameSearchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.usernameSearchTerm, usernameSearchTerm)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isSearchCompleted, isSearchCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchCompleted, isSearchCompleted)) &&
            (identical(other.isThereMoreUserSearchPageToLoad,
                    isThereMoreUserSearchPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreUserSearchPageToLoad,
                    isThereMoreUserSearchPageToLoad)) &&
            (identical(other.userSearchResults, userSearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.userSearchResults, userSearchResults)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameSearchTerm) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(isThereMoreUserSearchPageToLoad) ^
      const DeepCollectionEquality().hash(userSearchResults) ^
      const DeepCollectionEquality().hash(nextPage);

  @JsonKey(ignore: true)
  @override
  _$UserSearchStateCopyWith<_UserSearchState> get copyWith =>
      __$UserSearchStateCopyWithImpl<_UserSearchState>(this, _$identity);
}

abstract class _UserSearchState implements UserSearchState {
  const factory _UserSearchState(
      {@required String usernameSearchTerm,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required bool isThereMoreUserSearchPageToLoad,
      @required List<OurUser> userSearchResults,
      @required int nextPage}) = _$_UserSearchState;

  @override
  String get usernameSearchTerm;
  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  bool get isSearchCompleted;
  @override
  bool get isThereMoreUserSearchPageToLoad;
  @override
  List<OurUser> get userSearchResults;
  @override
  int get nextPage;
  @override
  @JsonKey(ignore: true)
  _$UserSearchStateCopyWith<_UserSearchState> get copyWith;
}
