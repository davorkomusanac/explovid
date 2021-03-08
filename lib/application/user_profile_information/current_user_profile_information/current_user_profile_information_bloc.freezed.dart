// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_user_profile_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurrentUserProfileInformationEventTearOff {
  const _$CurrentUserProfileInformationEventTearOff();

// ignore: unused_element
  _LoadCurrentUserProfilePressed loadCurrentUserProfilePressed() {
    return const _LoadCurrentUserProfilePressed();
  }

// ignore: unused_element
  _CurrentUserProfileLoaded currentUserProfileLoaded(OurUser ourUser) {
    return _CurrentUserProfileLoaded(
      ourUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentUserProfileInformationEvent =
    _$CurrentUserProfileInformationEventTearOff();

/// @nodoc
mixin _$CurrentUserProfileInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCurrentUserProfilePressed(),
    @required TResult currentUserProfileLoaded(OurUser ourUser),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(),
    TResult currentUserProfileLoaded(OurUser ourUser),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadCurrentUserProfilePressed(
            _LoadCurrentUserProfilePressed value),
    @required TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(_LoadCurrentUserProfilePressed value),
    TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CurrentUserProfileInformationEventCopyWith<$Res> {
  factory $CurrentUserProfileInformationEventCopyWith(
          CurrentUserProfileInformationEvent value,
          $Res Function(CurrentUserProfileInformationEvent) then) =
      _$CurrentUserProfileInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserProfileInformationEventCopyWithImpl<$Res>
    implements $CurrentUserProfileInformationEventCopyWith<$Res> {
  _$CurrentUserProfileInformationEventCopyWithImpl(this._value, this._then);

  final CurrentUserProfileInformationEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentUserProfileInformationEvent) _then;
}

/// @nodoc
abstract class _$LoadCurrentUserProfilePressedCopyWith<$Res> {
  factory _$LoadCurrentUserProfilePressedCopyWith(
          _LoadCurrentUserProfilePressed value,
          $Res Function(_LoadCurrentUserProfilePressed) then) =
      __$LoadCurrentUserProfilePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCurrentUserProfilePressedCopyWithImpl<$Res>
    extends _$CurrentUserProfileInformationEventCopyWithImpl<$Res>
    implements _$LoadCurrentUserProfilePressedCopyWith<$Res> {
  __$LoadCurrentUserProfilePressedCopyWithImpl(
      _LoadCurrentUserProfilePressed _value,
      $Res Function(_LoadCurrentUserProfilePressed) _then)
      : super(_value, (v) => _then(v as _LoadCurrentUserProfilePressed));

  @override
  _LoadCurrentUserProfilePressed get _value =>
      super._value as _LoadCurrentUserProfilePressed;
}

/// @nodoc
class _$_LoadCurrentUserProfilePressed
    implements _LoadCurrentUserProfilePressed {
  const _$_LoadCurrentUserProfilePressed();

  @override
  String toString() {
    return 'CurrentUserProfileInformationEvent.loadCurrentUserProfilePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadCurrentUserProfilePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCurrentUserProfilePressed(),
    @required TResult currentUserProfileLoaded(OurUser ourUser),
  }) {
    assert(loadCurrentUserProfilePressed != null);
    assert(currentUserProfileLoaded != null);
    return loadCurrentUserProfilePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(),
    TResult currentUserProfileLoaded(OurUser ourUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentUserProfilePressed != null) {
      return loadCurrentUserProfilePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadCurrentUserProfilePressed(
            _LoadCurrentUserProfilePressed value),
    @required TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
  }) {
    assert(loadCurrentUserProfilePressed != null);
    assert(currentUserProfileLoaded != null);
    return loadCurrentUserProfilePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(_LoadCurrentUserProfilePressed value),
    TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentUserProfilePressed != null) {
      return loadCurrentUserProfilePressed(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentUserProfilePressed
    implements CurrentUserProfileInformationEvent {
  const factory _LoadCurrentUserProfilePressed() =
      _$_LoadCurrentUserProfilePressed;
}

/// @nodoc
abstract class _$CurrentUserProfileLoadedCopyWith<$Res> {
  factory _$CurrentUserProfileLoadedCopyWith(_CurrentUserProfileLoaded value,
          $Res Function(_CurrentUserProfileLoaded) then) =
      __$CurrentUserProfileLoadedCopyWithImpl<$Res>;
  $Res call({OurUser ourUser});
}

/// @nodoc
class __$CurrentUserProfileLoadedCopyWithImpl<$Res>
    extends _$CurrentUserProfileInformationEventCopyWithImpl<$Res>
    implements _$CurrentUserProfileLoadedCopyWith<$Res> {
  __$CurrentUserProfileLoadedCopyWithImpl(_CurrentUserProfileLoaded _value,
      $Res Function(_CurrentUserProfileLoaded) _then)
      : super(_value, (v) => _then(v as _CurrentUserProfileLoaded));

  @override
  _CurrentUserProfileLoaded get _value =>
      super._value as _CurrentUserProfileLoaded;

  @override
  $Res call({
    Object ourUser = freezed,
  }) {
    return _then(_CurrentUserProfileLoaded(
      ourUser == freezed ? _value.ourUser : ourUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_CurrentUserProfileLoaded implements _CurrentUserProfileLoaded {
  const _$_CurrentUserProfileLoaded(this.ourUser) : assert(ourUser != null);

  @override
  final OurUser ourUser;

  @override
  String toString() {
    return 'CurrentUserProfileInformationEvent.currentUserProfileLoaded(ourUser: $ourUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentUserProfileLoaded &&
            (identical(other.ourUser, ourUser) ||
                const DeepCollectionEquality().equals(other.ourUser, ourUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ourUser);

  @JsonKey(ignore: true)
  @override
  _$CurrentUserProfileLoadedCopyWith<_CurrentUserProfileLoaded> get copyWith =>
      __$CurrentUserProfileLoadedCopyWithImpl<_CurrentUserProfileLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCurrentUserProfilePressed(),
    @required TResult currentUserProfileLoaded(OurUser ourUser),
  }) {
    assert(loadCurrentUserProfilePressed != null);
    assert(currentUserProfileLoaded != null);
    return currentUserProfileLoaded(ourUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(),
    TResult currentUserProfileLoaded(OurUser ourUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentUserProfileLoaded != null) {
      return currentUserProfileLoaded(ourUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult loadCurrentUserProfilePressed(
            _LoadCurrentUserProfilePressed value),
    @required TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
  }) {
    assert(loadCurrentUserProfilePressed != null);
    assert(currentUserProfileLoaded != null);
    return currentUserProfileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCurrentUserProfilePressed(_LoadCurrentUserProfilePressed value),
    TResult currentUserProfileLoaded(_CurrentUserProfileLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentUserProfileLoaded != null) {
      return currentUserProfileLoaded(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserProfileLoaded
    implements CurrentUserProfileInformationEvent {
  const factory _CurrentUserProfileLoaded(OurUser ourUser) =
      _$_CurrentUserProfileLoaded;

  OurUser get ourUser;
  @JsonKey(ignore: true)
  _$CurrentUserProfileLoadedCopyWith<_CurrentUserProfileLoaded> get copyWith;
}

/// @nodoc
class _$CurrentUserProfileInformationStateTearOff {
  const _$CurrentUserProfileInformationStateTearOff();

// ignore: unused_element
  _CurrentUserProfileInformationState call(
      {@required bool isSearching, @required OurUser ourUser}) {
    return _CurrentUserProfileInformationState(
      isSearching: isSearching,
      ourUser: ourUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentUserProfileInformationState =
    _$CurrentUserProfileInformationStateTearOff();

/// @nodoc
mixin _$CurrentUserProfileInformationState {
  bool get isSearching;
  OurUser get ourUser;

  @JsonKey(ignore: true)
  $CurrentUserProfileInformationStateCopyWith<
      CurrentUserProfileInformationState> get copyWith;
}

/// @nodoc
abstract class $CurrentUserProfileInformationStateCopyWith<$Res> {
  factory $CurrentUserProfileInformationStateCopyWith(
          CurrentUserProfileInformationState value,
          $Res Function(CurrentUserProfileInformationState) then) =
      _$CurrentUserProfileInformationStateCopyWithImpl<$Res>;
  $Res call({bool isSearching, OurUser ourUser});
}

/// @nodoc
class _$CurrentUserProfileInformationStateCopyWithImpl<$Res>
    implements $CurrentUserProfileInformationStateCopyWith<$Res> {
  _$CurrentUserProfileInformationStateCopyWithImpl(this._value, this._then);

  final CurrentUserProfileInformationState _value;
  // ignore: unused_field
  final $Res Function(CurrentUserProfileInformationState) _then;

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
abstract class _$CurrentUserProfileInformationStateCopyWith<$Res>
    implements $CurrentUserProfileInformationStateCopyWith<$Res> {
  factory _$CurrentUserProfileInformationStateCopyWith(
          _CurrentUserProfileInformationState value,
          $Res Function(_CurrentUserProfileInformationState) then) =
      __$CurrentUserProfileInformationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSearching, OurUser ourUser});
}

/// @nodoc
class __$CurrentUserProfileInformationStateCopyWithImpl<$Res>
    extends _$CurrentUserProfileInformationStateCopyWithImpl<$Res>
    implements _$CurrentUserProfileInformationStateCopyWith<$Res> {
  __$CurrentUserProfileInformationStateCopyWithImpl(
      _CurrentUserProfileInformationState _value,
      $Res Function(_CurrentUserProfileInformationState) _then)
      : super(_value, (v) => _then(v as _CurrentUserProfileInformationState));

  @override
  _CurrentUserProfileInformationState get _value =>
      super._value as _CurrentUserProfileInformationState;

  @override
  $Res call({
    Object isSearching = freezed,
    Object ourUser = freezed,
  }) {
    return _then(_CurrentUserProfileInformationState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      ourUser: ourUser == freezed ? _value.ourUser : ourUser as OurUser,
    ));
  }
}

/// @nodoc
class _$_CurrentUserProfileInformationState
    implements _CurrentUserProfileInformationState {
  const _$_CurrentUserProfileInformationState(
      {@required this.isSearching, @required this.ourUser})
      : assert(isSearching != null),
        assert(ourUser != null);

  @override
  final bool isSearching;
  @override
  final OurUser ourUser;

  @override
  String toString() {
    return 'CurrentUserProfileInformationState(isSearching: $isSearching, ourUser: $ourUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentUserProfileInformationState &&
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
  _$CurrentUserProfileInformationStateCopyWith<
          _CurrentUserProfileInformationState>
      get copyWith => __$CurrentUserProfileInformationStateCopyWithImpl<
          _CurrentUserProfileInformationState>(this, _$identity);
}

abstract class _CurrentUserProfileInformationState
    implements CurrentUserProfileInformationState {
  const factory _CurrentUserProfileInformationState(
      {@required bool isSearching,
      @required OurUser ourUser}) = _$_CurrentUserProfileInformationState;

  @override
  bool get isSearching;
  @override
  OurUser get ourUser;
  @override
  @JsonKey(ignore: true)
  _$CurrentUserProfileInformationStateCopyWith<
      _CurrentUserProfileInformationState> get copyWith;
}
