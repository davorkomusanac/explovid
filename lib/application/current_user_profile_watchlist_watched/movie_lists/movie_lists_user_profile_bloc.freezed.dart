// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_lists_user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieListsUserProfileEventTearOff {
  const _$MovieListsUserProfileEventTearOff();

// ignore: unused_element
  _LoadMovieToListInitial loadMovieToListInitial() {
    return const _LoadMovieToListInitial();
  }

// ignore: unused_element
  _MovieWatchlistUpdated movieWatchlistUpdated(
      List<FirestoreMovieWatchlistDetails> moviesWatchlist) {
    return _MovieWatchlistUpdated(
      moviesWatchlist,
    );
  }

// ignore: unused_element
  _MovieWatchedUpdated movieWatchedUpdated(
      List<FirestoreMovieWatchedDetails> moviesWatched) {
    return _MovieWatchedUpdated(
      moviesWatched,
    );
  }

// ignore: unused_element
  _AddMovieToWatchlistPressed addMovieToWatchlistPressed(
      MovieDetails movieDetails) {
    return _AddMovieToWatchlistPressed(
      movieDetails,
    );
  }

// ignore: unused_element
  _RemoveMovieFromWatchlistPressed removeMovieFromWatchlistPressed(
      MovieDetails movieDetails) {
    return _RemoveMovieFromWatchlistPressed(
      movieDetails,
    );
  }

// ignore: unused_element
  _AddMovieToWatchedPressed addMovieToWatchedPressed(
      MovieDetails movieDetails, String review, num rating, bool isSpoiler) {
    return _AddMovieToWatchedPressed(
      movieDetails,
      review,
      rating,
      isSpoiler,
    );
  }

// ignore: unused_element
  _RemoveMovieFromWatchedPressed removeMovieFromWatchedPressed(
      MovieDetails movieDetails) {
    return _RemoveMovieFromWatchedPressed(
      movieDetails,
    );
  }

// ignore: unused_element
  _NextMovieWatchlistPageCalled nextMovieWatchlistPageCalled() {
    return const _NextMovieWatchlistPageCalled();
  }

// ignore: unused_element
  _NextMovieWatchedPageCalled nextMovieWatchedPageCalled() {
    return const _NextMovieWatchedPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $MovieListsUserProfileEvent = _$MovieListsUserProfileEventTearOff();

/// @nodoc
mixin _$MovieListsUserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieListsUserProfileEventCopyWith<$Res> {
  factory $MovieListsUserProfileEventCopyWith(MovieListsUserProfileEvent value,
          $Res Function(MovieListsUserProfileEvent) then) =
      _$MovieListsUserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements $MovieListsUserProfileEventCopyWith<$Res> {
  _$MovieListsUserProfileEventCopyWithImpl(this._value, this._then);

  final MovieListsUserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(MovieListsUserProfileEvent) _then;
}

/// @nodoc
abstract class _$LoadMovieToListInitialCopyWith<$Res> {
  factory _$LoadMovieToListInitialCopyWith(_LoadMovieToListInitial value,
          $Res Function(_LoadMovieToListInitial) then) =
      __$LoadMovieToListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMovieToListInitialCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$LoadMovieToListInitialCopyWith<$Res> {
  __$LoadMovieToListInitialCopyWithImpl(_LoadMovieToListInitial _value,
      $Res Function(_LoadMovieToListInitial) _then)
      : super(_value, (v) => _then(v as _LoadMovieToListInitial));

  @override
  _LoadMovieToListInitial get _value => super._value as _LoadMovieToListInitial;
}

/// @nodoc
class _$_LoadMovieToListInitial implements _LoadMovieToListInitial {
  const _$_LoadMovieToListInitial();

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.loadMovieToListInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadMovieToListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return loadMovieToListInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadMovieToListInitial != null) {
      return loadMovieToListInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return loadMovieToListInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
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

abstract class _LoadMovieToListInitial implements MovieListsUserProfileEvent {
  const factory _LoadMovieToListInitial() = _$_LoadMovieToListInitial;
}

/// @nodoc
abstract class _$MovieWatchlistUpdatedCopyWith<$Res> {
  factory _$MovieWatchlistUpdatedCopyWith(_MovieWatchlistUpdated value,
          $Res Function(_MovieWatchlistUpdated) then) =
      __$MovieWatchlistUpdatedCopyWithImpl<$Res>;
  $Res call({List<FirestoreMovieWatchlistDetails> moviesWatchlist});
}

/// @nodoc
class __$MovieWatchlistUpdatedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$MovieWatchlistUpdatedCopyWith<$Res> {
  __$MovieWatchlistUpdatedCopyWithImpl(_MovieWatchlistUpdated _value,
      $Res Function(_MovieWatchlistUpdated) _then)
      : super(_value, (v) => _then(v as _MovieWatchlistUpdated));

  @override
  _MovieWatchlistUpdated get _value => super._value as _MovieWatchlistUpdated;

  @override
  $Res call({
    Object moviesWatchlist = freezed,
  }) {
    return _then(_MovieWatchlistUpdated(
      moviesWatchlist == freezed
          ? _value.moviesWatchlist
          : moviesWatchlist as List<FirestoreMovieWatchlistDetails>,
    ));
  }
}

/// @nodoc
class _$_MovieWatchlistUpdated implements _MovieWatchlistUpdated {
  const _$_MovieWatchlistUpdated(this.moviesWatchlist)
      : assert(moviesWatchlist != null);

  @override
  final List<FirestoreMovieWatchlistDetails> moviesWatchlist;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.movieWatchlistUpdated(moviesWatchlist: $moviesWatchlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieWatchlistUpdated &&
            (identical(other.moviesWatchlist, moviesWatchlist) ||
                const DeepCollectionEquality()
                    .equals(other.moviesWatchlist, moviesWatchlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moviesWatchlist);

  @JsonKey(ignore: true)
  @override
  _$MovieWatchlistUpdatedCopyWith<_MovieWatchlistUpdated> get copyWith =>
      __$MovieWatchlistUpdatedCopyWithImpl<_MovieWatchlistUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return movieWatchlistUpdated(moviesWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieWatchlistUpdated != null) {
      return movieWatchlistUpdated(moviesWatchlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return movieWatchlistUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieWatchlistUpdated != null) {
      return movieWatchlistUpdated(this);
    }
    return orElse();
  }
}

abstract class _MovieWatchlistUpdated implements MovieListsUserProfileEvent {
  const factory _MovieWatchlistUpdated(
          List<FirestoreMovieWatchlistDetails> moviesWatchlist) =
      _$_MovieWatchlistUpdated;

  List<FirestoreMovieWatchlistDetails> get moviesWatchlist;
  @JsonKey(ignore: true)
  _$MovieWatchlistUpdatedCopyWith<_MovieWatchlistUpdated> get copyWith;
}

/// @nodoc
abstract class _$MovieWatchedUpdatedCopyWith<$Res> {
  factory _$MovieWatchedUpdatedCopyWith(_MovieWatchedUpdated value,
          $Res Function(_MovieWatchedUpdated) then) =
      __$MovieWatchedUpdatedCopyWithImpl<$Res>;
  $Res call({List<FirestoreMovieWatchedDetails> moviesWatched});
}

/// @nodoc
class __$MovieWatchedUpdatedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$MovieWatchedUpdatedCopyWith<$Res> {
  __$MovieWatchedUpdatedCopyWithImpl(
      _MovieWatchedUpdated _value, $Res Function(_MovieWatchedUpdated) _then)
      : super(_value, (v) => _then(v as _MovieWatchedUpdated));

  @override
  _MovieWatchedUpdated get _value => super._value as _MovieWatchedUpdated;

  @override
  $Res call({
    Object moviesWatched = freezed,
  }) {
    return _then(_MovieWatchedUpdated(
      moviesWatched == freezed
          ? _value.moviesWatched
          : moviesWatched as List<FirestoreMovieWatchedDetails>,
    ));
  }
}

/// @nodoc
class _$_MovieWatchedUpdated implements _MovieWatchedUpdated {
  const _$_MovieWatchedUpdated(this.moviesWatched)
      : assert(moviesWatched != null);

  @override
  final List<FirestoreMovieWatchedDetails> moviesWatched;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.movieWatchedUpdated(moviesWatched: $moviesWatched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieWatchedUpdated &&
            (identical(other.moviesWatched, moviesWatched) ||
                const DeepCollectionEquality()
                    .equals(other.moviesWatched, moviesWatched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moviesWatched);

  @JsonKey(ignore: true)
  @override
  _$MovieWatchedUpdatedCopyWith<_MovieWatchedUpdated> get copyWith =>
      __$MovieWatchedUpdatedCopyWithImpl<_MovieWatchedUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return movieWatchedUpdated(moviesWatched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieWatchedUpdated != null) {
      return movieWatchedUpdated(moviesWatched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return movieWatchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieWatchedUpdated != null) {
      return movieWatchedUpdated(this);
    }
    return orElse();
  }
}

abstract class _MovieWatchedUpdated implements MovieListsUserProfileEvent {
  const factory _MovieWatchedUpdated(
          List<FirestoreMovieWatchedDetails> moviesWatched) =
      _$_MovieWatchedUpdated;

  List<FirestoreMovieWatchedDetails> get moviesWatched;
  @JsonKey(ignore: true)
  _$MovieWatchedUpdatedCopyWith<_MovieWatchedUpdated> get copyWith;
}

/// @nodoc
abstract class _$AddMovieToWatchlistPressedCopyWith<$Res> {
  factory _$AddMovieToWatchlistPressedCopyWith(
          _AddMovieToWatchlistPressed value,
          $Res Function(_AddMovieToWatchlistPressed) then) =
      __$AddMovieToWatchlistPressedCopyWithImpl<$Res>;
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class __$AddMovieToWatchlistPressedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$AddMovieToWatchlistPressedCopyWith<$Res> {
  __$AddMovieToWatchlistPressedCopyWithImpl(_AddMovieToWatchlistPressed _value,
      $Res Function(_AddMovieToWatchlistPressed) _then)
      : super(_value, (v) => _then(v as _AddMovieToWatchlistPressed));

  @override
  _AddMovieToWatchlistPressed get _value =>
      super._value as _AddMovieToWatchlistPressed;

  @override
  $Res call({
    Object movieDetails = freezed,
  }) {
    return _then(_AddMovieToWatchlistPressed(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
    ));
  }
}

/// @nodoc
class _$_AddMovieToWatchlistPressed implements _AddMovieToWatchlistPressed {
  const _$_AddMovieToWatchlistPressed(this.movieDetails)
      : assert(movieDetails != null);

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.addMovieToWatchlistPressed(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMovieToWatchlistPressed &&
            (identical(other.movieDetails, movieDetails) ||
                const DeepCollectionEquality()
                    .equals(other.movieDetails, movieDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieDetails);

  @JsonKey(ignore: true)
  @override
  _$AddMovieToWatchlistPressedCopyWith<_AddMovieToWatchlistPressed>
      get copyWith => __$AddMovieToWatchlistPressedCopyWithImpl<
          _AddMovieToWatchlistPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return addMovieToWatchlistPressed(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToWatchlistPressed != null) {
      return addMovieToWatchlistPressed(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return addMovieToWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToWatchlistPressed != null) {
      return addMovieToWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class _AddMovieToWatchlistPressed
    implements MovieListsUserProfileEvent {
  const factory _AddMovieToWatchlistPressed(MovieDetails movieDetails) =
      _$_AddMovieToWatchlistPressed;

  MovieDetails get movieDetails;
  @JsonKey(ignore: true)
  _$AddMovieToWatchlistPressedCopyWith<_AddMovieToWatchlistPressed>
      get copyWith;
}

/// @nodoc
abstract class _$RemoveMovieFromWatchlistPressedCopyWith<$Res> {
  factory _$RemoveMovieFromWatchlistPressedCopyWith(
          _RemoveMovieFromWatchlistPressed value,
          $Res Function(_RemoveMovieFromWatchlistPressed) then) =
      __$RemoveMovieFromWatchlistPressedCopyWithImpl<$Res>;
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class __$RemoveMovieFromWatchlistPressedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$RemoveMovieFromWatchlistPressedCopyWith<$Res> {
  __$RemoveMovieFromWatchlistPressedCopyWithImpl(
      _RemoveMovieFromWatchlistPressed _value,
      $Res Function(_RemoveMovieFromWatchlistPressed) _then)
      : super(_value, (v) => _then(v as _RemoveMovieFromWatchlistPressed));

  @override
  _RemoveMovieFromWatchlistPressed get _value =>
      super._value as _RemoveMovieFromWatchlistPressed;

  @override
  $Res call({
    Object movieDetails = freezed,
  }) {
    return _then(_RemoveMovieFromWatchlistPressed(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
    ));
  }
}

/// @nodoc
class _$_RemoveMovieFromWatchlistPressed
    implements _RemoveMovieFromWatchlistPressed {
  const _$_RemoveMovieFromWatchlistPressed(this.movieDetails)
      : assert(movieDetails != null);

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.removeMovieFromWatchlistPressed(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveMovieFromWatchlistPressed &&
            (identical(other.movieDetails, movieDetails) ||
                const DeepCollectionEquality()
                    .equals(other.movieDetails, movieDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieDetails);

  @JsonKey(ignore: true)
  @override
  _$RemoveMovieFromWatchlistPressedCopyWith<_RemoveMovieFromWatchlistPressed>
      get copyWith => __$RemoveMovieFromWatchlistPressedCopyWithImpl<
          _RemoveMovieFromWatchlistPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return removeMovieFromWatchlistPressed(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromWatchlistPressed != null) {
      return removeMovieFromWatchlistPressed(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return removeMovieFromWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromWatchlistPressed != null) {
      return removeMovieFromWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class _RemoveMovieFromWatchlistPressed
    implements MovieListsUserProfileEvent {
  const factory _RemoveMovieFromWatchlistPressed(MovieDetails movieDetails) =
      _$_RemoveMovieFromWatchlistPressed;

  MovieDetails get movieDetails;
  @JsonKey(ignore: true)
  _$RemoveMovieFromWatchlistPressedCopyWith<_RemoveMovieFromWatchlistPressed>
      get copyWith;
}

/// @nodoc
abstract class _$AddMovieToWatchedPressedCopyWith<$Res> {
  factory _$AddMovieToWatchedPressedCopyWith(_AddMovieToWatchedPressed value,
          $Res Function(_AddMovieToWatchedPressed) then) =
      __$AddMovieToWatchedPressedCopyWithImpl<$Res>;
  $Res call(
      {MovieDetails movieDetails, String review, num rating, bool isSpoiler});
}

/// @nodoc
class __$AddMovieToWatchedPressedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$AddMovieToWatchedPressedCopyWith<$Res> {
  __$AddMovieToWatchedPressedCopyWithImpl(_AddMovieToWatchedPressed _value,
      $Res Function(_AddMovieToWatchedPressed) _then)
      : super(_value, (v) => _then(v as _AddMovieToWatchedPressed));

  @override
  _AddMovieToWatchedPressed get _value =>
      super._value as _AddMovieToWatchedPressed;

  @override
  $Res call({
    Object movieDetails = freezed,
    Object review = freezed,
    Object rating = freezed,
    Object isSpoiler = freezed,
  }) {
    return _then(_AddMovieToWatchedPressed(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
      review == freezed ? _value.review : review as String,
      rating == freezed ? _value.rating : rating as num,
      isSpoiler == freezed ? _value.isSpoiler : isSpoiler as bool,
    ));
  }
}

/// @nodoc
class _$_AddMovieToWatchedPressed implements _AddMovieToWatchedPressed {
  const _$_AddMovieToWatchedPressed(
      this.movieDetails, this.review, this.rating, this.isSpoiler)
      : assert(movieDetails != null),
        assert(review != null),
        assert(rating != null),
        assert(isSpoiler != null);

  @override
  final MovieDetails movieDetails;
  @override
  final String review;
  @override
  final num rating;
  @override
  final bool isSpoiler;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.addMovieToWatchedPressed(movieDetails: $movieDetails, review: $review, rating: $rating, isSpoiler: $isSpoiler)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMovieToWatchedPressed &&
            (identical(other.movieDetails, movieDetails) ||
                const DeepCollectionEquality()
                    .equals(other.movieDetails, movieDetails)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.isSpoiler, isSpoiler) ||
                const DeepCollectionEquality()
                    .equals(other.isSpoiler, isSpoiler)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieDetails) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(isSpoiler);

  @JsonKey(ignore: true)
  @override
  _$AddMovieToWatchedPressedCopyWith<_AddMovieToWatchedPressed> get copyWith =>
      __$AddMovieToWatchedPressedCopyWithImpl<_AddMovieToWatchedPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return addMovieToWatchedPressed(movieDetails, review, rating, isSpoiler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToWatchedPressed != null) {
      return addMovieToWatchedPressed(movieDetails, review, rating, isSpoiler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return addMovieToWatchedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToWatchedPressed != null) {
      return addMovieToWatchedPressed(this);
    }
    return orElse();
  }
}

abstract class _AddMovieToWatchedPressed implements MovieListsUserProfileEvent {
  const factory _AddMovieToWatchedPressed(MovieDetails movieDetails,
      String review, num rating, bool isSpoiler) = _$_AddMovieToWatchedPressed;

  MovieDetails get movieDetails;
  String get review;
  num get rating;
  bool get isSpoiler;
  @JsonKey(ignore: true)
  _$AddMovieToWatchedPressedCopyWith<_AddMovieToWatchedPressed> get copyWith;
}

/// @nodoc
abstract class _$RemoveMovieFromWatchedPressedCopyWith<$Res> {
  factory _$RemoveMovieFromWatchedPressedCopyWith(
          _RemoveMovieFromWatchedPressed value,
          $Res Function(_RemoveMovieFromWatchedPressed) then) =
      __$RemoveMovieFromWatchedPressedCopyWithImpl<$Res>;
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class __$RemoveMovieFromWatchedPressedCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$RemoveMovieFromWatchedPressedCopyWith<$Res> {
  __$RemoveMovieFromWatchedPressedCopyWithImpl(
      _RemoveMovieFromWatchedPressed _value,
      $Res Function(_RemoveMovieFromWatchedPressed) _then)
      : super(_value, (v) => _then(v as _RemoveMovieFromWatchedPressed));

  @override
  _RemoveMovieFromWatchedPressed get _value =>
      super._value as _RemoveMovieFromWatchedPressed;

  @override
  $Res call({
    Object movieDetails = freezed,
  }) {
    return _then(_RemoveMovieFromWatchedPressed(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
    ));
  }
}

/// @nodoc
class _$_RemoveMovieFromWatchedPressed
    implements _RemoveMovieFromWatchedPressed {
  const _$_RemoveMovieFromWatchedPressed(this.movieDetails)
      : assert(movieDetails != null);

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.removeMovieFromWatchedPressed(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveMovieFromWatchedPressed &&
            (identical(other.movieDetails, movieDetails) ||
                const DeepCollectionEquality()
                    .equals(other.movieDetails, movieDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieDetails);

  @JsonKey(ignore: true)
  @override
  _$RemoveMovieFromWatchedPressedCopyWith<_RemoveMovieFromWatchedPressed>
      get copyWith => __$RemoveMovieFromWatchedPressedCopyWithImpl<
          _RemoveMovieFromWatchedPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return removeMovieFromWatchedPressed(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromWatchedPressed != null) {
      return removeMovieFromWatchedPressed(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return removeMovieFromWatchedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
    TResult nextMovieWatchlistPageCalled(_NextMovieWatchlistPageCalled value),
    TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromWatchedPressed != null) {
      return removeMovieFromWatchedPressed(this);
    }
    return orElse();
  }
}

abstract class _RemoveMovieFromWatchedPressed
    implements MovieListsUserProfileEvent {
  const factory _RemoveMovieFromWatchedPressed(MovieDetails movieDetails) =
      _$_RemoveMovieFromWatchedPressed;

  MovieDetails get movieDetails;
  @JsonKey(ignore: true)
  _$RemoveMovieFromWatchedPressedCopyWith<_RemoveMovieFromWatchedPressed>
      get copyWith;
}

/// @nodoc
abstract class _$NextMovieWatchlistPageCalledCopyWith<$Res> {
  factory _$NextMovieWatchlistPageCalledCopyWith(
          _NextMovieWatchlistPageCalled value,
          $Res Function(_NextMovieWatchlistPageCalled) then) =
      __$NextMovieWatchlistPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextMovieWatchlistPageCalledCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$NextMovieWatchlistPageCalledCopyWith<$Res> {
  __$NextMovieWatchlistPageCalledCopyWithImpl(
      _NextMovieWatchlistPageCalled _value,
      $Res Function(_NextMovieWatchlistPageCalled) _then)
      : super(_value, (v) => _then(v as _NextMovieWatchlistPageCalled));

  @override
  _NextMovieWatchlistPageCalled get _value =>
      super._value as _NextMovieWatchlistPageCalled;
}

/// @nodoc
class _$_NextMovieWatchlistPageCalled implements _NextMovieWatchlistPageCalled {
  const _$_NextMovieWatchlistPageCalled();

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.nextMovieWatchlistPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextMovieWatchlistPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchlistPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchlistPageCalled != null) {
      return nextMovieWatchlistPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchlistPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
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
    implements MovieListsUserProfileEvent {
  const factory _NextMovieWatchlistPageCalled() =
      _$_NextMovieWatchlistPageCalled;
}

/// @nodoc
abstract class _$NextMovieWatchedPageCalledCopyWith<$Res> {
  factory _$NextMovieWatchedPageCalledCopyWith(
          _NextMovieWatchedPageCalled value,
          $Res Function(_NextMovieWatchedPageCalled) then) =
      __$NextMovieWatchedPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextMovieWatchedPageCalledCopyWithImpl<$Res>
    extends _$MovieListsUserProfileEventCopyWithImpl<$Res>
    implements _$NextMovieWatchedPageCalledCopyWith<$Res> {
  __$NextMovieWatchedPageCalledCopyWithImpl(_NextMovieWatchedPageCalled _value,
      $Res Function(_NextMovieWatchedPageCalled) _then)
      : super(_value, (v) => _then(v as _NextMovieWatchedPageCalled));

  @override
  _NextMovieWatchedPageCalled get _value =>
      super._value as _NextMovieWatchedPageCalled;
}

/// @nodoc
class _$_NextMovieWatchedPageCalled implements _NextMovieWatchedPageCalled {
  const _$_NextMovieWatchedPageCalled();

  @override
  String toString() {
    return 'MovieListsUserProfileEvent.nextMovieWatchedPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextMovieWatchedPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadMovieToListInitial(),
    @required
        TResult movieWatchlistUpdated(
            List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    @required
        TResult movieWatchedUpdated(
            List<FirestoreMovieWatchedDetails> moviesWatched),
    @required TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    @required
        TResult addMovieToWatchedPressed(MovieDetails movieDetails,
            String review, num rating, bool isSpoiler),
    @required TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    @required TResult nextMovieWatchlistPageCalled(),
    @required TResult nextMovieWatchedPageCalled(),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchedPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadMovieToListInitial(),
    TResult movieWatchlistUpdated(
        List<FirestoreMovieWatchlistDetails> moviesWatchlist),
    TResult movieWatchedUpdated(
        List<FirestoreMovieWatchedDetails> moviesWatched),
    TResult addMovieToWatchlistPressed(MovieDetails movieDetails),
    TResult removeMovieFromWatchlistPressed(MovieDetails movieDetails),
    TResult addMovieToWatchedPressed(
        MovieDetails movieDetails, String review, num rating, bool isSpoiler),
    TResult removeMovieFromWatchedPressed(MovieDetails movieDetails),
    TResult nextMovieWatchlistPageCalled(),
    TResult nextMovieWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextMovieWatchedPageCalled != null) {
      return nextMovieWatchedPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    @required TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    @required TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    @required
        TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    @required
        TResult removeMovieFromWatchlistPressed(
            _RemoveMovieFromWatchlistPressed value),
    @required TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    @required
        TResult removeMovieFromWatchedPressed(
            _RemoveMovieFromWatchedPressed value),
    @required
        TResult nextMovieWatchlistPageCalled(
            _NextMovieWatchlistPageCalled value),
    @required
        TResult nextMovieWatchedPageCalled(_NextMovieWatchedPageCalled value),
  }) {
    assert(loadMovieToListInitial != null);
    assert(movieWatchlistUpdated != null);
    assert(movieWatchedUpdated != null);
    assert(addMovieToWatchlistPressed != null);
    assert(removeMovieFromWatchlistPressed != null);
    assert(addMovieToWatchedPressed != null);
    assert(removeMovieFromWatchedPressed != null);
    assert(nextMovieWatchlistPageCalled != null);
    assert(nextMovieWatchedPageCalled != null);
    return nextMovieWatchedPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadMovieToListInitial(_LoadMovieToListInitial value),
    TResult movieWatchlistUpdated(_MovieWatchlistUpdated value),
    TResult movieWatchedUpdated(_MovieWatchedUpdated value),
    TResult addMovieToWatchlistPressed(_AddMovieToWatchlistPressed value),
    TResult removeMovieFromWatchlistPressed(
        _RemoveMovieFromWatchlistPressed value),
    TResult addMovieToWatchedPressed(_AddMovieToWatchedPressed value),
    TResult removeMovieFromWatchedPressed(_RemoveMovieFromWatchedPressed value),
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
    implements MovieListsUserProfileEvent {
  const factory _NextMovieWatchedPageCalled() = _$_NextMovieWatchedPageCalled;
}

/// @nodoc
class _$MovieListsUserProfileStateTearOff {
  const _$MovieListsUserProfileStateTearOff();

// ignore: unused_element
  _MovieListsUserProfileState call(
      {@required bool isLoading,
      @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
      @required List<FirestoreMovieWatchedDetails> movieWatched,
      @required int nextPage,
      @required bool isThereMoreMovieWatchlistPageToLoad,
      @required List<String> movieWatchlistArrayTitlesOnly,
      @required bool isSubmittingWatchlist,
      @required String errorMessage,
      @required bool isThereMoreMovieWatchedPageToLoad,
      @required List<String> movieWatchedArrayTitlesOnly,
      @required bool isSubmittingWatched}) {
    return _MovieListsUserProfileState(
      isLoading: isLoading,
      movieWatchlist: movieWatchlist,
      movieWatched: movieWatched,
      nextPage: nextPage,
      isThereMoreMovieWatchlistPageToLoad: isThereMoreMovieWatchlistPageToLoad,
      movieWatchlistArrayTitlesOnly: movieWatchlistArrayTitlesOnly,
      isSubmittingWatchlist: isSubmittingWatchlist,
      errorMessage: errorMessage,
      isThereMoreMovieWatchedPageToLoad: isThereMoreMovieWatchedPageToLoad,
      movieWatchedArrayTitlesOnly: movieWatchedArrayTitlesOnly,
      isSubmittingWatched: isSubmittingWatched,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieListsUserProfileState = _$MovieListsUserProfileStateTearOff();

/// @nodoc
mixin _$MovieListsUserProfileState {
  bool get isLoading;
  List<FirestoreMovieWatchlistDetails> get movieWatchlist;
  List<FirestoreMovieWatchedDetails> get movieWatched;
  int get nextPage;
  bool get isThereMoreMovieWatchlistPageToLoad;
  List<String> get movieWatchlistArrayTitlesOnly;
  bool get isSubmittingWatchlist;
  String get errorMessage;
  bool get isThereMoreMovieWatchedPageToLoad;
  List<String> get movieWatchedArrayTitlesOnly;
  bool get isSubmittingWatched;

  @JsonKey(ignore: true)
  $MovieListsUserProfileStateCopyWith<MovieListsUserProfileState> get copyWith;
}

/// @nodoc
abstract class $MovieListsUserProfileStateCopyWith<$Res> {
  factory $MovieListsUserProfileStateCopyWith(MovieListsUserProfileState value,
          $Res Function(MovieListsUserProfileState) then) =
      _$MovieListsUserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<FirestoreMovieWatchlistDetails> movieWatchlist,
      List<FirestoreMovieWatchedDetails> movieWatched,
      int nextPage,
      bool isThereMoreMovieWatchlistPageToLoad,
      List<String> movieWatchlistArrayTitlesOnly,
      bool isSubmittingWatchlist,
      String errorMessage,
      bool isThereMoreMovieWatchedPageToLoad,
      List<String> movieWatchedArrayTitlesOnly,
      bool isSubmittingWatched});
}

/// @nodoc
class _$MovieListsUserProfileStateCopyWithImpl<$Res>
    implements $MovieListsUserProfileStateCopyWith<$Res> {
  _$MovieListsUserProfileStateCopyWithImpl(this._value, this._then);

  final MovieListsUserProfileState _value;
  // ignore: unused_field
  final $Res Function(MovieListsUserProfileState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object movieWatchlist = freezed,
    Object movieWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreMovieWatchlistPageToLoad = freezed,
    Object movieWatchlistArrayTitlesOnly = freezed,
    Object isSubmittingWatchlist = freezed,
    Object errorMessage = freezed,
    Object isThereMoreMovieWatchedPageToLoad = freezed,
    Object movieWatchedArrayTitlesOnly = freezed,
    Object isSubmittingWatched = freezed,
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
      movieWatchlistArrayTitlesOnly: movieWatchlistArrayTitlesOnly == freezed
          ? _value.movieWatchlistArrayTitlesOnly
          : movieWatchlistArrayTitlesOnly as List<String>,
      isSubmittingWatchlist: isSubmittingWatchlist == freezed
          ? _value.isSubmittingWatchlist
          : isSubmittingWatchlist as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isThereMoreMovieWatchedPageToLoad:
          isThereMoreMovieWatchedPageToLoad == freezed
              ? _value.isThereMoreMovieWatchedPageToLoad
              : isThereMoreMovieWatchedPageToLoad as bool,
      movieWatchedArrayTitlesOnly: movieWatchedArrayTitlesOnly == freezed
          ? _value.movieWatchedArrayTitlesOnly
          : movieWatchedArrayTitlesOnly as List<String>,
      isSubmittingWatched: isSubmittingWatched == freezed
          ? _value.isSubmittingWatched
          : isSubmittingWatched as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieListsUserProfileStateCopyWith<$Res>
    implements $MovieListsUserProfileStateCopyWith<$Res> {
  factory _$MovieListsUserProfileStateCopyWith(
          _MovieListsUserProfileState value,
          $Res Function(_MovieListsUserProfileState) then) =
      __$MovieListsUserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<FirestoreMovieWatchlistDetails> movieWatchlist,
      List<FirestoreMovieWatchedDetails> movieWatched,
      int nextPage,
      bool isThereMoreMovieWatchlistPageToLoad,
      List<String> movieWatchlistArrayTitlesOnly,
      bool isSubmittingWatchlist,
      String errorMessage,
      bool isThereMoreMovieWatchedPageToLoad,
      List<String> movieWatchedArrayTitlesOnly,
      bool isSubmittingWatched});
}

/// @nodoc
class __$MovieListsUserProfileStateCopyWithImpl<$Res>
    extends _$MovieListsUserProfileStateCopyWithImpl<$Res>
    implements _$MovieListsUserProfileStateCopyWith<$Res> {
  __$MovieListsUserProfileStateCopyWithImpl(_MovieListsUserProfileState _value,
      $Res Function(_MovieListsUserProfileState) _then)
      : super(_value, (v) => _then(v as _MovieListsUserProfileState));

  @override
  _MovieListsUserProfileState get _value =>
      super._value as _MovieListsUserProfileState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object movieWatchlist = freezed,
    Object movieWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreMovieWatchlistPageToLoad = freezed,
    Object movieWatchlistArrayTitlesOnly = freezed,
    Object isSubmittingWatchlist = freezed,
    Object errorMessage = freezed,
    Object isThereMoreMovieWatchedPageToLoad = freezed,
    Object movieWatchedArrayTitlesOnly = freezed,
    Object isSubmittingWatched = freezed,
  }) {
    return _then(_MovieListsUserProfileState(
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
      movieWatchlistArrayTitlesOnly: movieWatchlistArrayTitlesOnly == freezed
          ? _value.movieWatchlistArrayTitlesOnly
          : movieWatchlistArrayTitlesOnly as List<String>,
      isSubmittingWatchlist: isSubmittingWatchlist == freezed
          ? _value.isSubmittingWatchlist
          : isSubmittingWatchlist as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isThereMoreMovieWatchedPageToLoad:
          isThereMoreMovieWatchedPageToLoad == freezed
              ? _value.isThereMoreMovieWatchedPageToLoad
              : isThereMoreMovieWatchedPageToLoad as bool,
      movieWatchedArrayTitlesOnly: movieWatchedArrayTitlesOnly == freezed
          ? _value.movieWatchedArrayTitlesOnly
          : movieWatchedArrayTitlesOnly as List<String>,
      isSubmittingWatched: isSubmittingWatched == freezed
          ? _value.isSubmittingWatched
          : isSubmittingWatched as bool,
    ));
  }
}

/// @nodoc
class _$_MovieListsUserProfileState implements _MovieListsUserProfileState {
  const _$_MovieListsUserProfileState(
      {@required this.isLoading,
      @required this.movieWatchlist,
      @required this.movieWatched,
      @required this.nextPage,
      @required this.isThereMoreMovieWatchlistPageToLoad,
      @required this.movieWatchlistArrayTitlesOnly,
      @required this.isSubmittingWatchlist,
      @required this.errorMessage,
      @required this.isThereMoreMovieWatchedPageToLoad,
      @required this.movieWatchedArrayTitlesOnly,
      @required this.isSubmittingWatched})
      : assert(isLoading != null),
        assert(movieWatchlist != null),
        assert(movieWatched != null),
        assert(nextPage != null),
        assert(isThereMoreMovieWatchlistPageToLoad != null),
        assert(movieWatchlistArrayTitlesOnly != null),
        assert(isSubmittingWatchlist != null),
        assert(errorMessage != null),
        assert(isThereMoreMovieWatchedPageToLoad != null),
        assert(movieWatchedArrayTitlesOnly != null),
        assert(isSubmittingWatched != null);

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
  final List<String> movieWatchlistArrayTitlesOnly;
  @override
  final bool isSubmittingWatchlist;
  @override
  final String errorMessage;
  @override
  final bool isThereMoreMovieWatchedPageToLoad;
  @override
  final List<String> movieWatchedArrayTitlesOnly;
  @override
  final bool isSubmittingWatched;

  @override
  String toString() {
    return 'MovieListsUserProfileState(isLoading: $isLoading, movieWatchlist: $movieWatchlist, movieWatched: $movieWatched, nextPage: $nextPage, isThereMoreMovieWatchlistPageToLoad: $isThereMoreMovieWatchlistPageToLoad, movieWatchlistArrayTitlesOnly: $movieWatchlistArrayTitlesOnly, isSubmittingWatchlist: $isSubmittingWatchlist, errorMessage: $errorMessage, isThereMoreMovieWatchedPageToLoad: $isThereMoreMovieWatchedPageToLoad, movieWatchedArrayTitlesOnly: $movieWatchedArrayTitlesOnly, isSubmittingWatched: $isSubmittingWatched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieListsUserProfileState &&
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
            (identical(other.movieWatchlistArrayTitlesOnly, movieWatchlistArrayTitlesOnly) ||
                const DeepCollectionEquality().equals(
                    other.movieWatchlistArrayTitlesOnly,
                    movieWatchlistArrayTitlesOnly)) &&
            (identical(other.isSubmittingWatchlist, isSubmittingWatchlist) ||
                const DeepCollectionEquality().equals(
                    other.isSubmittingWatchlist, isSubmittingWatchlist)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isThereMoreMovieWatchedPageToLoad, isThereMoreMovieWatchedPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreMovieWatchedPageToLoad,
                    isThereMoreMovieWatchedPageToLoad)) &&
            (identical(other.movieWatchedArrayTitlesOnly, movieWatchedArrayTitlesOnly) ||
                const DeepCollectionEquality().equals(
                    other.movieWatchedArrayTitlesOnly,
                    movieWatchedArrayTitlesOnly)) &&
            (identical(other.isSubmittingWatched, isSubmittingWatched) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmittingWatched, isSubmittingWatched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(movieWatchlist) ^
      const DeepCollectionEquality().hash(movieWatched) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(isThereMoreMovieWatchlistPageToLoad) ^
      const DeepCollectionEquality().hash(movieWatchlistArrayTitlesOnly) ^
      const DeepCollectionEquality().hash(isSubmittingWatchlist) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isThereMoreMovieWatchedPageToLoad) ^
      const DeepCollectionEquality().hash(movieWatchedArrayTitlesOnly) ^
      const DeepCollectionEquality().hash(isSubmittingWatched);

  @JsonKey(ignore: true)
  @override
  _$MovieListsUserProfileStateCopyWith<_MovieListsUserProfileState>
      get copyWith => __$MovieListsUserProfileStateCopyWithImpl<
          _MovieListsUserProfileState>(this, _$identity);
}

abstract class _MovieListsUserProfileState
    implements MovieListsUserProfileState {
  const factory _MovieListsUserProfileState(
      {@required bool isLoading,
      @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
      @required List<FirestoreMovieWatchedDetails> movieWatched,
      @required int nextPage,
      @required bool isThereMoreMovieWatchlistPageToLoad,
      @required List<String> movieWatchlistArrayTitlesOnly,
      @required bool isSubmittingWatchlist,
      @required String errorMessage,
      @required bool isThereMoreMovieWatchedPageToLoad,
      @required List<String> movieWatchedArrayTitlesOnly,
      @required bool isSubmittingWatched}) = _$_MovieListsUserProfileState;

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
  List<String> get movieWatchlistArrayTitlesOnly;
  @override
  bool get isSubmittingWatchlist;
  @override
  String get errorMessage;
  @override
  bool get isThereMoreMovieWatchedPageToLoad;
  @override
  List<String> get movieWatchedArrayTitlesOnly;
  @override
  bool get isSubmittingWatched;
  @override
  @JsonKey(ignore: true)
  _$MovieListsUserProfileStateCopyWith<_MovieListsUserProfileState>
      get copyWith;
}
