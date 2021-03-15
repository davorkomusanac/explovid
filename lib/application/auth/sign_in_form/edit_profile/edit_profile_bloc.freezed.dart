// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

// ignore: unused_element
  _ConfirmEditProfilePressed confirmEditProfilePressed(
      {String fullName,
      String username,
      String bio,
      bool isUsernameAvailable}) {
    return _ConfirmEditProfilePressed(
      fullName: fullName,
      username: username,
      bio: bio,
      isUsernameAvailable: isUsernameAvailable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  String get fullName;
  String get username;
  String get bio;
  bool get isUsernameAvailable;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmEditProfilePressed(String fullName, String username,
            String bio, bool isUsernameAvailable),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmEditProfilePressed(
        String fullName, String username, String bio, bool isUsernameAvailable),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmEditProfilePressed(_ConfirmEditProfilePressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmEditProfilePressed(_ConfirmEditProfilePressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $EditProfileEventCopyWith<EditProfileEvent> get copyWith;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
  $Res call(
      {String fullName, String username, String bio, bool isUsernameAvailable});
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object username = freezed,
    Object bio = freezed,
    Object isUsernameAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      username: username == freezed ? _value.username : username as String,
      bio: bio == freezed ? _value.bio : bio as String,
      isUsernameAvailable: isUsernameAvailable == freezed
          ? _value.isUsernameAvailable
          : isUsernameAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmEditProfilePressedCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory _$ConfirmEditProfilePressedCopyWith(_ConfirmEditProfilePressed value,
          $Res Function(_ConfirmEditProfilePressed) then) =
      __$ConfirmEditProfilePressedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName, String username, String bio, bool isUsernameAvailable});
}

/// @nodoc
class __$ConfirmEditProfilePressedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$ConfirmEditProfilePressedCopyWith<$Res> {
  __$ConfirmEditProfilePressedCopyWithImpl(_ConfirmEditProfilePressed _value,
      $Res Function(_ConfirmEditProfilePressed) _then)
      : super(_value, (v) => _then(v as _ConfirmEditProfilePressed));

  @override
  _ConfirmEditProfilePressed get _value =>
      super._value as _ConfirmEditProfilePressed;

  @override
  $Res call({
    Object fullName = freezed,
    Object username = freezed,
    Object bio = freezed,
    Object isUsernameAvailable = freezed,
  }) {
    return _then(_ConfirmEditProfilePressed(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      username: username == freezed ? _value.username : username as String,
      bio: bio == freezed ? _value.bio : bio as String,
      isUsernameAvailable: isUsernameAvailable == freezed
          ? _value.isUsernameAvailable
          : isUsernameAvailable as bool,
    ));
  }
}

/// @nodoc
class _$_ConfirmEditProfilePressed implements _ConfirmEditProfilePressed {
  const _$_ConfirmEditProfilePressed(
      {this.fullName, this.username, this.bio, this.isUsernameAvailable});

  @override
  final String fullName;
  @override
  final String username;
  @override
  final String bio;
  @override
  final bool isUsernameAvailable;

  @override
  String toString() {
    return 'EditProfileEvent.confirmEditProfilePressed(fullName: $fullName, username: $username, bio: $bio, isUsernameAvailable: $isUsernameAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmEditProfilePressed &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.isUsernameAvailable, isUsernameAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isUsernameAvailable, isUsernameAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(isUsernameAvailable);

  @JsonKey(ignore: true)
  @override
  _$ConfirmEditProfilePressedCopyWith<_ConfirmEditProfilePressed>
      get copyWith =>
          __$ConfirmEditProfilePressedCopyWithImpl<_ConfirmEditProfilePressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmEditProfilePressed(String fullName, String username,
            String bio, bool isUsernameAvailable),
  }) {
    assert(confirmEditProfilePressed != null);
    return confirmEditProfilePressed(
        fullName, username, bio, isUsernameAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmEditProfilePressed(
        String fullName, String username, String bio, bool isUsernameAvailable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmEditProfilePressed != null) {
      return confirmEditProfilePressed(
          fullName, username, bio, isUsernameAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmEditProfilePressed(_ConfirmEditProfilePressed value),
  }) {
    assert(confirmEditProfilePressed != null);
    return confirmEditProfilePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmEditProfilePressed(_ConfirmEditProfilePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmEditProfilePressed != null) {
      return confirmEditProfilePressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEditProfilePressed implements EditProfileEvent {
  const factory _ConfirmEditProfilePressed(
      {String fullName,
      String username,
      String bio,
      bool isUsernameAvailable}) = _$_ConfirmEditProfilePressed;

  @override
  String get fullName;
  @override
  String get username;
  @override
  String get bio;
  @override
  bool get isUsernameAvailable;
  @override
  @JsonKey(ignore: true)
  _$ConfirmEditProfilePressedCopyWith<_ConfirmEditProfilePressed> get copyWith;
}

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

// ignore: unused_element
  _EditProfileState call(
      {@required String fullName,
      @required String username,
      @required String bio,
      @required String errorMessage,
      @required bool isSubmitting}) {
    return _EditProfileState(
      fullName: fullName,
      username: username,
      bio: bio,
      errorMessage: errorMessage,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  String get fullName;
  String get username;
  String get bio;
  String get errorMessage;
  bool get isSubmitting;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String username,
      String bio,
      String errorMessage,
      bool isSubmitting});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object username = freezed,
    Object bio = freezed,
    Object errorMessage = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      username: username == freezed ? _value.username : username as String,
      bio: bio == freezed ? _value.bio : bio as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String username,
      String bio,
      String errorMessage,
      bool isSubmitting});
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object fullName = freezed,
    Object username = freezed,
    Object bio = freezed,
    Object errorMessage = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_EditProfileState(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      username: username == freezed ? _value.username : username as String,
      bio: bio == freezed ? _value.bio : bio as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {@required this.fullName,
      @required this.username,
      @required this.bio,
      @required this.errorMessage,
      @required this.isSubmitting})
      : assert(fullName != null),
        assert(username != null),
        assert(bio != null),
        assert(errorMessage != null),
        assert(isSubmitting != null);

  @override
  final String fullName;
  @override
  final String username;
  @override
  final String bio;
  @override
  final String errorMessage;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'EditProfileState(fullName: $fullName, username: $username, bio: $bio, errorMessage: $errorMessage, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {@required String fullName,
      @required String username,
      @required String bio,
      @required String errorMessage,
      @required bool isSubmitting}) = _$_EditProfileState;

  @override
  String get fullName;
  @override
  String get username;
  @override
  String get bio;
  @override
  String get errorMessage;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith;
}
