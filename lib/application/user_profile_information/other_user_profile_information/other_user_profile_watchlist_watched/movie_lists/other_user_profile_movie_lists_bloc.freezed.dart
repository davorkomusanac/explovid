// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'other_user_profile_movie_lists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OtherUserProfileMovieListsEventTearOff {
  const _$OtherUserProfileMovieListsEventTearOff();

// ignore: unused_element
  _LoadMovieToListInitial loadMovieToListInitial({String userUid}) {
    return _LoadMovieToListInitial(
      userUid: userUid,
    );
  }

// ignore: unused_element
  _NextMovieWatchlistPageCalled nextMovieWatchlistPageCalled({String userUid}) {
    return _NextMovieWatchlistPageCalled(
      userUid: userUid,
    );
  }

// ignore: unused_element
  _NextMovieWatchedPageCalled nextMovieWatchedPageCalled({String userUid}) {
    return _NextMovieWatchedPageCalled(
      userUid: userUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherUserProfileMovieListsEvent =
    _$OtherUserProfileMovieListsEventTearOff();

/// @nodoc
mixin _$OtherUserProfileMovieListsEvent {
  String get userUid;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(String userUid),
    @required TResult nextMovieWatchlistPageCalled(String userUid),
    @required TResult nextMovieWatchedPageCalled(String userUid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(String userUid),
    TResult nextMovieWatchlistPageCalled(String userUid),
    TResult nextMovieWatchedPageCalled(String userUid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $OtherUserProfileMovieListsEventCopyWith<OtherUserProfileMovieListsEvent>
      get copyWith;
}

/// @nodoc
abstract class $OtherUserProfileMovieListsEventCopyWith<$Res> {
  factory $OtherUserProfileMovieListsEventCopyWith(
          OtherUserProfileMovieListsEvent value,
          $Res Function(OtherUserProfileMovieListsEvent) then) =
      _$OtherUserProfileMovieListsEventCopyWithImpl<$Res>;
  $Res call({String userUid});
}

/// @nodoc
class _$OtherUserProfileMovieListsEventCopyWithImpl<$Res>
    implements $OtherUserProfileMovieListsEventCopyWith<$Res> {
  _$OtherUserProfileMovieListsEventCopyWithImpl(this._value, this._then);

  final OtherUserProfileMovieListsEvent _value;
  // ignore: unused_field
  final $Res Function(OtherUserProfileMovieListsEvent) _then;

  @override
  $Res call({
    Object userUid = freezed,
  }) {
    return _then(_value.copyWith(
      userUid: userUid == freezed ? _value.userUid : userUid as String,
    ));
  }
}

/// @nodoc
abstract class _$LoadMovieToListInitialCopyWith<$Res>
    implements $OtherUserProfileMovieListsEventCopyWith<$Res> {
  factory _$LoadMovieToListInitialCopyWith(_LoadMovieToListInitial value,
          $Res Function(_LoadMovieToListInitial) then) =
      __$LoadMovieToListInitialCopyWithImpl<$Res>;
  @override
  $Res call({String userUid});
}

/// @nodoc
class __$LoadMovieToListInitialCopyWithImpl<$Res>
    extends _$OtherUserProfileMovieListsEventCopyWithImpl<$Res>
    implements _$LoadMovieToListInitialCopyWith<$Res> {
  __$LoadMovieToListInitialCopyWithImpl(_LoadMovieToListInitial _value,
      $Res Function(_LoadMovieToListInitial) _then)
      : super(_value, (v) => _then(v as _LoadMovieToListInitial));

  @override
  _LoadMovieToListInitial get _value => super._value as _LoadMovieToListInitial;

  @override
  $Res call({
    Object userUid = freezed,
  }) {
    return _then(_LoadMovieToListInitial(
      userUid: userUid == freezed ? _value.userUid : userUid as String,
    ));
  }
}

/// @nodoc
class _$_LoadMovieToListInitial implements _LoadMovieToListInitial {
  const _$_LoadMovieToListInitial({this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'OtherUserProfileMovieListsEvent.loadMovieToListInitial(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMovieToListInitial &&
            (identical(other.userUid, userUid) ||
                const DeepCollectionEquality().equals(other.userUid, userUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userUid);

  @JsonKey(ignore: true)
  @override
  _$LoadMovieToListInitialCopyWith<_LoadMovieToListInitial> get copyWith =>
      __$LoadMovieToListInitialCopyWithImpl<_LoadMovieToListInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(String userUid),
    @required TResult nextMovieWatchlistPageCalled(String userUid),
    @required TResult nextMovieWatchedPageCalled(String userUid),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return loadMovieToListInitial(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(String userUid),
    TResult nextMovieWatchlistPageCalled(String userUid),
    TResult nextMovieWatchedPageCalled(String userUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadMovieToListInitial != null) {
      return loadMovieToListInitial(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return loadMovieToListInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadMovieToListInitial != null) {
      return loadMovieToListInitial(this);
    }
    return orElse();
  }
}

abstract class _LoadMovieToListInitial
    implements OtherUserProfileMovieListsEvent {
  const factory _LoadMovieToListInitial({String userUid}) =
      _$_LoadMovieToListInitial;

  @override
  String get userUid;
  @override
  @JsonKey(ignore: true)
  _$LoadMovieToListInitialCopyWith<_LoadMovieToListInitial> get copyWith;
}

/// @nodoc
abstract class _$NextMovieWatchlistPageCalledCopyWith<$Res>
    implements $OtherUserProfileMovieListsEventCopyWith<$Res> {
  factory _$NextMovieWatchlistPageCalledCopyWith(
          _NextMovieWatchlistPageCalled value,
          $Res Function(_NextMovieWatchlistPageCalled) then) =
      __$NextMovieWatchlistPageCalledCopyWithImpl<$Res>;
  @override
  $Res call({String userUid});
}

/// @nodoc
class __$NextMovieWatchlistPageCalledCopyWithImpl<$Res>
    extends _$OtherUserProfileMovieListsEventCopyWithImpl<$Res>
    implements _$NextMovieWatchlistPageCalledCopyWith<$Res> {
  __$NextMovieWatchlistPageCalledCopyWithImpl(
      _NextMovieWatchlistPageCalled _value,
      $Res Function(_NextMovieWatchlistPageCalled) _then)
      : super(_value, (v) => _then(v as _NextMovieWatchlistPageCalled));

  @override
  _NextMovieWatchlistPageCalled get _value =>
      super._value as _NextMovieWatchlistPageCalled;

  @override
  $Res call({
    Object userUid = freezed,
  }) {
    return _then(_NextMovieWatchlistPageCalled(
      userUid: userUid == freezed ? _value.userUid : userUid as String,
    ));
  }
}

/// @nodoc
class _$_NextMovieWatchlistPageCalled implements _NextMovieWatchlistPageCalled {
  const _$_NextMovieWatchlistPageCalled({this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'OtherUserProfileMovieListsEvent.nextMovieWatchlistPageCalled(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextMovieWatchlistPageCalled &&
            (identical(other.userUid, userUid) ||
                const DeepCollectionEquality().equals(other.userUid, userUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userUid);

  @JsonKey(ignore: true)
  @override
  _$NextMovieWatchlistPageCalledCopyWith<_NextMovieWatchlistPageCalled>
      get copyWith => __$NextMovieWatchlistPageCalledCopyWithImpl<
          _NextMovieWatchlistPageCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(String userUid),
    @required TResult nextMovieWatchlistPageCalled(String userUid),
    @required TResult nextMovieWatchedPageCalled(String userUid),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchlistPageCalled(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(String userUid),
    TResult nextMovieWatchlistPageCalled(String userUid),
    TResult nextMovieWatchedPageCalled(String userUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchlistPageCalled != null) {
      return nextMovieWatchlistPageCalled(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchlistPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchlistPageCalled != null) {
      return nextMovieWatchlistPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextMovieWatchlistPageCalled
    implements OtherUserProfileMovieListsEvent {
  const factory _NextMovieWatchlistPageCalled({String userUid}) =
      _$_NextMovieWatchlistPageCalled;

  @override
  String get userUid;
  @override
  @JsonKey(ignore: true)
  _$NextMovieWatchlistPageCalledCopyWith<_NextMovieWatchlistPageCalled>
      get copyWith;
}

/// @nodoc
abstract class _$NextMovieWatchedPageCalledCopyWith<$Res>
    implements $OtherUserProfileMovieListsEventCopyWith<$Res> {
  factory _$NextMovieWatchedPageCalledCopyWith(
          _NextMovieWatchedPageCalled value,
          $Res Function(_NextMovieWatchedPageCalled) then) =
      __$NextMovieWatchedPageCalledCopyWithImpl<$Res>;
  @override
  $Res call({String userUid});
}

/// @nodoc
class __$NextMovieWatchedPageCalledCopyWithImpl<$Res>
    extends _$OtherUserProfileMovieListsEventCopyWithImpl<$Res>
    implements _$NextMovieWatchedPageCalledCopyWith<$Res> {
  __$NextMovieWatchedPageCalledCopyWithImpl(_NextMovieWatchedPageCalled _value,
      $Res Function(_NextMovieWatchedPageCalled) _then)
      : super(_value, (v) => _then(v as _NextMovieWatchedPageCalled));

  @override
  _NextMovieWatchedPageCalled get _value =>
      super._value as _NextMovieWatchedPageCalled;

  @override
  $Res call({
    Object userUid = freezed,
  }) {
    return _then(_NextMovieWatchedPageCalled(
      userUid: userUid == freezed ? _value.userUid : userUid as String,
    ));
  }
}

/// @nodoc
class _$_NextMovieWatchedPageCalled implements _NextMovieWatchedPageCalled {
  const _$_NextMovieWatchedPageCalled({this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'OtherUserProfileMovieListsEvent.nextMovieWatchedPageCalled(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextMovieWatchedPageCalled &&
            (identical(other.userUid, userUid) ||
                const DeepCollectionEquality().equals(other.userUid, userUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userUid);

  @JsonKey(ignore: true)
  @override
  _$NextMovieWatchedPageCalledCopyWith<_NextMovieWatchedPageCalled>
      get copyWith => __$NextMovieWatchedPageCalledCopyWithImpl<
          _NextMovieWatchedPageCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(String userUid),
    @required TResult nextMovieWatchlistPageCalled(String userUid),
    @required TResult nextMovieWatchedPageCalled(String userUid),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchedPageCalled(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(String userUid),
    TResult nextMovieWatchlistPageCalled(String userUid),
    TResult nextMovieWatchedPageCalled(String userUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchedPageCalled != null) {
      return nextMovieWatchedPageCalled(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchedPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchedPageCalled != null) {
      return nextMovieWatchedPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextMovieWatchedPageCalled
    implements OtherUserProfileMovieListsEvent {
  const factory _NextMovieWatchedPageCalled({String userUid}) =
      _$_NextMovieWatchedPageCalled;

  @override
  String get userUid;
  @override
  @JsonKey(ignore: true)
  _$NextMovieWatchedPageCalledCopyWith<_NextMovieWatchedPageCalled>
      get copyWith;
}

/// @nodoc
class _$OtherUserProfileMovieListsStateTearOff {
  const _$OtherUserProfileMovieListsStateTearOff();

// ignore: unused_element
  _OtherUserProfileMovieListsState call(
      {@required bool isLoading,
      @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
      @required List<FirestoreMovieWatchedDetails> movieWatched,
      @required int nextPage,
      @required bool isThereMoreMovieWatchlistPageToLoad,
      @required bool isThereMoreMovieWatchedPageToLoad}) {
    return _OtherUserProfileMovieListsState(
      isLoading: isLoading,
      movieWatchlist: movieWatchlist,
      movieWatched: movieWatched,
      nextPage: nextPage,
      isThereMoreMovieWatchlistPageToLoad: isThereMoreMovieWatchlistPageToLoad,
      isThereMoreMovieWatchedPageToLoad: isThereMoreMovieWatchedPageToLoad,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherUserProfileMovieListsState =
    _$OtherUserProfileMovieListsStateTearOff();

/// @nodoc
mixin _$OtherUserProfileMovieListsState {
  bool get isLoading;
  List<FirestoreMovieWatchlistDetails> get movieWatchlist;
  List<FirestoreMovieWatchedDetails> get movieWatched;
  int get nextPage;
  bool get isThereMoreMovieWatchlistPageToLoad;
  bool get isThereMoreMovieWatchedPageToLoad;

  @JsonKey(ignore: true)
  $OtherUserProfileMovieListsStateCopyWith<OtherUserProfileMovieListsState>
      get copyWith;
}

/// @nodoc
abstract class $OtherUserProfileMovieListsStateCopyWith<$Res> {
  factory $OtherUserProfileMovieListsStateCopyWith(
          OtherUserProfileMovieListsState value,
          $Res Function(OtherUserProfileMovieListsState) then) =
      _$OtherUserProfileMovieListsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<FirestoreMovieWatchlistDetails> movieWatchlist,
      List<FirestoreMovieWatchedDetails> movieWatched,
      int nextPage,
      bool isThereMoreMovieWatchlistPageToLoad,
      bool isThereMoreMovieWatchedPageToLoad});
}

/// @nodoc
class _$OtherUserProfileMovieListsStateCopyWithImpl<$Res>
    implements $OtherUserProfileMovieListsStateCopyWith<$Res> {
  _$OtherUserProfileMovieListsStateCopyWithImpl(this._value, this._then);

  final OtherUserProfileMovieListsState _value;
  // ignore: unused_field
  final $Res Function(OtherUserProfileMovieListsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object movieWatchlist = freezed,
    Object movieWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreMovieWatchlistPageToLoad = freezed,
    Object isThereMoreMovieWatchedPageToLoad = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      movieWatchlist: movieWatchlist == freezed
          ? _value.movieWatchlist
          : movieWatchlist as List<FirestoreMovieWatchlistDetails>,
      movieWatched: movieWatched == freezed
          ? _value.movieWatched
          : movieWatched as List<FirestoreMovieWatchedDetails>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreMovieWatchlistPageToLoad:
          isThereMoreMovieWatchlistPageToLoad == freezed
              ? _value.isThereMoreMovieWatchlistPageToLoad
              : isThereMoreMovieWatchlistPageToLoad as bool,
      isThereMoreMovieWatchedPageToLoad:
          isThereMoreMovieWatchedPageToLoad == freezed
              ? _value.isThereMoreMovieWatchedPageToLoad
              : isThereMoreMovieWatchedPageToLoad as bool,
    ));
  }
}

/// @nodoc
abstract class _$OtherUserProfileMovieListsStateCopyWith<$Res>
    implements $OtherUserProfileMovieListsStateCopyWith<$Res> {
  factory _$OtherUserProfileMovieListsStateCopyWith(
          _OtherUserProfileMovieListsState value,
          $Res Function(_OtherUserProfileMovieListsState) then) =
      __$OtherUserProfileMovieListsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<FirestoreMovieWatchlistDetails> movieWatchlist,
      List<FirestoreMovieWatchedDetails> movieWatched,
      int nextPage,
      bool isThereMoreMovieWatchlistPageToLoad,
      bool isThereMoreMovieWatchedPageToLoad});
}

/// @nodoc
class __$OtherUserProfileMovieListsStateCopyWithImpl<$Res>
    extends _$OtherUserProfileMovieListsStateCopyWithImpl<$Res>
    implements _$OtherUserProfileMovieListsStateCopyWith<$Res> {
  __$OtherUserProfileMovieListsStateCopyWithImpl(
      _OtherUserProfileMovieListsState _value,
      $Res Function(_OtherUserProfileMovieListsState) _then)
      : super(_value, (v) => _then(v as _OtherUserProfileMovieListsState));

  @override
  _OtherUserProfileMovieListsState get _value =>
      super._value as _OtherUserProfileMovieListsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object movieWatchlist = freezed,
    Object movieWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreMovieWatchlistPageToLoad = freezed,
    Object isThereMoreMovieWatchedPageToLoad = freezed,
  }) {
    return _then(_OtherUserProfileMovieListsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      movieWatchlist: movieWatchlist == freezed
          ? _value.movieWatchlist
          : movieWatchlist as List<FirestoreMovieWatchlistDetails>,
      movieWatched: movieWatched == freezed
          ? _value.movieWatched
          : movieWatched as List<FirestoreMovieWatchedDetails>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreMovieWatchlistPageToLoad:
          isThereMoreMovieWatchlistPageToLoad == freezed
              ? _value.isThereMoreMovieWatchlistPageToLoad
              : isThereMoreMovieWatchlistPageToLoad as bool,
      isThereMoreMovieWatchedPageToLoad:
          isThereMoreMovieWatchedPageToLoad == freezed
              ? _value.isThereMoreMovieWatchedPageToLoad
              : isThereMoreMovieWatchedPageToLoad as bool,
    ));
  }
}

/// @nodoc
class _$_OtherUserProfileMovieListsState
    implements _OtherUserProfileMovieListsState {
  const _$_OtherUserProfileMovieListsState(
      {@required this.isLoading,
      @required this.movieWatchlist,
      @required this.movieWatched,
      @required this.nextPage,
      @required this.isThereMoreMovieWatchlistPageToLoad,
      @required this.isThereMoreMovieWatchedPageToLoad})
      : assert(isLoading != null),
        assert(movieWatchlist != null),
        assert(movieWatched != null),
        assert(nextPage != null),
        assert(isThereMoreMovieWatchlistPageToLoad != null),
        assert(isThereMoreMovieWatchedPageToLoad != null);

  @override
  final bool isLoading;
  @override
  final List<FirestoreMovieWatchlistDetails> movieWatchlist;
  @override
  final List<FirestoreMovieWatchedDetails> movieWatched;
  @override
  final int nextPage;
  @override
  final bool isThereMoreMovieWatchlistPageToLoad;
  @override
  final bool isThereMoreMovieWatchedPageToLoad;

  @override
  String toString() {
    return 'OtherUserProfileMovieListsState(isLoading: $isLoading, movieWatchlist: $movieWatchlist, movieWatched: $movieWatched, nextPage: $nextPage, isThereMoreMovieWatchlistPageToLoad: $isThereMoreMovieWatchlistPageToLoad, isThereMoreMovieWatchedPageToLoad: $isThereMoreMovieWatchedPageToLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherUserProfileMovieListsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.movieWatchlist, movieWatchlist) ||
                const DeepCollectionEquality()
                    .equals(other.movieWatchlist, movieWatchlist)) &&
            (identical(other.movieWatched, movieWatched) ||
                const DeepCollectionEquality()
                    .equals(other.movieWatched, movieWatched)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(other.isThereMoreMovieWatchlistPageToLoad,
                    isThereMoreMovieWatchlistPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreMovieWatchlistPageToLoad,
                    isThereMoreMovieWatchlistPageToLoad)) &&
            (identical(other.isThereMoreMovieWatchedPageToLoad,
                    isThereMoreMovieWatchedPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreMovieWatchedPageToLoad,
                    isThereMoreMovieWatchedPageToLoad)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(movieWatchlist) ^
      const DeepCollectionEquality().hash(movieWatched) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(isThereMoreMovieWatchlistPageToLoad) ^
      const DeepCollectionEquality().hash(isThereMoreMovieWatchedPageToLoad);

  @JsonKey(ignore: true)
  @override
  _$OtherUserProfileMovieListsStateCopyWith<_OtherUserProfileMovieListsState>
      get copyWith => __$OtherUserProfileMovieListsStateCopyWithImpl<
          _OtherUserProfileMovieListsState>(this, _$identity);
}

abstract class _OtherUserProfileMovieListsState
    implements OtherUserProfileMovieListsState {
  const factory _OtherUserProfileMovieListsState(
          {@required bool isLoading,
          @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
          @required List<FirestoreMovieWatchedDetails> movieWatched,
          @required int nextPage,
          @required bool isThereMoreMovieWatchlistPageToLoad,
          @required bool isThereMoreMovieWatchedPageToLoad}) =
      _$_OtherUserProfileMovieListsState;

  @override
  bool get isLoading;
  @override
  List<FirestoreMovieWatchlistDetails> get movieWatchlist;
  @override
  List<FirestoreMovieWatchedDetails> get movieWatched;
  @override
  int get nextPage;
  @override
  bool get isThereMoreMovieWatchlistPageToLoad;
  @override
  bool get isThereMoreMovieWatchedPageToLoad;
  @override
  @JsonKey(ignore: true)
  _$OtherUserProfileMovieListsStateCopyWith<_OtherUserProfileMovieListsState>
      get copyWith;
}
