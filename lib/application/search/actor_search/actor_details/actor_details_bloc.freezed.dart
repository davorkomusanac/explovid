// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'actor_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActorDetailsEventTearOff {
  const _$ActorDetailsEventTearOff();

// ignore: unused_element
  _ActorDetailsPressed actorDetailsPressed(int id) {
    return _ActorDetailsPressed(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActorDetailsEvent = _$ActorDetailsEventTearOff();

/// @nodoc
mixin _$ActorDetailsEvent {
  int get id;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult actorDetailsPressed(int id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult actorDetailsPressed(int id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult actorDetailsPressed(_ActorDetailsPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult actorDetailsPressed(_ActorDetailsPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ActorDetailsEventCopyWith<ActorDetailsEvent> get copyWith;
}

/// @nodoc
abstract class $ActorDetailsEventCopyWith<$Res> {
  factory $ActorDetailsEventCopyWith(
          ActorDetailsEvent value, $Res Function(ActorDetailsEvent) then) =
      _$ActorDetailsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ActorDetailsEventCopyWithImpl<$Res>
    implements $ActorDetailsEventCopyWith<$Res> {
  _$ActorDetailsEventCopyWithImpl(this._value, this._then);

  final ActorDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(ActorDetailsEvent) _then;

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
abstract class _$ActorDetailsPressedCopyWith<$Res>
    implements $ActorDetailsEventCopyWith<$Res> {
  factory _$ActorDetailsPressedCopyWith(_ActorDetailsPressed value,
          $Res Function(_ActorDetailsPressed) then) =
      __$ActorDetailsPressedCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$ActorDetailsPressedCopyWithImpl<$Res>
    extends _$ActorDetailsEventCopyWithImpl<$Res>
    implements _$ActorDetailsPressedCopyWith<$Res> {
  __$ActorDetailsPressedCopyWithImpl(
      _ActorDetailsPressed _value, $Res Function(_ActorDetailsPressed) _then)
      : super(_value, (v) => _then(v as _ActorDetailsPressed));

  @override
  _ActorDetailsPressed get _value => super._value as _ActorDetailsPressed;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_ActorDetailsPressed(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_ActorDetailsPressed implements _ActorDetailsPressed {
  const _$_ActorDetailsPressed(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'ActorDetailsEvent.actorDetailsPressed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorDetailsPressed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ActorDetailsPressedCopyWith<_ActorDetailsPressed> get copyWith =>
      __$ActorDetailsPressedCopyWithImpl<_ActorDetailsPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult actorDetailsPressed(int id),
  }) {
    assert(actorDetailsPressed != null);
    return actorDetailsPressed(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult actorDetailsPressed(int id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actorDetailsPressed != null) {
      return actorDetailsPressed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult actorDetailsPressed(_ActorDetailsPressed value),
  }) {
    assert(actorDetailsPressed != null);
    return actorDetailsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult actorDetailsPressed(_ActorDetailsPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actorDetailsPressed != null) {
      return actorDetailsPressed(this);
    }
    return orElse();
  }
}

abstract class _ActorDetailsPressed implements ActorDetailsEvent {
  const factory _ActorDetailsPressed(int id) = _$_ActorDetailsPressed;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$ActorDetailsPressedCopyWith<_ActorDetailsPressed> get copyWith;
}

/// @nodoc
class _$ActorDetailsStateTearOff {
  const _$ActorDetailsStateTearOff();

// ignore: unused_element
  _ActorDetailsState call(
      {@required String errorMessage,
      @required bool isSearching,
      @required ActorDetails actorDetails}) {
    return _ActorDetailsState(
      errorMessage: errorMessage,
      isSearching: isSearching,
      actorDetails: actorDetails,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActorDetailsState = _$ActorDetailsStateTearOff();

/// @nodoc
mixin _$ActorDetailsState {
  String get errorMessage;
  bool get isSearching;
  ActorDetails get actorDetails;

  @JsonKey(ignore: true)
  $ActorDetailsStateCopyWith<ActorDetailsState> get copyWith;
}

/// @nodoc
abstract class $ActorDetailsStateCopyWith<$Res> {
  factory $ActorDetailsStateCopyWith(
          ActorDetailsState value, $Res Function(ActorDetailsState) then) =
      _$ActorDetailsStateCopyWithImpl<$Res>;
  $Res call({String errorMessage, bool isSearching, ActorDetails actorDetails});
}

/// @nodoc
class _$ActorDetailsStateCopyWithImpl<$Res>
    implements $ActorDetailsStateCopyWith<$Res> {
  _$ActorDetailsStateCopyWithImpl(this._value, this._then);

  final ActorDetailsState _value;
  // ignore: unused_field
  final $Res Function(ActorDetailsState) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object actorDetails = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      actorDetails: actorDetails == freezed
          ? _value.actorDetails
          : actorDetails as ActorDetails,
    ));
  }
}

/// @nodoc
abstract class _$ActorDetailsStateCopyWith<$Res>
    implements $ActorDetailsStateCopyWith<$Res> {
  factory _$ActorDetailsStateCopyWith(
          _ActorDetailsState value, $Res Function(_ActorDetailsState) then) =
      __$ActorDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage, bool isSearching, ActorDetails actorDetails});
}

/// @nodoc
class __$ActorDetailsStateCopyWithImpl<$Res>
    extends _$ActorDetailsStateCopyWithImpl<$Res>
    implements _$ActorDetailsStateCopyWith<$Res> {
  __$ActorDetailsStateCopyWithImpl(
      _ActorDetailsState _value, $Res Function(_ActorDetailsState) _then)
      : super(_value, (v) => _then(v as _ActorDetailsState));

  @override
  _ActorDetailsState get _value => super._value as _ActorDetailsState;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object actorDetails = freezed,
  }) {
    return _then(_ActorDetailsState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      actorDetails: actorDetails == freezed
          ? _value.actorDetails
          : actorDetails as ActorDetails,
    ));
  }
}

/// @nodoc
class _$_ActorDetailsState implements _ActorDetailsState {
  const _$_ActorDetailsState(
      {@required this.errorMessage,
      @required this.isSearching,
      @required this.actorDetails})
      : assert(errorMessage != null),
        assert(isSearching != null),
        assert(actorDetails != null);

  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final ActorDetails actorDetails;

  @override
  String toString() {
    return 'ActorDetailsState(errorMessage: $errorMessage, isSearching: $isSearching, actorDetails: $actorDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorDetailsState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.actorDetails, actorDetails) ||
                const DeepCollectionEquality()
                    .equals(other.actorDetails, actorDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(actorDetails);

  @JsonKey(ignore: true)
  @override
  _$ActorDetailsStateCopyWith<_ActorDetailsState> get copyWith =>
      __$ActorDetailsStateCopyWithImpl<_ActorDetailsState>(this, _$identity);
}

abstract class _ActorDetailsState implements ActorDetailsState {
  const factory _ActorDetailsState(
      {@required String errorMessage,
      @required bool isSearching,
      @required ActorDetails actorDetails}) = _$_ActorDetailsState;

  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  ActorDetails get actorDetails;
  @override
  @JsonKey(ignore: true)
  _$ActorDetailsStateCopyWith<_ActorDetailsState> get copyWith;
}
