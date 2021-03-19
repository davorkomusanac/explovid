// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'other_user_profile_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OtherUserProfileInformationEventTearOff {
  const _$OtherUserProfileInformationEventTearOff();

// ignore: unused_element
  _OtherUserProfileLoaded otherUserProfileLoaded(
      {@required String otherUserUid}) {
    return _OtherUserProfileLoaded(
      otherUserUid: otherUserUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherUserProfileInformationEvent =
    _$OtherUserProfileInformationEventTearOff();

/// @nodoc
mixin _$OtherUserProfileInformationEvent {
  String get otherUserUid;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult otherUserProfileLoaded(String otherUserUid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult otherUserProfileLoaded(String otherUserUid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult otherUserProfileLoaded(_OtherUserProfileLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult otherUserProfileLoaded(_OtherUserProfileLoaded value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $OtherUserProfileInformationEventCopyWith<OtherUserProfileInformationEvent>
      get copyWith;
}

/// @nodoc
abstract class $OtherUserProfileInformationEventCopyWith<$Res> {
  factory $OtherUserProfileInformationEventCopyWith(
          OtherUserProfileInformationEvent value,
          $Res Function(OtherUserProfileInformationEvent) then) =
      _$OtherUserProfileInformationEventCopyWithImpl<$Res>;
  $Res call({String otherUserUid});
}

/// @nodoc
class _$OtherUserProfileInformationEventCopyWithImpl<$Res>
    implements $OtherUserProfileInformationEventCopyWith<$Res> {
  _$OtherUserProfileInformationEventCopyWithImpl(this._value, this._then);

  final OtherUserProfileInformationEvent _value;
  // ignore: unused_field
  final $Res Function(OtherUserProfileInformationEvent) _then;

  @override
  $Res call({
    Object otherUserUid = freezed,
  }) {
    return _then(_value.copyWith(
      otherUserUid: otherUserUid == freezed
          ? _value.otherUserUid
          : otherUserUid as String,
    ));
  }
}

/// @nodoc
abstract class _$OtherUserProfileLoadedCopyWith<$Res>
    implements $OtherUserProfileInformationEventCopyWith<$Res> {
  factory _$OtherUserProfileLoadedCopyWith(_OtherUserProfileLoaded value,
          $Res Function(_OtherUserProfileLoaded) then) =
      __$OtherUserProfileLoadedCopyWithImpl<$Res>;
  @override
  $Res call({String otherUserUid});
}

/// @nodoc
class __$OtherUserProfileLoadedCopyWithImpl<$Res>
    extends _$OtherUserProfileInformationEventCopyWithImpl<$Res>
    implements _$OtherUserProfileLoadedCopyWith<$Res> {
  __$OtherUserProfileLoadedCopyWithImpl(_OtherUserProfileLoaded _value,
      $Res Function(_OtherUserProfileLoaded) _then)
      : super(_value, (v) => _then(v as _OtherUserProfileLoaded));

  @override
  _OtherUserProfileLoaded get _value => super._value as _OtherUserProfileLoaded;

  @override
  $Res call({
    Object otherUserUid = freezed,
  }) {
    return _then(_OtherUserProfileLoaded(
      otherUserUid: otherUserUid == freezed
          ? _value.otherUserUid
          : otherUserUid as String,
    ));
  }
}

/// @nodoc
class _$_OtherUserProfileLoaded implements _OtherUserProfileLoaded {
  const _$_OtherUserProfileLoaded({@required this.otherUserUid})
      : assert(otherUserUid != null);

  @override
  final String otherUserUid;

  @override
  String toString() {
    return 'OtherUserProfileInformationEvent.otherUserProfileLoaded(otherUserUid: $otherUserUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherUserProfileLoaded &&
            (identical(other.otherUserUid, otherUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserUid, otherUserUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserUid);

  @JsonKey(ignore: true)
  @override
  _$OtherUserProfileLoadedCopyWith<_OtherUserProfileLoaded> get copyWith =>
      __$OtherUserProfileLoadedCopyWithImpl<_OtherUserProfileLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult otherUserProfileLoaded(String otherUserUid),
  }) {
    assert(otherUserProfileLoaded != null);
    return otherUserProfileLoaded(otherUserUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult otherUserProfileLoaded(String otherUserUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (otherUserProfileLoaded != null) {
      return otherUserProfileLoaded(otherUserUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult otherUserProfileLoaded(_OtherUserProfileLoaded value),
  }) {
    assert(otherUserProfileLoaded != null);
    return otherUserProfileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult otherUserProfileLoaded(_OtherUserProfileLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (otherUserProfileLoaded != null) {
      return otherUserProfileLoaded(this);
    }
    return orElse();
  }
}

abstract class _OtherUserProfileLoaded
    implements OtherUserProfileInformationEvent {
  const factory _OtherUserProfileLoaded({@required String otherUserUid}) =
      _$_OtherUserProfileLoaded;

  @override
  String get otherUserUid;
  @override
  @JsonKey(ignore: true)
  _$OtherUserProfileLoadedCopyWith<_OtherUserProfileLoaded> get copyWith;
}

/// @nodoc
class _$OtherUserProfileInformationStateTearOff {
  const _$OtherUserProfileInformationStateTearOff();

// ignore: unused_element
  _OtherUserProfileInformationState call(
      {@required bool isSearching, @required OurUser ourUser}) {
    return _OtherUserProfileInformationState(
      isSearching: isSearching,
      ourUser: ourUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherUserProfileInformationState =
    _$OtherUserProfileInformationStateTearOff();

/// @nodoc
mixin _$OtherUserProfileInformationState {
  bool get isSearching;
  OurUser get ourUser;

  @JsonKey(ignore: true)
  $OtherUserProfileInformationStateCopyWith<OtherUserProfileInformationState>
      get copyWith;
}

/// @nodoc
abstract class $OtherUserProfileInformationStateCopyWith<$Res> {
  factory $OtherUserProfileInformationStateCopyWith(
          OtherUserProfileInformationState value,
          $Res Function(OtherUserProfileInformationState) then) =
      _$OtherUserProfileInformationStateCopyWithImpl<$Res>;
  $Res call({bool isSearching, OurUser ourUser});
}

/// @nodoc
class _$OtherUserProfileInformationStateCopyWithImpl<$Res>
    implements $OtherUserProfileInformationStateCopyWith<$Res> {
  _$OtherUserProfileInformationStateCopyWithImpl(this._value, this._then);

  final OtherUserProfileInformationState _value;
  // ignore: unused_field
  final $Res Function(OtherUserProfileInformationState) _then;

  @override
  $Res call({
    Object isSearching = freezed,
    Object ourUser = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      ourUser: ourUser == freezed ? _value.ourUser : ourUser as OurUser,
    ));
  }
}

/// @nodoc
abstract class _$OtherUserProfileInformationStateCopyWith<$Res>
    implements $OtherUserProfileInformationStateCopyWith<$Res> {
  factory _$OtherUserProfileInformationStateCopyWith(
          _OtherUserProfileInformationState value,
          $Res Function(_OtherUserProfileInformationState) then) =
      __$OtherUserProfileInformationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSearching, OurUser ourUser});
}

/// @nodoc
class __$OtherUserProfileInformationStateCopyWithImpl<$Res>
    extends _$OtherUserProfileInformationStateCopyWithImpl<$Res>
    implements _$OtherUserProfileInformationStateCopyWith<$Res> {
  __$OtherUserProfileInformationStateCopyWithImpl(
      _OtherUserProfileInformationState _value,
      $Res Function(_OtherUserProfileInformationState) _then)
      : super(_value, (v) => _then(v as _OtherUserProfileInformationState));

  @override
  _OtherUserProfileInformationState get _value =>
      super._value as _OtherUserProfileInformationState;

  @override
  $Res call({
    Object isSearching = freezed,
    Object ourUser = freezed,
  }) {
    return _then(_OtherUserProfileInformationState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      ourUser: ourUser == freezed ? _value.ourUser : ourUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_OtherUserProfileInformationState
    implements _OtherUserProfileInformationState {
  const _$_OtherUserProfileInformationState(
      {@required this.isSearching, @required this.ourUser})
      : assert(isSearching != null),
        assert(ourUser != null);

  @override
  final bool isSearching;
  @override
  final OurUser ourUser;

  @override
  String toString() {
    return 'OtherUserProfileInformationState(isSearching: $isSearching, ourUser: $ourUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherUserProfileInformationState &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.ourUser, ourUser) ||
                const DeepCollectionEquality().equals(other.ourUser, ourUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(ourUser);

  @JsonKey(ignore: true)
  @override
  _$OtherUserProfileInformationStateCopyWith<_OtherUserProfileInformationState>
      get copyWith => __$OtherUserProfileInformationStateCopyWithImpl<
          _OtherUserProfileInformationState>(this, _$identity);
}

abstract class _OtherUserProfileInformationState
    implements OtherUserProfileInformationState {
  const factory _OtherUserProfileInformationState(
      {@required bool isSearching,
      @required OurUser ourUser}) = _$_OtherUserProfileInformationState;

  @override
  bool get isSearching;
  @override
  OurUser get ourUser;
  @override
  @JsonKey(ignore: true)
  _$OtherUserProfileInformationStateCopyWith<_OtherUserProfileInformationState>
      get copyWith;
}
