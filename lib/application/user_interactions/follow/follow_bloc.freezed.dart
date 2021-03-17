// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'follow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowEventTearOff {
  const _$FollowEventTearOff();

// ignore: unused_element
  _CheckIfFollowingUserPressed checkIfFollowingUserPressed(
      {@required OurUser otherUser}) {
    return _CheckIfFollowingUserPressed(
      otherUser: otherUser,
    );
  }

// ignore: unused_element
  _FollowUserPressed followUserPressed({@required OurUser otherUser}) {
    return _FollowUserPressed(
      otherUser: otherUser,
    );
  }

// ignore: unused_element
  _UnfollowUserPressed unfollowUserPressed({@required OurUser otherUser}) {
    return _UnfollowUserPressed(
      otherUser: otherUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowEvent = _$FollowEventTearOff();

/// @nodoc
mixin _$FollowEvent {
  OurUser get otherUser;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIfFollowingUserPressed(OurUser otherUser),
    @required TResult followUserPressed(OurUser otherUser),
    @required TResult unfollowUserPressed(OurUser otherUser),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIfFollowingUserPressed(OurUser otherUser),
    TResult followUserPressed(OurUser otherUser),
    TResult unfollowUserPressed(OurUser otherUser),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    @required TResult followUserPressed(_FollowUserPressed value),
    @required TResult unfollowUserPressed(_UnfollowUserPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    TResult followUserPressed(_FollowUserPressed value),
    TResult unfollowUserPressed(_UnfollowUserPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FollowEventCopyWith<FollowEvent> get copyWith;
}

/// @nodoc
abstract class $FollowEventCopyWith<$Res> {
  factory $FollowEventCopyWith(
          FollowEvent value, $Res Function(FollowEvent) then) =
      _$FollowEventCopyWithImpl<$Res>;
  $Res call({OurUser otherUser});
}

/// @nodoc
class _$FollowEventCopyWithImpl<$Res> implements $FollowEventCopyWith<$Res> {
  _$FollowEventCopyWithImpl(this._value, this._then);

  final FollowEvent _value;
  // ignore: unused_field
  final $Res Function(FollowEvent) _then;

  @override
  $Res call({
    Object otherUser = freezed,
  }) {
    return _then(_value.copyWith(
      otherUser: otherUser == freezed ? _value.otherUser : otherUser as OurUser,
    ));
  }
}

/// @nodoc
abstract class _$CheckIfFollowingUserPressedCopyWith<$Res>
    implements $FollowEventCopyWith<$Res> {
  factory _$CheckIfFollowingUserPressedCopyWith(
          _CheckIfFollowingUserPressed value,
          $Res Function(_CheckIfFollowingUserPressed) then) =
      __$CheckIfFollowingUserPressedCopyWithImpl<$Res>;
  @override
  $Res call({OurUser otherUser});
}

/// @nodoc
class __$CheckIfFollowingUserPressedCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res>
    implements _$CheckIfFollowingUserPressedCopyWith<$Res> {
  __$CheckIfFollowingUserPressedCopyWithImpl(
      _CheckIfFollowingUserPressed _value,
      $Res Function(_CheckIfFollowingUserPressed) _then)
      : super(_value, (v) => _then(v as _CheckIfFollowingUserPressed));

  @override
  _CheckIfFollowingUserPressed get _value =>
      super._value as _CheckIfFollowingUserPressed;

  @override
  $Res call({
    Object otherUser = freezed,
  }) {
    return _then(_CheckIfFollowingUserPressed(
      otherUser: otherUser == freezed ? _value.otherUser : otherUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_CheckIfFollowingUserPressed implements _CheckIfFollowingUserPressed {
  const _$_CheckIfFollowingUserPressed({@required this.otherUser})
      : assert(otherUser != null);

  @override
  final OurUser otherUser;

  @override
  String toString() {
    return 'FollowEvent.checkIfFollowingUserPressed(otherUser: $otherUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckIfFollowingUserPressed &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUser);

  @JsonKey(ignore: true)
  @override
  _$CheckIfFollowingUserPressedCopyWith<_CheckIfFollowingUserPressed>
      get copyWith => __$CheckIfFollowingUserPressedCopyWithImpl<
          _CheckIfFollowingUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIfFollowingUserPressed(OurUser otherUser),
    @required TResult followUserPressed(OurUser otherUser),
    @required TResult unfollowUserPressed(OurUser otherUser),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return checkIfFollowingUserPressed(otherUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIfFollowingUserPressed(OurUser otherUser),
    TResult followUserPressed(OurUser otherUser),
    TResult unfollowUserPressed(OurUser otherUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIfFollowingUserPressed != null) {
      return checkIfFollowingUserPressed(otherUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    @required TResult followUserPressed(_FollowUserPressed value),
    @required TResult unfollowUserPressed(_UnfollowUserPressed value),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return checkIfFollowingUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    TResult followUserPressed(_FollowUserPressed value),
    TResult unfollowUserPressed(_UnfollowUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIfFollowingUserPressed != null) {
      return checkIfFollowingUserPressed(this);
    }
    return orElse();
  }
}

abstract class _CheckIfFollowingUserPressed implements FollowEvent {
  const factory _CheckIfFollowingUserPressed({@required OurUser otherUser}) =
      _$_CheckIfFollowingUserPressed;

  @override
  OurUser get otherUser;
  @override
  @JsonKey(ignore: true)
  _$CheckIfFollowingUserPressedCopyWith<_CheckIfFollowingUserPressed>
      get copyWith;
}

/// @nodoc
abstract class _$FollowUserPressedCopyWith<$Res>
    implements $FollowEventCopyWith<$Res> {
  factory _$FollowUserPressedCopyWith(
          _FollowUserPressed value, $Res Function(_FollowUserPressed) then) =
      __$FollowUserPressedCopyWithImpl<$Res>;
  @override
  $Res call({OurUser otherUser});
}

/// @nodoc
class __$FollowUserPressedCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res>
    implements _$FollowUserPressedCopyWith<$Res> {
  __$FollowUserPressedCopyWithImpl(
      _FollowUserPressed _value, $Res Function(_FollowUserPressed) _then)
      : super(_value, (v) => _then(v as _FollowUserPressed));

  @override
  _FollowUserPressed get _value => super._value as _FollowUserPressed;

  @override
  $Res call({
    Object otherUser = freezed,
  }) {
    return _then(_FollowUserPressed(
      otherUser: otherUser == freezed ? _value.otherUser : otherUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_FollowUserPressed implements _FollowUserPressed {
  const _$_FollowUserPressed({@required this.otherUser})
      : assert(otherUser != null);

  @override
  final OurUser otherUser;

  @override
  String toString() {
    return 'FollowEvent.followUserPressed(otherUser: $otherUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowUserPressed &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUser);

  @JsonKey(ignore: true)
  @override
  _$FollowUserPressedCopyWith<_FollowUserPressed> get copyWith =>
      __$FollowUserPressedCopyWithImpl<_FollowUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIfFollowingUserPressed(OurUser otherUser),
    @required TResult followUserPressed(OurUser otherUser),
    @required TResult unfollowUserPressed(OurUser otherUser),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return followUserPressed(otherUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIfFollowingUserPressed(OurUser otherUser),
    TResult followUserPressed(OurUser otherUser),
    TResult unfollowUserPressed(OurUser otherUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUserPressed != null) {
      return followUserPressed(otherUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    @required TResult followUserPressed(_FollowUserPressed value),
    @required TResult unfollowUserPressed(_UnfollowUserPressed value),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return followUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    TResult followUserPressed(_FollowUserPressed value),
    TResult unfollowUserPressed(_UnfollowUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUserPressed != null) {
      return followUserPressed(this);
    }
    return orElse();
  }
}

abstract class _FollowUserPressed implements FollowEvent {
  const factory _FollowUserPressed({@required OurUser otherUser}) =
      _$_FollowUserPressed;

  @override
  OurUser get otherUser;
  @override
  @JsonKey(ignore: true)
  _$FollowUserPressedCopyWith<_FollowUserPressed> get copyWith;
}

/// @nodoc
abstract class _$UnfollowUserPressedCopyWith<$Res>
    implements $FollowEventCopyWith<$Res> {
  factory _$UnfollowUserPressedCopyWith(_UnfollowUserPressed value,
          $Res Function(_UnfollowUserPressed) then) =
      __$UnfollowUserPressedCopyWithImpl<$Res>;
  @override
  $Res call({OurUser otherUser});
}

/// @nodoc
class __$UnfollowUserPressedCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res>
    implements _$UnfollowUserPressedCopyWith<$Res> {
  __$UnfollowUserPressedCopyWithImpl(
      _UnfollowUserPressed _value, $Res Function(_UnfollowUserPressed) _then)
      : super(_value, (v) => _then(v as _UnfollowUserPressed));

  @override
  _UnfollowUserPressed get _value => super._value as _UnfollowUserPressed;

  @override
  $Res call({
    Object otherUser = freezed,
  }) {
    return _then(_UnfollowUserPressed(
      otherUser: otherUser == freezed ? _value.otherUser : otherUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_UnfollowUserPressed implements _UnfollowUserPressed {
  const _$_UnfollowUserPressed({@required this.otherUser})
      : assert(otherUser != null);

  @override
  final OurUser otherUser;

  @override
  String toString() {
    return 'FollowEvent.unfollowUserPressed(otherUser: $otherUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnfollowUserPressed &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUser);

  @JsonKey(ignore: true)
  @override
  _$UnfollowUserPressedCopyWith<_UnfollowUserPressed> get copyWith =>
      __$UnfollowUserPressedCopyWithImpl<_UnfollowUserPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIfFollowingUserPressed(OurUser otherUser),
    @required TResult followUserPressed(OurUser otherUser),
    @required TResult unfollowUserPressed(OurUser otherUser),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return unfollowUserPressed(otherUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIfFollowingUserPressed(OurUser otherUser),
    TResult followUserPressed(OurUser otherUser),
    TResult unfollowUserPressed(OurUser otherUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unfollowUserPressed != null) {
      return unfollowUserPressed(otherUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    @required TResult followUserPressed(_FollowUserPressed value),
    @required TResult unfollowUserPressed(_UnfollowUserPressed value),
  }) {
    assert(checkIfFollowingUserPressed != null);
    assert(followUserPressed != null);
    assert(unfollowUserPressed != null);
    return unfollowUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIfFollowingUserPressed(_CheckIfFollowingUserPressed value),
    TResult followUserPressed(_FollowUserPressed value),
    TResult unfollowUserPressed(_UnfollowUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unfollowUserPressed != null) {
      return unfollowUserPressed(this);
    }
    return orElse();
  }
}

abstract class _UnfollowUserPressed implements FollowEvent {
  const factory _UnfollowUserPressed({@required OurUser otherUser}) =
      _$_UnfollowUserPressed;

  @override
  OurUser get otherUser;
  @override
  @JsonKey(ignore: true)
  _$UnfollowUserPressedCopyWith<_UnfollowUserPressed> get copyWith;
}

/// @nodoc
class _$FollowStateTearOff {
  const _$FollowStateTearOff();

// ignore: unused_element
  _FollowState call(
      {@required bool isSubmitting,
      @required bool isFollowing,
      @required String errorMessage}) {
    return _FollowState(
      isSubmitting: isSubmitting,
      isFollowing: isFollowing,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowState = _$FollowStateTearOff();

/// @nodoc
mixin _$FollowState {
  bool get isSubmitting;
  bool get isFollowing;
  String get errorMessage;

  @JsonKey(ignore: true)
  $FollowStateCopyWith<FollowState> get copyWith;
}

/// @nodoc
abstract class $FollowStateCopyWith<$Res> {
  factory $FollowStateCopyWith(
          FollowState value, $Res Function(FollowState) then) =
      _$FollowStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, bool isFollowing, String errorMessage});
}

/// @nodoc
class _$FollowStateCopyWithImpl<$Res> implements $FollowStateCopyWith<$Res> {
  _$FollowStateCopyWithImpl(this._value, this._then);

  final FollowState _value;
  // ignore: unused_field
  final $Res Function(FollowState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isFollowing = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowStateCopyWith<$Res>
    implements $FollowStateCopyWith<$Res> {
  factory _$FollowStateCopyWith(
          _FollowState value, $Res Function(_FollowState) then) =
      __$FollowStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, bool isFollowing, String errorMessage});
}

/// @nodoc
class __$FollowStateCopyWithImpl<$Res> extends _$FollowStateCopyWithImpl<$Res>
    implements _$FollowStateCopyWith<$Res> {
  __$FollowStateCopyWithImpl(
      _FollowState _value, $Res Function(_FollowState) _then)
      : super(_value, (v) => _then(v as _FollowState));

  @override
  _FollowState get _value => super._value as _FollowState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isFollowing = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_FollowState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_FollowState implements _FollowState {
  const _$_FollowState(
      {@required this.isSubmitting,
      @required this.isFollowing,
      @required this.errorMessage})
      : assert(isSubmitting != null),
        assert(isFollowing != null),
        assert(errorMessage != null);

  @override
  final bool isSubmitting;
  @override
  final bool isFollowing;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FollowState(isSubmitting: $isSubmitting, isFollowing: $isFollowing, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isFollowing) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$FollowStateCopyWith<_FollowState> get copyWith =>
      __$FollowStateCopyWithImpl<_FollowState>(this, _$identity);
}

abstract class _FollowState implements FollowState {
  const factory _FollowState(
      {@required bool isSubmitting,
      @required bool isFollowing,
      @required String errorMessage}) = _$_FollowState;

  @override
  bool get isSubmitting;
  @override
  bool get isFollowing;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$FollowStateCopyWith<_FollowState> get copyWith;
}
