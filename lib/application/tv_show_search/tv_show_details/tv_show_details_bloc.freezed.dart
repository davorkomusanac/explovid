// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tv_show_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TvShowDetailsEventTearOff {
  const _$TvShowDetailsEventTearOff();

// ignore: unused_element
  _TvShowDetailsPressed tvShowDetailsPressed(int id) {
    return _TvShowDetailsPressed(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowDetailsEvent = _$TvShowDetailsEventTearOff();

/// @nodoc
mixin _$TvShowDetailsEvent {
  int get id;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tvShowDetailsPressed(int id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tvShowDetailsPressed(int id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tvShowDetailsPressed(_TvShowDetailsPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tvShowDetailsPressed(_TvShowDetailsPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TvShowDetailsEventCopyWith<TvShowDetailsEvent> get copyWith;
}

/// @nodoc
abstract class $TvShowDetailsEventCopyWith<$Res> {
  factory $TvShowDetailsEventCopyWith(
          TvShowDetailsEvent value, $Res Function(TvShowDetailsEvent) then) =
      _$TvShowDetailsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$TvShowDetailsEventCopyWithImpl<$Res>
    implements $TvShowDetailsEventCopyWith<$Res> {
  _$TvShowDetailsEventCopyWithImpl(this._value, this._then);

  final TvShowDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(TvShowDetailsEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$TvShowDetailsPressedCopyWith<$Res>
    implements $TvShowDetailsEventCopyWith<$Res> {
  factory _$TvShowDetailsPressedCopyWith(_TvShowDetailsPressed value,
          $Res Function(_TvShowDetailsPressed) then) =
      __$TvShowDetailsPressedCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$TvShowDetailsPressedCopyWithImpl<$Res>
    extends _$TvShowDetailsEventCopyWithImpl<$Res>
    implements _$TvShowDetailsPressedCopyWith<$Res> {
  __$TvShowDetailsPressedCopyWithImpl(
      _TvShowDetailsPressed _value, $Res Function(_TvShowDetailsPressed) _then)
      : super(_value, (v) => _then(v as _TvShowDetailsPressed));

  @override
  _TvShowDetailsPressed get _value => super._value as _TvShowDetailsPressed;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_TvShowDetailsPressed(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_TvShowDetailsPressed implements _TvShowDetailsPressed {
  const _$_TvShowDetailsPressed(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'TvShowDetailsEvent.tvShowDetailsPressed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowDetailsPressed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$TvShowDetailsPressedCopyWith<_TvShowDetailsPressed> get copyWith =>
      __$TvShowDetailsPressedCopyWithImpl<_TvShowDetailsPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tvShowDetailsPressed(int id),
  }) {
    assert(tvShowDetailsPressed != null);
    return tvShowDetailsPressed(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tvShowDetailsPressed(int id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowDetailsPressed != null) {
      return tvShowDetailsPressed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tvShowDetailsPressed(_TvShowDetailsPressed value),
  }) {
    assert(tvShowDetailsPressed != null);
    return tvShowDetailsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tvShowDetailsPressed(_TvShowDetailsPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tvShowDetailsPressed != null) {
      return tvShowDetailsPressed(this);
    }
    return orElse();
  }
}

abstract class _TvShowDetailsPressed implements TvShowDetailsEvent {
  const factory _TvShowDetailsPressed(int id) = _$_TvShowDetailsPressed;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$TvShowDetailsPressedCopyWith<_TvShowDetailsPressed> get copyWith;
}

/// @nodoc
class _$TvShowDetailsStateTearOff {
  const _$TvShowDetailsStateTearOff();

// ignore: unused_element
  _TvShowDetailsState call(
      {@required String errorMessage,
      @required bool isSearching,
      @required TvShowDetails tvShowDetails,
      @required bool isTrailerAvailable}) {
    return _TvShowDetailsState(
      errorMessage: errorMessage,
      isSearching: isSearching,
      tvShowDetails: tvShowDetails,
      isTrailerAvailable: isTrailerAvailable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TvShowDetailsState = _$TvShowDetailsStateTearOff();

/// @nodoc
mixin _$TvShowDetailsState {
  String get errorMessage;
  bool get isSearching;
  TvShowDetails get tvShowDetails;
  bool get isTrailerAvailable;

  @JsonKey(ignore: true)
  $TvShowDetailsStateCopyWith<TvShowDetailsState> get copyWith;
}

/// @nodoc
abstract class $TvShowDetailsStateCopyWith<$Res> {
  factory $TvShowDetailsStateCopyWith(
          TvShowDetailsState value, $Res Function(TvShowDetailsState) then) =
      _$TvShowDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {String errorMessage,
      bool isSearching,
      TvShowDetails tvShowDetails,
      bool isTrailerAvailable});
}

/// @nodoc
class _$TvShowDetailsStateCopyWithImpl<$Res>
    implements $TvShowDetailsStateCopyWith<$Res> {
  _$TvShowDetailsStateCopyWithImpl(this._value, this._then);

  final TvShowDetailsState _value;
  // ignore: unused_field
  final $Res Function(TvShowDetailsState) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object tvShowDetails = freezed,
    Object isTrailerAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      tvShowDetails: tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
      isTrailerAvailable: isTrailerAvailable == freezed
          ? _value.isTrailerAvailable
          : isTrailerAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$TvShowDetailsStateCopyWith<$Res>
    implements $TvShowDetailsStateCopyWith<$Res> {
  factory _$TvShowDetailsStateCopyWith(
          _TvShowDetailsState value, $Res Function(_TvShowDetailsState) then) =
      __$TvShowDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorMessage,
      bool isSearching,
      TvShowDetails tvShowDetails,
      bool isTrailerAvailable});
}

/// @nodoc
class __$TvShowDetailsStateCopyWithImpl<$Res>
    extends _$TvShowDetailsStateCopyWithImpl<$Res>
    implements _$TvShowDetailsStateCopyWith<$Res> {
  __$TvShowDetailsStateCopyWithImpl(
      _TvShowDetailsState _value, $Res Function(_TvShowDetailsState) _then)
      : super(_value, (v) => _then(v as _TvShowDetailsState));

  @override
  _TvShowDetailsState get _value => super._value as _TvShowDetailsState;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object tvShowDetails = freezed,
    Object isTrailerAvailable = freezed,
  }) {
    return _then(_TvShowDetailsState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      tvShowDetails: tvShowDetails == freezed
          ? _value.tvShowDetails
          : tvShowDetails as TvShowDetails,
      isTrailerAvailable: isTrailerAvailable == freezed
          ? _value.isTrailerAvailable
          : isTrailerAvailable as bool,
    ));
  }
}

/// @nodoc
class _$_TvShowDetailsState implements _TvShowDetailsState {
  const _$_TvShowDetailsState(
      {@required this.errorMessage,
      @required this.isSearching,
      @required this.tvShowDetails,
      @required this.isTrailerAvailable})
      : assert(errorMessage != null),
        assert(isSearching != null),
        assert(tvShowDetails != null),
        assert(isTrailerAvailable != null);

  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final TvShowDetails tvShowDetails;
  @override
  final bool isTrailerAvailable;

  @override
  String toString() {
    return 'TvShowDetailsState(errorMessage: $errorMessage, isSearching: $isSearching, tvShowDetails: $tvShowDetails, isTrailerAvailable: $isTrailerAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowDetailsState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.tvShowDetails, tvShowDetails) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowDetails, tvShowDetails)) &&
            (identical(other.isTrailerAvailable, isTrailerAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isTrailerAvailable, isTrailerAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(tvShowDetails) ^
      const DeepCollectionEquality().hash(isTrailerAvailable);

  @JsonKey(ignore: true)
  @override
  _$TvShowDetailsStateCopyWith<_TvShowDetailsState> get copyWith =>
      __$TvShowDetailsStateCopyWithImpl<_TvShowDetailsState>(this, _$identity);
}

abstract class _TvShowDetailsState implements TvShowDetailsState {
  const factory _TvShowDetailsState(
      {@required String errorMessage,
      @required bool isSearching,
      @required TvShowDetails tvShowDetails,
      @required bool isTrailerAvailable}) = _$_TvShowDetailsState;

  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  TvShowDetails get tvShowDetails;
  @override
  bool get isTrailerAvailable;
  @override
  @JsonKey(ignore: true)
  _$TvShowDetailsStateCopyWith<_TvShowDetailsState> get copyWith;
}
