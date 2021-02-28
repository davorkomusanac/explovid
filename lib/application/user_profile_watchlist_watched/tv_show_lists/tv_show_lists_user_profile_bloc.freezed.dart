// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tv_show_lists_user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TvShowListsUserProfileEventTearOff {
  const _$TvShowListsUserProfileEventTearOff();

// ignore: unused_element
  _LoadTvShowToListInitial loadTvShowToListInitial() {
    return const _LoadTvShowToListInitial();
  }

// ignore: unused_element
  _TvShowWatchlistUpdated tvShowWatchlistUpdated(
      List<FirestoreTvShowWatchlistDetails> tvShowWatchlist) {
    return _TvShowWatchlistUpdated(
      tvShowWatchlist,
    );
  }

// ignore: unused_element
  _TvShowWatchedUpdated tvShowWatchedUpdated(
      List<FirestoreTvShowWatchedDetails> tvShowWatched) {
    return _TvShowWatchedUpdated(
      tvShowWatched,
    );
  }

// ignore: unused_element
  _AddTvShowToWatchlistPressed addTvShowToWatchlistPressed(
      TvShowDetails tvShowDetails) {
    return _AddTvShowToWatchlistPressed(
      tvShowDetails,
    );
  }

// ignore: unused_element
  _RemoveTvShowFromWatchlistPressed removeTvShowFromWatchlistPressed(
      TvShowDetails tvShowDetails) {
    return _RemoveTvShowFromWatchlistPressed(
      tvShowDetails,
    );
  }

// ignore: unused_element
  _AddTvShowToWatchedPressed addTvShowToWatchedPressed(
      TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) {
    return _AddTvShowToWatchedPressed(
      tvShowDetails,
      review,
      rating,
      isSpoiler,
    );
  }

// ignore: unused_element
  _RemoveTvShowFromWatchedPressed removeTvShowFromWatchedPressed(
      TvShowDetails tvShowDetails) {
    return _RemoveTvShowFromWatchedPressed(
      tvShowDetails,
    );
  }

// ignore: unused_element
  _NextTvShowWatchlistPageCalled nextTvShowWatchlistPageCalled() {
    return const _NextTvShowWatchlistPageCalled();
  }

// ignore: unused_element
  _NextTvShowWatchedPageCalled nextTvShowWatchedPageCalled() {
    return const _NextTvShowWatchedPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowListsUserProfileEvent = _$TvShowListsUserProfileEventTearOff();

/// @nodoc
mixin _$TvShowListsUserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TvShowListsUserProfileEventCopyWith<$Res> {
  factory $TvShowListsUserProfileEventCopyWith(
          TvShowListsUserProfileEvent value,
          $Res Function(TvShowListsUserProfileEvent) then) =
      _$TvShowListsUserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements $TvShowListsUserProfileEventCopyWith<$Res> {
  _$TvShowListsUserProfileEventCopyWithImpl(this._value, this._then);

  final TvShowListsUserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(TvShowListsUserProfileEvent) _then;
}

/// @nodoc
abstract class _$LoadTvShowToListInitialCopyWith<$Res> {
  factory _$LoadTvShowToListInitialCopyWith(_LoadTvShowToListInitial value,
          $Res Function(_LoadTvShowToListInitial) then) =
      __$LoadTvShowToListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadTvShowToListInitialCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$LoadTvShowToListInitialCopyWith<$Res> {
  __$LoadTvShowToListInitialCopyWithImpl(_LoadTvShowToListInitial _value,
      $Res Function(_LoadTvShowToListInitial) _then)
      : super(_value, (v) => _then(v as _LoadTvShowToListInitial));

  @override
  _LoadTvShowToListInitial get _value =>
      super._value as _LoadTvShowToListInitial;
}

/// @nodoc
class _$_LoadTvShowToListInitial implements _LoadTvShowToListInitial {
  const _$_LoadTvShowToListInitial();

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.loadTvShowToListInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadTvShowToListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return loadTvShowToListInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadTvShowToListInitial != null) {
      return loadTvShowToListInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return loadTvShowToListInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadTvShowToListInitial != null) {
      return loadTvShowToListInitial(this);
    }
    return orElse();
  }
}

abstract class _LoadTvShowToListInitial implements TvShowListsUserProfileEvent {
  const factory _LoadTvShowToListInitial() = _$_LoadTvShowToListInitial;
}

/// @nodoc
abstract class _$TvShowWatchlistUpdatedCopyWith<$Res> {
  factory _$TvShowWatchlistUpdatedCopyWith(_TvShowWatchlistUpdated value,
          $Res Function(_TvShowWatchlistUpdated) then) =
      __$TvShowWatchlistUpdatedCopyWithImpl<$Res>;
  $Res call({List<FirestoreTvShowWatchlistDetails> tvShowWatchlist});
}

/// @nodoc
class __$TvShowWatchlistUpdatedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$TvShowWatchlistUpdatedCopyWith<$Res> {
  __$TvShowWatchlistUpdatedCopyWithImpl(_TvShowWatchlistUpdated _value,
      $Res Function(_TvShowWatchlistUpdated) _then)
      : super(_value, (v) => _then(v as _TvShowWatchlistUpdated));

  @override
  _TvShowWatchlistUpdated get _value => super._value as _TvShowWatchlistUpdated;

  @override
  $Res call({
    Object tvShowWatchlist = freezed,
  }) {
    return _then(_TvShowWatchlistUpdated(
      tvShowWatchlist == freezed
          ? _value.tvShowWatchlist
          : tvShowWatchlist as List<FirestoreTvShowWatchlistDetails>,
    ));
  }
}

/// @nodoc
class _$_TvShowWatchlistUpdated implements _TvShowWatchlistUpdated {
  const _$_TvShowWatchlistUpdated(this.tvShowWatchlist)
      : assert(tvShowWatchlist != null);

  @override
  final List<FirestoreTvShowWatchlistDetails> tvShowWatchlist;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.tvShowWatchlistUpdated(tvShowWatchlist: $tvShowWatchlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowWatchlistUpdated &&
            (identical(other.tvShowWatchlist, tvShowWatchlist) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowWatchlist, tvShowWatchlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tvShowWatchlist);

  @JsonKey(ignore: true)
  @override
  _$TvShowWatchlistUpdatedCopyWith<_TvShowWatchlistUpdated> get copyWith =>
      __$TvShowWatchlistUpdatedCopyWithImpl<_TvShowWatchlistUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return tvShowWatchlistUpdated(tvShowWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowWatchlistUpdated != null) {
      return tvShowWatchlistUpdated(tvShowWatchlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return tvShowWatchlistUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowWatchlistUpdated != null) {
      return tvShowWatchlistUpdated(this);
    }
    return orElse();
  }
}

abstract class _TvShowWatchlistUpdated implements TvShowListsUserProfileEvent {
  const factory _TvShowWatchlistUpdated(
          List<FirestoreTvShowWatchlistDetails> tvShowWatchlist) =
      _$_TvShowWatchlistUpdated;

  List<FirestoreTvShowWatchlistDetails> get tvShowWatchlist;
  @JsonKey(ignore: true)
  _$TvShowWatchlistUpdatedCopyWith<_TvShowWatchlistUpdated> get copyWith;
}

/// @nodoc
abstract class _$TvShowWatchedUpdatedCopyWith<$Res> {
  factory _$TvShowWatchedUpdatedCopyWith(_TvShowWatchedUpdated value,
          $Res Function(_TvShowWatchedUpdated) then) =
      __$TvShowWatchedUpdatedCopyWithImpl<$Res>;
  $Res call({List<FirestoreTvShowWatchedDetails> tvShowWatched});
}

/// @nodoc
class __$TvShowWatchedUpdatedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$TvShowWatchedUpdatedCopyWith<$Res> {
  __$TvShowWatchedUpdatedCopyWithImpl(
      _TvShowWatchedUpdated _value, $Res Function(_TvShowWatchedUpdated) _then)
      : super(_value, (v) => _then(v as _TvShowWatchedUpdated));

  @override
  _TvShowWatchedUpdated get _value => super._value as _TvShowWatchedUpdated;

  @override
  $Res call({
    Object tvShowWatched = freezed,
  }) {
    return _then(_TvShowWatchedUpdated(
      tvShowWatched == freezed
          ? _value.tvShowWatched
          : tvShowWatched as List<FirestoreTvShowWatchedDetails>,
    ));
  }
}

/// @nodoc
class _$_TvShowWatchedUpdated implements _TvShowWatchedUpdated {
  const _$_TvShowWatchedUpdated(this.tvShowWatched)
      : assert(tvShowWatched != null);

  @override
  final List<FirestoreTvShowWatchedDetails> tvShowWatched;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.tvShowWatchedUpdated(tvShowWatched: $tvShowWatched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowWatchedUpdated &&
            (identical(other.tvShowWatched, tvShowWatched) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowWatched, tvShowWatched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tvShowWatched);

  @JsonKey(ignore: true)
  @override
  _$TvShowWatchedUpdatedCopyWith<_TvShowWatchedUpdated> get copyWith =>
      __$TvShowWatchedUpdatedCopyWithImpl<_TvShowWatchedUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return tvShowWatchedUpdated(tvShowWatched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowWatchedUpdated != null) {
      return tvShowWatchedUpdated(tvShowWatched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return tvShowWatchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowWatchedUpdated != null) {
      return tvShowWatchedUpdated(this);
    }
    return orElse();
  }
}

abstract class _TvShowWatchedUpdated implements TvShowListsUserProfileEvent {
  const factory _TvShowWatchedUpdated(
          List<FirestoreTvShowWatchedDetails> tvShowWatched) =
      _$_TvShowWatchedUpdated;

  List<FirestoreTvShowWatchedDetails> get tvShowWatched;
  @JsonKey(ignore: true)
  _$TvShowWatchedUpdatedCopyWith<_TvShowWatchedUpdated> get copyWith;
}

/// @nodoc
abstract class _$AddTvShowToWatchlistPressedCopyWith<$Res> {
  factory _$AddTvShowToWatchlistPressedCopyWith(
          _AddTvShowToWatchlistPressed value,
          $Res Function(_AddTvShowToWatchlistPressed) then) =
      __$AddTvShowToWatchlistPressedCopyWithImpl<$Res>;
  $Res call({TvShowDetails tvShowDetails});
}

/// @nodoc
class __$AddTvShowToWatchlistPressedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$AddTvShowToWatchlistPressedCopyWith<$Res> {
  __$AddTvShowToWatchlistPressedCopyWithImpl(
      _AddTvShowToWatchlistPressed _value,
      $Res Function(_AddTvShowToWatchlistPressed) _then)
      : super(_value, (v) => _then(v as _AddTvShowToWatchlistPressed));

  @override
  _AddTvShowToWatchlistPressed get _value =>
      super._value as _AddTvShowToWatchlistPressed;

  @override
  $Res call({
    Object tvShowDetails = freezed,
  }) {
    return _then(_AddTvShowToWatchlistPressed(
      tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
    ));
  }
}

/// @nodoc
class _$_AddTvShowToWatchlistPressed implements _AddTvShowToWatchlistPressed {
  const _$_AddTvShowToWatchlistPressed(this.tvShowDetails)
      : assert(tvShowDetails != null);

  @override
  final TvShowDetails tvShowDetails;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.addTvShowToWatchlistPressed(tvShowDetails: $tvShowDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddTvShowToWatchlistPressed &&
            (identical(other.tvShowDetails, tvShowDetails) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowDetails, tvShowDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tvShowDetails);

  @JsonKey(ignore: true)
  @override
  _$AddTvShowToWatchlistPressedCopyWith<_AddTvShowToWatchlistPressed>
      get copyWith => __$AddTvShowToWatchlistPressedCopyWithImpl<
          _AddTvShowToWatchlistPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return addTvShowToWatchlistPressed(tvShowDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTvShowToWatchlistPressed != null) {
      return addTvShowToWatchlistPressed(tvShowDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return addTvShowToWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTvShowToWatchlistPressed != null) {
      return addTvShowToWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class _AddTvShowToWatchlistPressed
    implements TvShowListsUserProfileEvent {
  const factory _AddTvShowToWatchlistPressed(TvShowDetails tvShowDetails) =
      _$_AddTvShowToWatchlistPressed;

  TvShowDetails get tvShowDetails;
  @JsonKey(ignore: true)
  _$AddTvShowToWatchlistPressedCopyWith<_AddTvShowToWatchlistPressed>
      get copyWith;
}

/// @nodoc
abstract class _$RemoveTvShowFromWatchlistPressedCopyWith<$Res> {
  factory _$RemoveTvShowFromWatchlistPressedCopyWith(
          _RemoveTvShowFromWatchlistPressed value,
          $Res Function(_RemoveTvShowFromWatchlistPressed) then) =
      __$RemoveTvShowFromWatchlistPressedCopyWithImpl<$Res>;
  $Res call({TvShowDetails tvShowDetails});
}

/// @nodoc
class __$RemoveTvShowFromWatchlistPressedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$RemoveTvShowFromWatchlistPressedCopyWith<$Res> {
  __$RemoveTvShowFromWatchlistPressedCopyWithImpl(
      _RemoveTvShowFromWatchlistPressed _value,
      $Res Function(_RemoveTvShowFromWatchlistPressed) _then)
      : super(_value, (v) => _then(v as _RemoveTvShowFromWatchlistPressed));

  @override
  _RemoveTvShowFromWatchlistPressed get _value =>
      super._value as _RemoveTvShowFromWatchlistPressed;

  @override
  $Res call({
    Object tvShowDetails = freezed,
  }) {
    return _then(_RemoveTvShowFromWatchlistPressed(
      tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
    ));
  }
}

/// @nodoc
class _$_RemoveTvShowFromWatchlistPressed
    implements _RemoveTvShowFromWatchlistPressed {
  const _$_RemoveTvShowFromWatchlistPressed(this.tvShowDetails)
      : assert(tvShowDetails != null);

  @override
  final TvShowDetails tvShowDetails;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed(tvShowDetails: $tvShowDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveTvShowFromWatchlistPressed &&
            (identical(other.tvShowDetails, tvShowDetails) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowDetails, tvShowDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tvShowDetails);

  @JsonKey(ignore: true)
  @override
  _$RemoveTvShowFromWatchlistPressedCopyWith<_RemoveTvShowFromWatchlistPressed>
      get copyWith => __$RemoveTvShowFromWatchlistPressedCopyWithImpl<
          _RemoveTvShowFromWatchlistPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return removeTvShowFromWatchlistPressed(tvShowDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeTvShowFromWatchlistPressed != null) {
      return removeTvShowFromWatchlistPressed(tvShowDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return removeTvShowFromWatchlistPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeTvShowFromWatchlistPressed != null) {
      return removeTvShowFromWatchlistPressed(this);
    }
    return orElse();
  }
}

abstract class _RemoveTvShowFromWatchlistPressed
    implements TvShowListsUserProfileEvent {
  const factory _RemoveTvShowFromWatchlistPressed(TvShowDetails tvShowDetails) =
      _$_RemoveTvShowFromWatchlistPressed;

  TvShowDetails get tvShowDetails;
  @JsonKey(ignore: true)
  _$RemoveTvShowFromWatchlistPressedCopyWith<_RemoveTvShowFromWatchlistPressed>
      get copyWith;
}

/// @nodoc
abstract class _$AddTvShowToWatchedPressedCopyWith<$Res> {
  factory _$AddTvShowToWatchedPressedCopyWith(_AddTvShowToWatchedPressed value,
          $Res Function(_AddTvShowToWatchedPressed) then) =
      __$AddTvShowToWatchedPressedCopyWithImpl<$Res>;
  $Res call(
      {TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler});
}

/// @nodoc
class __$AddTvShowToWatchedPressedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$AddTvShowToWatchedPressedCopyWith<$Res> {
  __$AddTvShowToWatchedPressedCopyWithImpl(_AddTvShowToWatchedPressed _value,
      $Res Function(_AddTvShowToWatchedPressed) _then)
      : super(_value, (v) => _then(v as _AddTvShowToWatchedPressed));

  @override
  _AddTvShowToWatchedPressed get _value =>
      super._value as _AddTvShowToWatchedPressed;

  @override
  $Res call({
    Object tvShowDetails = freezed,
    Object review = freezed,
    Object rating = freezed,
    Object isSpoiler = freezed,
  }) {
    return _then(_AddTvShowToWatchedPressed(
      tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
      review == freezed ? _value.review : review as String,
      rating == freezed ? _value.rating : rating as num,
      isSpoiler == freezed ? _value.isSpoiler : isSpoiler as bool,
    ));
  }
}

/// @nodoc
class _$_AddTvShowToWatchedPressed implements _AddTvShowToWatchedPressed {
  const _$_AddTvShowToWatchedPressed(
      this.tvShowDetails, this.review, this.rating, this.isSpoiler)
      : assert(tvShowDetails != null),
        assert(review != null),
        assert(rating != null),
        assert(isSpoiler != null);

  @override
  final TvShowDetails tvShowDetails;
  @override
  final String review;
  @override
  final num rating;
  @override
  final bool isSpoiler;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.addTvShowToWatchedPressed(tvShowDetails: $tvShowDetails, review: $review, rating: $rating, isSpoiler: $isSpoiler)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddTvShowToWatchedPressed &&
            (identical(other.tvShowDetails, tvShowDetails) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowDetails, tvShowDetails)) &&
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
      const DeepCollectionEquality().hash(tvShowDetails) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(isSpoiler);

  @JsonKey(ignore: true)
  @override
  _$AddTvShowToWatchedPressedCopyWith<_AddTvShowToWatchedPressed>
      get copyWith =>
          __$AddTvShowToWatchedPressedCopyWithImpl<_AddTvShowToWatchedPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return addTvShowToWatchedPressed(tvShowDetails, review, rating, isSpoiler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTvShowToWatchedPressed != null) {
      return addTvShowToWatchedPressed(
          tvShowDetails, review, rating, isSpoiler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return addTvShowToWatchedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTvShowToWatchedPressed != null) {
      return addTvShowToWatchedPressed(this);
    }
    return orElse();
  }
}

abstract class _AddTvShowToWatchedPressed
    implements TvShowListsUserProfileEvent {
  const factory _AddTvShowToWatchedPressed(TvShowDetails tvShowDetails,
      String review, num rating, bool isSpoiler) = _$_AddTvShowToWatchedPressed;

  TvShowDetails get tvShowDetails;
  String get review;
  num get rating;
  bool get isSpoiler;
  @JsonKey(ignore: true)
  _$AddTvShowToWatchedPressedCopyWith<_AddTvShowToWatchedPressed> get copyWith;
}

/// @nodoc
abstract class _$RemoveTvShowFromWatchedPressedCopyWith<$Res> {
  factory _$RemoveTvShowFromWatchedPressedCopyWith(
          _RemoveTvShowFromWatchedPressed value,
          $Res Function(_RemoveTvShowFromWatchedPressed) then) =
      __$RemoveTvShowFromWatchedPressedCopyWithImpl<$Res>;
  $Res call({TvShowDetails tvShowDetails});
}

/// @nodoc
class __$RemoveTvShowFromWatchedPressedCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$RemoveTvShowFromWatchedPressedCopyWith<$Res> {
  __$RemoveTvShowFromWatchedPressedCopyWithImpl(
      _RemoveTvShowFromWatchedPressed _value,
      $Res Function(_RemoveTvShowFromWatchedPressed) _then)
      : super(_value, (v) => _then(v as _RemoveTvShowFromWatchedPressed));

  @override
  _RemoveTvShowFromWatchedPressed get _value =>
      super._value as _RemoveTvShowFromWatchedPressed;

  @override
  $Res call({
    Object tvShowDetails = freezed,
  }) {
    return _then(_RemoveTvShowFromWatchedPressed(
      tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
    ));
  }
}

/// @nodoc
class _$_RemoveTvShowFromWatchedPressed
    implements _RemoveTvShowFromWatchedPressed {
  const _$_RemoveTvShowFromWatchedPressed(this.tvShowDetails)
      : assert(tvShowDetails != null);

  @override
  final TvShowDetails tvShowDetails;

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed(tvShowDetails: $tvShowDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveTvShowFromWatchedPressed &&
            (identical(other.tvShowDetails, tvShowDetails) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowDetails, tvShowDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tvShowDetails);

  @JsonKey(ignore: true)
  @override
  _$RemoveTvShowFromWatchedPressedCopyWith<_RemoveTvShowFromWatchedPressed>
      get copyWith => __$RemoveTvShowFromWatchedPressedCopyWithImpl<
          _RemoveTvShowFromWatchedPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return removeTvShowFromWatchedPressed(tvShowDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeTvShowFromWatchedPressed != null) {
      return removeTvShowFromWatchedPressed(tvShowDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return removeTvShowFromWatchedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeTvShowFromWatchedPressed != null) {
      return removeTvShowFromWatchedPressed(this);
    }
    return orElse();
  }
}

abstract class _RemoveTvShowFromWatchedPressed
    implements TvShowListsUserProfileEvent {
  const factory _RemoveTvShowFromWatchedPressed(TvShowDetails tvShowDetails) =
      _$_RemoveTvShowFromWatchedPressed;

  TvShowDetails get tvShowDetails;
  @JsonKey(ignore: true)
  _$RemoveTvShowFromWatchedPressedCopyWith<_RemoveTvShowFromWatchedPressed>
      get copyWith;
}

/// @nodoc
abstract class _$NextTvShowWatchlistPageCalledCopyWith<$Res> {
  factory _$NextTvShowWatchlistPageCalledCopyWith(
          _NextTvShowWatchlistPageCalled value,
          $Res Function(_NextTvShowWatchlistPageCalled) then) =
      __$NextTvShowWatchlistPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextTvShowWatchlistPageCalledCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$NextTvShowWatchlistPageCalledCopyWith<$Res> {
  __$NextTvShowWatchlistPageCalledCopyWithImpl(
      _NextTvShowWatchlistPageCalled _value,
      $Res Function(_NextTvShowWatchlistPageCalled) _then)
      : super(_value, (v) => _then(v as _NextTvShowWatchlistPageCalled));

  @override
  _NextTvShowWatchlistPageCalled get _value =>
      super._value as _NextTvShowWatchlistPageCalled;
}

/// @nodoc
class _$_NextTvShowWatchlistPageCalled
    implements _NextTvShowWatchlistPageCalled {
  const _$_NextTvShowWatchlistPageCalled();

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.nextTvShowWatchlistPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextTvShowWatchlistPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return nextTvShowWatchlistPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextTvShowWatchlistPageCalled != null) {
      return nextTvShowWatchlistPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return nextTvShowWatchlistPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextTvShowWatchlistPageCalled != null) {
      return nextTvShowWatchlistPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextTvShowWatchlistPageCalled
    implements TvShowListsUserProfileEvent {
  const factory _NextTvShowWatchlistPageCalled() =
      _$_NextTvShowWatchlistPageCalled;
}

/// @nodoc
abstract class _$NextTvShowWatchedPageCalledCopyWith<$Res> {
  factory _$NextTvShowWatchedPageCalledCopyWith(
          _NextTvShowWatchedPageCalled value,
          $Res Function(_NextTvShowWatchedPageCalled) then) =
      __$NextTvShowWatchedPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextTvShowWatchedPageCalledCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileEventCopyWithImpl<$Res>
    implements _$NextTvShowWatchedPageCalledCopyWith<$Res> {
  __$NextTvShowWatchedPageCalledCopyWithImpl(
      _NextTvShowWatchedPageCalled _value,
      $Res Function(_NextTvShowWatchedPageCalled) _then)
      : super(_value, (v) => _then(v as _NextTvShowWatchedPageCalled));

  @override
  _NextTvShowWatchedPageCalled get _value =>
      super._value as _NextTvShowWatchedPageCalled;
}

/// @nodoc
class _$_NextTvShowWatchedPageCalled implements _NextTvShowWatchedPageCalled {
  const _$_NextTvShowWatchedPageCalled();

  @override
  String toString() {
    return 'TvShowListsUserProfileEvent.nextTvShowWatchedPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextTvShowWatchedPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadTvShowToListInitial(),
    @required
        TResult tvShowWatchlistUpdated(
            List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    @required
        TResult tvShowWatchedUpdated(
            List<FirestoreTvShowWatchedDetails> tvShowWatched),
    @required TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    @required
        TResult addTvShowToWatchedPressed(TvShowDetails tvShowDetails,
            String review, num rating, bool isSpoiler),
    @required
        TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    @required TResult nextTvShowWatchlistPageCalled(),
    @required TResult nextTvShowWatchedPageCalled(),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return nextTvShowWatchedPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadTvShowToListInitial(),
    TResult tvShowWatchlistUpdated(
        List<FirestoreTvShowWatchlistDetails> tvShowWatchlist),
    TResult tvShowWatchedUpdated(
        List<FirestoreTvShowWatchedDetails> tvShowWatched),
    TResult addTvShowToWatchlistPressed(TvShowDetails tvShowDetails),
    TResult removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails),
    TResult addTvShowToWatchedPressed(
        TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler),
    TResult removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails),
    TResult nextTvShowWatchlistPageCalled(),
    TResult nextTvShowWatchedPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextTvShowWatchedPageCalled != null) {
      return nextTvShowWatchedPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    @required TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    @required TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    @required
        TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    @required
        TResult removeTvShowFromWatchlistPressed(
            _RemoveTvShowFromWatchlistPressed value),
    @required
        TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    @required
        TResult removeTvShowFromWatchedPressed(
            _RemoveTvShowFromWatchedPressed value),
    @required
        TResult nextTvShowWatchlistPageCalled(
            _NextTvShowWatchlistPageCalled value),
    @required
        TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
  }) {
    assert(loadTvShowToListInitial != null);
    assert(tvShowWatchlistUpdated != null);
    assert(tvShowWatchedUpdated != null);
    assert(addTvShowToWatchlistPressed != null);
    assert(removeTvShowFromWatchlistPressed != null);
    assert(addTvShowToWatchedPressed != null);
    assert(removeTvShowFromWatchedPressed != null);
    assert(nextTvShowWatchlistPageCalled != null);
    assert(nextTvShowWatchedPageCalled != null);
    return nextTvShowWatchedPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadTvShowToListInitial(_LoadTvShowToListInitial value),
    TResult tvShowWatchlistUpdated(_TvShowWatchlistUpdated value),
    TResult tvShowWatchedUpdated(_TvShowWatchedUpdated value),
    TResult addTvShowToWatchlistPressed(_AddTvShowToWatchlistPressed value),
    TResult removeTvShowFromWatchlistPressed(
        _RemoveTvShowFromWatchlistPressed value),
    TResult addTvShowToWatchedPressed(_AddTvShowToWatchedPressed value),
    TResult removeTvShowFromWatchedPressed(
        _RemoveTvShowFromWatchedPressed value),
    TResult nextTvShowWatchlistPageCalled(_NextTvShowWatchlistPageCalled value),
    TResult nextTvShowWatchedPageCalled(_NextTvShowWatchedPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextTvShowWatchedPageCalled != null) {
      return nextTvShowWatchedPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextTvShowWatchedPageCalled
    implements TvShowListsUserProfileEvent {
  const factory _NextTvShowWatchedPageCalled() = _$_NextTvShowWatchedPageCalled;
}

/// @nodoc
class _$TvShowListsUserProfileStateTearOff {
  const _$TvShowListsUserProfileStateTearOff();

// ignore: unused_element
  _TvShowListsUserProfileState call(
      {@required bool isLoading,
      @required List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
      @required List<FirestoreTvShowWatchedDetails> tvShowWatched,
      @required int nextPage,
      @required bool isThereMoreTvShowWatchlistPageToLoad,
      @required List<String> tvShowWatchlistArrayTitlesOnly,
      @required bool isSubmittingWatchlist,
      @required String errorMessage,
      @required bool isThereMoreTvShowWatchedPageToLoad,
      @required List<String> tvShowWatchedArrayTitlesOnly,
      @required bool isSubmittingWatched}) {
    return _TvShowListsUserProfileState(
      isLoading: isLoading,
      tvShowWatchlist: tvShowWatchlist,
      tvShowWatched: tvShowWatched,
      nextPage: nextPage,
      isThereMoreTvShowWatchlistPageToLoad:
          isThereMoreTvShowWatchlistPageToLoad,
      tvShowWatchlistArrayTitlesOnly: tvShowWatchlistArrayTitlesOnly,
      isSubmittingWatchlist: isSubmittingWatchlist,
      errorMessage: errorMessage,
      isThereMoreTvShowWatchedPageToLoad: isThereMoreTvShowWatchedPageToLoad,
      tvShowWatchedArrayTitlesOnly: tvShowWatchedArrayTitlesOnly,
      isSubmittingWatched: isSubmittingWatched,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowListsUserProfileState = _$TvShowListsUserProfileStateTearOff();

/// @nodoc
mixin _$TvShowListsUserProfileState {
  bool get isLoading;
  List<FirestoreTvShowWatchlistDetails> get tvShowWatchlist;
  List<FirestoreTvShowWatchedDetails> get tvShowWatched;
  int get nextPage;
  bool get isThereMoreTvShowWatchlistPageToLoad;
  List<String> get tvShowWatchlistArrayTitlesOnly;
  bool get isSubmittingWatchlist;
  String get errorMessage;
  bool get isThereMoreTvShowWatchedPageToLoad;
  List<String> get tvShowWatchedArrayTitlesOnly;
  bool get isSubmittingWatched;

  @JsonKey(ignore: true)
  $TvShowListsUserProfileStateCopyWith<TvShowListsUserProfileState>
      get copyWith;
}

/// @nodoc
abstract class $TvShowListsUserProfileStateCopyWith<$Res> {
  factory $TvShowListsUserProfileStateCopyWith(
          TvShowListsUserProfileState value,
          $Res Function(TvShowListsUserProfileState) then) =
      _$TvShowListsUserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
      List<FirestoreTvShowWatchedDetails> tvShowWatched,
      int nextPage,
      bool isThereMoreTvShowWatchlistPageToLoad,
      List<String> tvShowWatchlistArrayTitlesOnly,
      bool isSubmittingWatchlist,
      String errorMessage,
      bool isThereMoreTvShowWatchedPageToLoad,
      List<String> tvShowWatchedArrayTitlesOnly,
      bool isSubmittingWatched});
}

/// @nodoc
class _$TvShowListsUserProfileStateCopyWithImpl<$Res>
    implements $TvShowListsUserProfileStateCopyWith<$Res> {
  _$TvShowListsUserProfileStateCopyWithImpl(this._value, this._then);

  final TvShowListsUserProfileState _value;
  // ignore: unused_field
  final $Res Function(TvShowListsUserProfileState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object tvShowWatchlist = freezed,
    Object tvShowWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreTvShowWatchlistPageToLoad = freezed,
    Object tvShowWatchlistArrayTitlesOnly = freezed,
    Object isSubmittingWatchlist = freezed,
    Object errorMessage = freezed,
    Object isThereMoreTvShowWatchedPageToLoad = freezed,
    Object tvShowWatchedArrayTitlesOnly = freezed,
    Object isSubmittingWatched = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      tvShowWatchlist: tvShowWatchlist == freezed
          ? _value.tvShowWatchlist
          : tvShowWatchlist as List<FirestoreTvShowWatchlistDetails>,
      tvShowWatched: tvShowWatched == freezed
          ? _value.tvShowWatched
          : tvShowWatched as List<FirestoreTvShowWatchedDetails>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreTvShowWatchlistPageToLoad:
          isThereMoreTvShowWatchlistPageToLoad == freezed
              ? _value.isThereMoreTvShowWatchlistPageToLoad
              : isThereMoreTvShowWatchlistPageToLoad as bool,
      tvShowWatchlistArrayTitlesOnly: tvShowWatchlistArrayTitlesOnly == freezed
          ? _value.tvShowWatchlistArrayTitlesOnly
          : tvShowWatchlistArrayTitlesOnly as List<String>,
      isSubmittingWatchlist: isSubmittingWatchlist == freezed
          ? _value.isSubmittingWatchlist
          : isSubmittingWatchlist as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isThereMoreTvShowWatchedPageToLoad:
          isThereMoreTvShowWatchedPageToLoad == freezed
              ? _value.isThereMoreTvShowWatchedPageToLoad
              : isThereMoreTvShowWatchedPageToLoad as bool,
      tvShowWatchedArrayTitlesOnly: tvShowWatchedArrayTitlesOnly == freezed
          ? _value.tvShowWatchedArrayTitlesOnly
          : tvShowWatchedArrayTitlesOnly as List<String>,
      isSubmittingWatched: isSubmittingWatched == freezed
          ? _value.isSubmittingWatched
          : isSubmittingWatched as bool,
    ));
  }
}

/// @nodoc
abstract class _$TvShowListsUserProfileStateCopyWith<$Res>
    implements $TvShowListsUserProfileStateCopyWith<$Res> {
  factory _$TvShowListsUserProfileStateCopyWith(
          _TvShowListsUserProfileState value,
          $Res Function(_TvShowListsUserProfileState) then) =
      __$TvShowListsUserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
      List<FirestoreTvShowWatchedDetails> tvShowWatched,
      int nextPage,
      bool isThereMoreTvShowWatchlistPageToLoad,
      List<String> tvShowWatchlistArrayTitlesOnly,
      bool isSubmittingWatchlist,
      String errorMessage,
      bool isThereMoreTvShowWatchedPageToLoad,
      List<String> tvShowWatchedArrayTitlesOnly,
      bool isSubmittingWatched});
}

/// @nodoc
class __$TvShowListsUserProfileStateCopyWithImpl<$Res>
    extends _$TvShowListsUserProfileStateCopyWithImpl<$Res>
    implements _$TvShowListsUserProfileStateCopyWith<$Res> {
  __$TvShowListsUserProfileStateCopyWithImpl(
      _TvShowListsUserProfileState _value,
      $Res Function(_TvShowListsUserProfileState) _then)
      : super(_value, (v) => _then(v as _TvShowListsUserProfileState));

  @override
  _TvShowListsUserProfileState get _value =>
      super._value as _TvShowListsUserProfileState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object tvShowWatchlist = freezed,
    Object tvShowWatched = freezed,
    Object nextPage = freezed,
    Object isThereMoreTvShowWatchlistPageToLoad = freezed,
    Object tvShowWatchlistArrayTitlesOnly = freezed,
    Object isSubmittingWatchlist = freezed,
    Object errorMessage = freezed,
    Object isThereMoreTvShowWatchedPageToLoad = freezed,
    Object tvShowWatchedArrayTitlesOnly = freezed,
    Object isSubmittingWatched = freezed,
  }) {
    return _then(_TvShowListsUserProfileState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      tvShowWatchlist: tvShowWatchlist == freezed
          ? _value.tvShowWatchlist
          : tvShowWatchlist as List<FirestoreTvShowWatchlistDetails>,
      tvShowWatched: tvShowWatched == freezed
          ? _value.tvShowWatched
          : tvShowWatched as List<FirestoreTvShowWatchedDetails>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreTvShowWatchlistPageToLoad:
          isThereMoreTvShowWatchlistPageToLoad == freezed
              ? _value.isThereMoreTvShowWatchlistPageToLoad
              : isThereMoreTvShowWatchlistPageToLoad as bool,
      tvShowWatchlistArrayTitlesOnly: tvShowWatchlistArrayTitlesOnly == freezed
          ? _value.tvShowWatchlistArrayTitlesOnly
          : tvShowWatchlistArrayTitlesOnly as List<String>,
      isSubmittingWatchlist: isSubmittingWatchlist == freezed
          ? _value.isSubmittingWatchlist
          : isSubmittingWatchlist as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isThereMoreTvShowWatchedPageToLoad:
          isThereMoreTvShowWatchedPageToLoad == freezed
              ? _value.isThereMoreTvShowWatchedPageToLoad
              : isThereMoreTvShowWatchedPageToLoad as bool,
      tvShowWatchedArrayTitlesOnly: tvShowWatchedArrayTitlesOnly == freezed
          ? _value.tvShowWatchedArrayTitlesOnly
          : tvShowWatchedArrayTitlesOnly as List<String>,
      isSubmittingWatched: isSubmittingWatched == freezed
          ? _value.isSubmittingWatched
          : isSubmittingWatched as bool,
    ));
  }
}

/// @nodoc
class _$_TvShowListsUserProfileState implements _TvShowListsUserProfileState {
  const _$_TvShowListsUserProfileState(
      {@required this.isLoading,
      @required this.tvShowWatchlist,
      @required this.tvShowWatched,
      @required this.nextPage,
      @required this.isThereMoreTvShowWatchlistPageToLoad,
      @required this.tvShowWatchlistArrayTitlesOnly,
      @required this.isSubmittingWatchlist,
      @required this.errorMessage,
      @required this.isThereMoreTvShowWatchedPageToLoad,
      @required this.tvShowWatchedArrayTitlesOnly,
      @required this.isSubmittingWatched})
      : assert(isLoading != null),
        assert(tvShowWatchlist != null),
        assert(tvShowWatched != null),
        assert(nextPage != null),
        assert(isThereMoreTvShowWatchlistPageToLoad != null),
        assert(tvShowWatchlistArrayTitlesOnly != null),
        assert(isSubmittingWatchlist != null),
        assert(errorMessage != null),
        assert(isThereMoreTvShowWatchedPageToLoad != null),
        assert(tvShowWatchedArrayTitlesOnly != null),
        assert(isSubmittingWatched != null);

  @override
  final bool isLoading;
  @override
  final List<FirestoreTvShowWatchlistDetails> tvShowWatchlist;
  @override
  final List<FirestoreTvShowWatchedDetails> tvShowWatched;
  @override
  final int nextPage;
  @override
  final bool isThereMoreTvShowWatchlistPageToLoad;
  @override
  final List<String> tvShowWatchlistArrayTitlesOnly;
  @override
  final bool isSubmittingWatchlist;
  @override
  final String errorMessage;
  @override
  final bool isThereMoreTvShowWatchedPageToLoad;
  @override
  final List<String> tvShowWatchedArrayTitlesOnly;
  @override
  final bool isSubmittingWatched;

  @override
  String toString() {
    return 'TvShowListsUserProfileState(isLoading: $isLoading, tvShowWatchlist: $tvShowWatchlist, tvShowWatched: $tvShowWatched, nextPage: $nextPage, isThereMoreTvShowWatchlistPageToLoad: $isThereMoreTvShowWatchlistPageToLoad, tvShowWatchlistArrayTitlesOnly: $tvShowWatchlistArrayTitlesOnly, isSubmittingWatchlist: $isSubmittingWatchlist, errorMessage: $errorMessage, isThereMoreTvShowWatchedPageToLoad: $isThereMoreTvShowWatchedPageToLoad, tvShowWatchedArrayTitlesOnly: $tvShowWatchedArrayTitlesOnly, isSubmittingWatched: $isSubmittingWatched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowListsUserProfileState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.tvShowWatchlist, tvShowWatchlist) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowWatchlist, tvShowWatchlist)) &&
            (identical(other.tvShowWatched, tvShowWatched) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowWatched, tvShowWatched)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(other.isThereMoreTvShowWatchlistPageToLoad,
                    isThereMoreTvShowWatchlistPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreTvShowWatchlistPageToLoad,
                    isThereMoreTvShowWatchlistPageToLoad)) &&
            (identical(other.tvShowWatchlistArrayTitlesOnly, tvShowWatchlistArrayTitlesOnly) ||
                const DeepCollectionEquality().equals(
                    other.tvShowWatchlistArrayTitlesOnly,
                    tvShowWatchlistArrayTitlesOnly)) &&
            (identical(other.isSubmittingWatchlist, isSubmittingWatchlist) ||
                const DeepCollectionEquality().equals(
                    other.isSubmittingWatchlist, isSubmittingWatchlist)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isThereMoreTvShowWatchedPageToLoad, isThereMoreTvShowWatchedPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreTvShowWatchedPageToLoad,
                    isThereMoreTvShowWatchedPageToLoad)) &&
            (identical(other.tvShowWatchedArrayTitlesOnly, tvShowWatchedArrayTitlesOnly) ||
                const DeepCollectionEquality().equals(
                    other.tvShowWatchedArrayTitlesOnly,
                    tvShowWatchedArrayTitlesOnly)) &&
            (identical(other.isSubmittingWatched, isSubmittingWatched) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmittingWatched, isSubmittingWatched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(tvShowWatchlist) ^
      const DeepCollectionEquality().hash(tvShowWatched) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality()
          .hash(isThereMoreTvShowWatchlistPageToLoad) ^
      const DeepCollectionEquality().hash(tvShowWatchlistArrayTitlesOnly) ^
      const DeepCollectionEquality().hash(isSubmittingWatchlist) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isThereMoreTvShowWatchedPageToLoad) ^
      const DeepCollectionEquality().hash(tvShowWatchedArrayTitlesOnly) ^
      const DeepCollectionEquality().hash(isSubmittingWatched);

  @JsonKey(ignore: true)
  @override
  _$TvShowListsUserProfileStateCopyWith<_TvShowListsUserProfileState>
      get copyWith => __$TvShowListsUserProfileStateCopyWithImpl<
          _TvShowListsUserProfileState>(this, _$identity);
}

abstract class _TvShowListsUserProfileState
    implements TvShowListsUserProfileState {
  const factory _TvShowListsUserProfileState(
      {@required bool isLoading,
      @required List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
      @required List<FirestoreTvShowWatchedDetails> tvShowWatched,
      @required int nextPage,
      @required bool isThereMoreTvShowWatchlistPageToLoad,
      @required List<String> tvShowWatchlistArrayTitlesOnly,
      @required bool isSubmittingWatchlist,
      @required String errorMessage,
      @required bool isThereMoreTvShowWatchedPageToLoad,
      @required List<String> tvShowWatchedArrayTitlesOnly,
      @required bool isSubmittingWatched}) = _$_TvShowListsUserProfileState;

  @override
  bool get isLoading;
  @override
  List<FirestoreTvShowWatchlistDetails> get tvShowWatchlist;
  @override
  List<FirestoreTvShowWatchedDetails> get tvShowWatched;
  @override
  int get nextPage;
  @override
  bool get isThereMoreTvShowWatchlistPageToLoad;
  @override
  List<String> get tvShowWatchlistArrayTitlesOnly;
  @override
  bool get isSubmittingWatchlist;
  @override
  String get errorMessage;
  @override
  bool get isThereMoreTvShowWatchedPageToLoad;
  @override
  List<String> get tvShowWatchedArrayTitlesOnly;
  @override
  bool get isSubmittingWatched;
  @override
  @JsonKey(ignore: true)
  _$TvShowListsUserProfileStateCopyWith<_TvShowListsUserProfileState>
      get copyWith;
}
