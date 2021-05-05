// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'block_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BlockUserEventTearOff {
  const _$BlockUserEventTearOff();

// ignore: unused_element
  _LoadInitialListOfBlockedUsersPressed loadInitialListOfBlockedUsersPressed() {
    return const _LoadInitialListOfBlockedUsersPressed();
  }

// ignore: unused_element
  _BlockUserPressed blockUserPressed({@required String blockedUserUid}) {
    return _BlockUserPressed(
      blockedUserUid: blockedUserUid,
    );
  }

// ignore: unused_element
  _UnblockUserPressed unblockUserPressed({@required String blockedUserUid}) {
    return _UnblockUserPressed(
      blockedUserUid: blockedUserUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BlockUserEvent = _$BlockUserEventTearOff();

/// @nodoc
mixin _$BlockUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialListOfBlockedUsersPressed(),
    @required TResult blockUserPressed(String blockedUserUid),
    @required TResult unblockUserPressed(String blockedUserUid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(),
    TResult blockUserPressed(String blockedUserUid),
    TResult unblockUserPressed(String blockedUserUid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadInitialListOfBlockedUsersPressed(
            _LoadInitialListOfBlockedUsersPressed value),
    @required TResult blockUserPressed(_BlockUserPressed value),
    @required TResult unblockUserPressed(_UnblockUserPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(
        _LoadInitialListOfBlockedUsersPressed value),
    TResult blockUserPressed(_BlockUserPressed value),
    TResult unblockUserPressed(_UnblockUserPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BlockUserEventCopyWith<$Res> {
  factory $BlockUserEventCopyWith(
          BlockUserEvent value, $Res Function(BlockUserEvent) then) =
      _$BlockUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlockUserEventCopyWithImpl<$Res>
    implements $BlockUserEventCopyWith<$Res> {
  _$BlockUserEventCopyWithImpl(this._value, this._then);

  final BlockUserEvent _value;
  // ignore: unused_field
  final $Res Function(BlockUserEvent) _then;
}

/// @nodoc
abstract class _$LoadInitialListOfBlockedUsersPressedCopyWith<$Res> {
  factory _$LoadInitialListOfBlockedUsersPressedCopyWith(
          _LoadInitialListOfBlockedUsersPressed value,
          $Res Function(_LoadInitialListOfBlockedUsersPressed) then) =
      __$LoadInitialListOfBlockedUsersPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInitialListOfBlockedUsersPressedCopyWithImpl<$Res>
    extends _$BlockUserEventCopyWithImpl<$Res>
    implements _$LoadInitialListOfBlockedUsersPressedCopyWith<$Res> {
  __$LoadInitialListOfBlockedUsersPressedCopyWithImpl(
      _LoadInitialListOfBlockedUsersPressed _value,
      $Res Function(_LoadInitialListOfBlockedUsersPressed) _then)
      : super(_value, (v) => _then(v as _LoadInitialListOfBlockedUsersPressed));

  @override
  _LoadInitialListOfBlockedUsersPressed get _value =>
      super._value as _LoadInitialListOfBlockedUsersPressed;
}

/// @nodoc
class _$_LoadInitialListOfBlockedUsersPressed
    implements _LoadInitialListOfBlockedUsersPressed {
  const _$_LoadInitialListOfBlockedUsersPressed();

  @override
  String toString() {
    return 'BlockUserEvent.loadInitialListOfBlockedUsersPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInitialListOfBlockedUsersPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialListOfBlockedUsersPressed(),
    @required TResult blockUserPressed(String blockedUserUid),
    @required TResult unblockUserPressed(String blockedUserUid),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return loadInitialListOfBlockedUsersPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(),
    TResult blockUserPressed(String blockedUserUid),
    TResult unblockUserPressed(String blockedUserUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInitialListOfBlockedUsersPressed != null) {
      return loadInitialListOfBlockedUsersPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadInitialListOfBlockedUsersPressed(
            _LoadInitialListOfBlockedUsersPressed value),
    @required TResult blockUserPressed(_BlockUserPressed value),
    @required TResult unblockUserPressed(_UnblockUserPressed value),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return loadInitialListOfBlockedUsersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(
        _LoadInitialListOfBlockedUsersPressed value),
    TResult blockUserPressed(_BlockUserPressed value),
    TResult unblockUserPressed(_UnblockUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInitialListOfBlockedUsersPressed != null) {
      return loadInitialListOfBlockedUsersPressed(this);
    }
    return orElse();
  }
}

abstract class _LoadInitialListOfBlockedUsersPressed implements BlockUserEvent {
  const factory _LoadInitialListOfBlockedUsersPressed() =
      _$_LoadInitialListOfBlockedUsersPressed;
}

/// @nodoc
abstract class _$BlockUserPressedCopyWith<$Res> {
  factory _$BlockUserPressedCopyWith(
          _BlockUserPressed value, $Res Function(_BlockUserPressed) then) =
      __$BlockUserPressedCopyWithImpl<$Res>;
  $Res call({String blockedUserUid});
}

/// @nodoc
class __$BlockUserPressedCopyWithImpl<$Res>
    extends _$BlockUserEventCopyWithImpl<$Res>
    implements _$BlockUserPressedCopyWith<$Res> {
  __$BlockUserPressedCopyWithImpl(
      _BlockUserPressed _value, $Res Function(_BlockUserPressed) _then)
      : super(_value, (v) => _then(v as _BlockUserPressed));

  @override
  _BlockUserPressed get _value => super._value as _BlockUserPressed;

  @override
  $Res call({
    Object blockedUserUid = freezed,
  }) {
    return _then(_BlockUserPressed(
      blockedUserUid: blockedUserUid == freezed
          ? _value.blockedUserUid
          : blockedUserUid as String,
    ));
  }
}

/// @nodoc
class _$_BlockUserPressed implements _BlockUserPressed {
  const _$_BlockUserPressed({@required this.blockedUserUid})
      : assert(blockedUserUid != null);

  @override
  final String blockedUserUid;

  @override
  String toString() {
    return 'BlockUserEvent.blockUserPressed(blockedUserUid: $blockedUserUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockUserPressed &&
            (identical(other.blockedUserUid, blockedUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.blockedUserUid, blockedUserUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blockedUserUid);

  @JsonKey(ignore: true)
  @override
  _$BlockUserPressedCopyWith<_BlockUserPressed> get copyWith =>
      __$BlockUserPressedCopyWithImpl<_BlockUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialListOfBlockedUsersPressed(),
    @required TResult blockUserPressed(String blockedUserUid),
    @required TResult unblockUserPressed(String blockedUserUid),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return blockUserPressed(blockedUserUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(),
    TResult blockUserPressed(String blockedUserUid),
    TResult unblockUserPressed(String blockedUserUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blockUserPressed != null) {
      return blockUserPressed(blockedUserUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadInitialListOfBlockedUsersPressed(
            _LoadInitialListOfBlockedUsersPressed value),
    @required TResult blockUserPressed(_BlockUserPressed value),
    @required TResult unblockUserPressed(_UnblockUserPressed value),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return blockUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(
        _LoadInitialListOfBlockedUsersPressed value),
    TResult blockUserPressed(_BlockUserPressed value),
    TResult unblockUserPressed(_UnblockUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blockUserPressed != null) {
      return blockUserPressed(this);
    }
    return orElse();
  }
}

abstract class _BlockUserPressed implements BlockUserEvent {
  const factory _BlockUserPressed({@required String blockedUserUid}) =
      _$_BlockUserPressed;

  String get blockedUserUid;
  @JsonKey(ignore: true)
  _$BlockUserPressedCopyWith<_BlockUserPressed> get copyWith;
}

/// @nodoc
abstract class _$UnblockUserPressedCopyWith<$Res> {
  factory _$UnblockUserPressedCopyWith(
          _UnblockUserPressed value, $Res Function(_UnblockUserPressed) then) =
      __$UnblockUserPressedCopyWithImpl<$Res>;
  $Res call({String blockedUserUid});
}

/// @nodoc
class __$UnblockUserPressedCopyWithImpl<$Res>
    extends _$BlockUserEventCopyWithImpl<$Res>
    implements _$UnblockUserPressedCopyWith<$Res> {
  __$UnblockUserPressedCopyWithImpl(
      _UnblockUserPressed _value, $Res Function(_UnblockUserPressed) _then)
      : super(_value, (v) => _then(v as _UnblockUserPressed));

  @override
  _UnblockUserPressed get _value => super._value as _UnblockUserPressed;

  @override
  $Res call({
    Object blockedUserUid = freezed,
  }) {
    return _then(_UnblockUserPressed(
      blockedUserUid: blockedUserUid == freezed
          ? _value.blockedUserUid
          : blockedUserUid as String,
    ));
  }
}

/// @nodoc
class _$_UnblockUserPressed implements _UnblockUserPressed {
  const _$_UnblockUserPressed({@required this.blockedUserUid})
      : assert(blockedUserUid != null);

  @override
  final String blockedUserUid;

  @override
  String toString() {
    return 'BlockUserEvent.unblockUserPressed(blockedUserUid: $blockedUserUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnblockUserPressed &&
            (identical(other.blockedUserUid, blockedUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.blockedUserUid, blockedUserUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blockedUserUid);

  @JsonKey(ignore: true)
  @override
  _$UnblockUserPressedCopyWith<_UnblockUserPressed> get copyWith =>
      __$UnblockUserPressedCopyWithImpl<_UnblockUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialListOfBlockedUsersPressed(),
    @required TResult blockUserPressed(String blockedUserUid),
    @required TResult unblockUserPressed(String blockedUserUid),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return unblockUserPressed(blockedUserUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(),
    TResult blockUserPressed(String blockedUserUid),
    TResult unblockUserPressed(String blockedUserUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unblockUserPressed != null) {
      return unblockUserPressed(blockedUserUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadInitialListOfBlockedUsersPressed(
            _LoadInitialListOfBlockedUsersPressed value),
    @required TResult blockUserPressed(_BlockUserPressed value),
    @required TResult unblockUserPressed(_UnblockUserPressed value),
  }) {
    assert(loadInitialListOfBlockedUsersPressed != null);
    assert(blockUserPressed != null);
    assert(unblockUserPressed != null);
    return unblockUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialListOfBlockedUsersPressed(
        _LoadInitialListOfBlockedUsersPressed value),
    TResult blockUserPressed(_BlockUserPressed value),
    TResult unblockUserPressed(_UnblockUserPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unblockUserPressed != null) {
      return unblockUserPressed(this);
    }
    return orElse();
  }
}

abstract class _UnblockUserPressed implements BlockUserEvent {
  const factory _UnblockUserPressed({@required String blockedUserUid}) =
      _$_UnblockUserPressed;

  String get blockedUserUid;
  @JsonKey(ignore: true)
  _$UnblockUserPressedCopyWith<_UnblockUserPressed> get copyWith;
}

/// @nodoc
class _$BlockUserStateTearOff {
  const _$BlockUserStateTearOff();

// ignore: unused_element
  _BlockUserState call(
      {@required String errorMessage,
      @required int numberToForceUpdateState,
      @required List<String> blockedUsers,
      @required List<String> usersBlockedBy}) {
    return _BlockUserState(
      errorMessage: errorMessage,
      numberToForceUpdateState: numberToForceUpdateState,
      blockedUsers: blockedUsers,
      usersBlockedBy: usersBlockedBy,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BlockUserState = _$BlockUserStateTearOff();

/// @nodoc
mixin _$BlockUserState {
  String get errorMessage;
  int get numberToForceUpdateState;
  List<String> get blockedUsers;
  List<String> get usersBlockedBy;

  @JsonKey(ignore: true)
  $BlockUserStateCopyWith<BlockUserState> get copyWith;
}

/// @nodoc
abstract class $BlockUserStateCopyWith<$Res> {
  factory $BlockUserStateCopyWith(
          BlockUserState value, $Res Function(BlockUserState) then) =
      _$BlockUserStateCopyWithImpl<$Res>;
  $Res call(
      {String errorMessage,
      int numberToForceUpdateState,
      List<String> blockedUsers,
      List<String> usersBlockedBy});
}

/// @nodoc
class _$BlockUserStateCopyWithImpl<$Res>
    implements $BlockUserStateCopyWith<$Res> {
  _$BlockUserStateCopyWithImpl(this._value, this._then);

  final BlockUserState _value;
  // ignore: unused_field
  final $Res Function(BlockUserState) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object numberToForceUpdateState = freezed,
    Object blockedUsers = freezed,
    Object usersBlockedBy = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      numberToForceUpdateState: numberToForceUpdateState == freezed
          ? _value.numberToForceUpdateState
          : numberToForceUpdateState as int,
      blockedUsers: blockedUsers == freezed
          ? _value.blockedUsers
          : blockedUsers as List<String>,
      usersBlockedBy: usersBlockedBy == freezed
          ? _value.usersBlockedBy
          : usersBlockedBy as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BlockUserStateCopyWith<$Res>
    implements $BlockUserStateCopyWith<$Res> {
  factory _$BlockUserStateCopyWith(
          _BlockUserState value, $Res Function(_BlockUserState) then) =
      __$BlockUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorMessage,
      int numberToForceUpdateState,
      List<String> blockedUsers,
      List<String> usersBlockedBy});
}

/// @nodoc
class __$BlockUserStateCopyWithImpl<$Res>
    extends _$BlockUserStateCopyWithImpl<$Res>
    implements _$BlockUserStateCopyWith<$Res> {
  __$BlockUserStateCopyWithImpl(
      _BlockUserState _value, $Res Function(_BlockUserState) _then)
      : super(_value, (v) => _then(v as _BlockUserState));

  @override
  _BlockUserState get _value => super._value as _BlockUserState;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object numberToForceUpdateState = freezed,
    Object blockedUsers = freezed,
    Object usersBlockedBy = freezed,
  }) {
    return _then(_BlockUserState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      numberToForceUpdateState: numberToForceUpdateState == freezed
          ? _value.numberToForceUpdateState
          : numberToForceUpdateState as int,
      blockedUsers: blockedUsers == freezed
          ? _value.blockedUsers
          : blockedUsers as List<String>,
      usersBlockedBy: usersBlockedBy == freezed
          ? _value.usersBlockedBy
          : usersBlockedBy as List<String>,
    ));
  }
}

/// @nodoc
class _$_BlockUserState implements _BlockUserState {
  const _$_BlockUserState(
      {@required this.errorMessage,
      @required this.numberToForceUpdateState,
      @required this.blockedUsers,
      @required this.usersBlockedBy})
      : assert(errorMessage != null),
        assert(numberToForceUpdateState != null),
        assert(blockedUsers != null),
        assert(usersBlockedBy != null);

  @override
  final String errorMessage;
  @override
  final int numberToForceUpdateState;
  @override
  final List<String> blockedUsers;
  @override
  final List<String> usersBlockedBy;

  @override
  String toString() {
    return 'BlockUserState(errorMessage: $errorMessage, numberToForceUpdateState: $numberToForceUpdateState, blockedUsers: $blockedUsers, usersBlockedBy: $usersBlockedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockUserState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(
                    other.numberToForceUpdateState, numberToForceUpdateState) ||
                const DeepCollectionEquality().equals(
                    other.numberToForceUpdateState,
                    numberToForceUpdateState)) &&
            (identical(other.blockedUsers, blockedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.blockedUsers, blockedUsers)) &&
            (identical(other.usersBlockedBy, usersBlockedBy) ||
                const DeepCollectionEquality()
                    .equals(other.usersBlockedBy, usersBlockedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(numberToForceUpdateState) ^
      const DeepCollectionEquality().hash(blockedUsers) ^
      const DeepCollectionEquality().hash(usersBlockedBy);

  @JsonKey(ignore: true)
  @override
  _$BlockUserStateCopyWith<_BlockUserState> get copyWith =>
      __$BlockUserStateCopyWithImpl<_BlockUserState>(this, _$identity);
}

abstract class _BlockUserState implements BlockUserState {
  const factory _BlockUserState(
      {@required String errorMessage,
      @required int numberToForceUpdateState,
      @required List<String> blockedUsers,
      @required List<String> usersBlockedBy}) = _$_BlockUserState;

  @override
  String get errorMessage;
  @override
  int get numberToForceUpdateState;
  @override
  List<String> get blockedUsers;
  @override
  List<String> get usersBlockedBy;
  @override
  @JsonKey(ignore: true)
  _$BlockUserStateCopyWith<_BlockUserState> get copyWith;
}
