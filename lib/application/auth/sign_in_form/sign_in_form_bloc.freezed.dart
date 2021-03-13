// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _FullNameChanged fullNameChanged(String fullName) {
    return _FullNameChanged(
      fullName,
    );
  }

// ignore: unused_element
  _UsernameChanged usernameChanged() {
    return const _UsernameChanged();
  }

// ignore: unused_element
  _UsernameBeingChecked usernameBeingChecked(String username) {
    return _UsernameBeingChecked(
      username,
    );
  }

// ignore: unused_element
  _RegisterUsernamePressed registerUsernamePressed() {
    return const _RegisterUsernamePressed();
  }

// ignore: unused_element
  _RegisterPressed registerPressed() {
    return const _RegisterPressed();
  }

// ignore: unused_element
  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }

// ignore: unused_element
  _SignInWithApplePressed signInWithApplePressed() {
    return const _SignInWithApplePressed();
  }

// ignore: unused_element
  _ResetPasswordPressed resetPasswordPressed(String email) {
    return _ResetPasswordPressed(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$FullNameChangedCopyWith<$Res> {
  factory _$FullNameChangedCopyWith(
          _FullNameChanged value, $Res Function(_FullNameChanged) then) =
      __$FullNameChangedCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class __$FullNameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$FullNameChangedCopyWith<$Res> {
  __$FullNameChangedCopyWithImpl(
      _FullNameChanged _value, $Res Function(_FullNameChanged) _then)
      : super(_value, (v) => _then(v as _FullNameChanged));

  @override
  _FullNameChanged get _value => super._value as _FullNameChanged;

  @override
  $Res call({
    Object fullName = freezed,
  }) {
    return _then(_FullNameChanged(
      fullName == freezed ? _value.fullName : fullName as String,
    ));
  }
}

/// @nodoc
class _$_FullNameChanged implements _FullNameChanged {
  const _$_FullNameChanged(this.fullName) : assert(fullName != null);

  @override
  final String fullName;

  @override
  String toString() {
    return 'SignInFormEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullNameChanged &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @JsonKey(ignore: true)
  @override
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith =>
      __$FullNameChangedCopyWithImpl<_FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements SignInFormEvent {
  const factory _FullNameChanged(String fullName) = _$_FullNameChanged;

  String get fullName;
  @JsonKey(ignore: true)
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged();

  @override
  String toString() {
    return 'SignInFormEvent.usernameChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsernameChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return usernameChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements SignInFormEvent {
  const factory _UsernameChanged() = _$_UsernameChanged;
}

/// @nodoc
abstract class _$UsernameBeingCheckedCopyWith<$Res> {
  factory _$UsernameBeingCheckedCopyWith(_UsernameBeingChecked value,
          $Res Function(_UsernameBeingChecked) then) =
      __$UsernameBeingCheckedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameBeingCheckedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$UsernameBeingCheckedCopyWith<$Res> {
  __$UsernameBeingCheckedCopyWithImpl(
      _UsernameBeingChecked _value, $Res Function(_UsernameBeingChecked) _then)
      : super(_value, (v) => _then(v as _UsernameBeingChecked));

  @override
  _UsernameBeingChecked get _value => super._value as _UsernameBeingChecked;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_UsernameBeingChecked(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$_UsernameBeingChecked implements _UsernameBeingChecked {
  const _$_UsernameBeingChecked(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'SignInFormEvent.usernameBeingChecked(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameBeingChecked &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameBeingCheckedCopyWith<_UsernameBeingChecked> get copyWith =>
      __$UsernameBeingCheckedCopyWithImpl<_UsernameBeingChecked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return usernameBeingChecked(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameBeingChecked != null) {
      return usernameBeingChecked(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return usernameBeingChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameBeingChecked != null) {
      return usernameBeingChecked(this);
    }
    return orElse();
  }
}

abstract class _UsernameBeingChecked implements SignInFormEvent {
  const factory _UsernameBeingChecked(String username) =
      _$_UsernameBeingChecked;

  String get username;
  @JsonKey(ignore: true)
  _$UsernameBeingCheckedCopyWith<_UsernameBeingChecked> get copyWith;
}

/// @nodoc
abstract class _$RegisterUsernamePressedCopyWith<$Res> {
  factory _$RegisterUsernamePressedCopyWith(_RegisterUsernamePressed value,
          $Res Function(_RegisterUsernamePressed) then) =
      __$RegisterUsernamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterUsernamePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterUsernamePressedCopyWith<$Res> {
  __$RegisterUsernamePressedCopyWithImpl(_RegisterUsernamePressed _value,
      $Res Function(_RegisterUsernamePressed) _then)
      : super(_value, (v) => _then(v as _RegisterUsernamePressed));

  @override
  _RegisterUsernamePressed get _value =>
      super._value as _RegisterUsernamePressed;
}

/// @nodoc
class _$_RegisterUsernamePressed implements _RegisterUsernamePressed {
  const _$_RegisterUsernamePressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerUsernamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterUsernamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return registerUsernamePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUsernamePressed != null) {
      return registerUsernamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return registerUsernamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUsernamePressed != null) {
      return registerUsernamePressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterUsernamePressed implements SignInFormEvent {
  const factory _RegisterUsernamePressed() = _$_RegisterUsernamePressed;
}

/// @nodoc
abstract class _$RegisterPressedCopyWith<$Res> {
  factory _$RegisterPressedCopyWith(
          _RegisterPressed value, $Res Function(_RegisterPressed) then) =
      __$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterPressedCopyWith<$Res> {
  __$RegisterPressedCopyWithImpl(
      _RegisterPressed _value, $Res Function(_RegisterPressed) _then)
      : super(_value, (v) => _then(v as _RegisterPressed));

  @override
  _RegisterPressed get _value => super._value as _RegisterPressed;
}

/// @nodoc
class _$_RegisterPressed implements _RegisterPressed {
  const _$_RegisterPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterPressed implements SignInFormEvent {
  const factory _RegisterPressed() = _$_RegisterPressed;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignInWithEmailAndPasswordPressed
    implements _SignInWithEmailAndPasswordPressed {
  const _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc
class _$_SignInWithGooglePressed implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInFormEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
abstract class _$SignInWithApplePressedCopyWith<$Res> {
  factory _$SignInWithApplePressedCopyWith(_SignInWithApplePressed value,
          $Res Function(_SignInWithApplePressed) then) =
      __$SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithApplePressedCopyWith<$Res> {
  __$SignInWithApplePressedCopyWithImpl(_SignInWithApplePressed _value,
      $Res Function(_SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithApplePressed));

  @override
  _SignInWithApplePressed get _value => super._value as _SignInWithApplePressed;
}

/// @nodoc
class _$_SignInWithApplePressed implements _SignInWithApplePressed {
  const _$_SignInWithApplePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApplePressed implements SignInFormEvent {
  const factory _SignInWithApplePressed() = _$_SignInWithApplePressed;
}

/// @nodoc
abstract class _$ResetPasswordPressedCopyWith<$Res> {
  factory _$ResetPasswordPressedCopyWith(_ResetPasswordPressed value,
          $Res Function(_ResetPasswordPressed) then) =
      __$ResetPasswordPressedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ResetPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$ResetPasswordPressedCopyWith<$Res> {
  __$ResetPasswordPressedCopyWithImpl(
      _ResetPasswordPressed _value, $Res Function(_ResetPasswordPressed) _then)
      : super(_value, (v) => _then(v as _ResetPasswordPressed));

  @override
  _ResetPasswordPressed get _value => super._value as _ResetPasswordPressed;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_ResetPasswordPressed(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_ResetPasswordPressed implements _ResetPasswordPressed {
  const _$_ResetPasswordPressed(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.resetPasswordPressed(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordPressedCopyWith<_ResetPasswordPressed> get copyWith =>
      __$ResetPasswordPressedCopyWithImpl<_ResetPasswordPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult fullNameChanged(String fullName),
    @required TResult usernameChanged(),
    @required TResult usernameBeingChecked(String username),
    @required TResult registerUsernamePressed(),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
    @required TResult resetPasswordPressed(String email),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return resetPasswordPressed(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult fullNameChanged(String fullName),
    TResult usernameChanged(),
    TResult usernameBeingChecked(String username),
    TResult registerUsernamePressed(),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    TResult resetPasswordPressed(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetPasswordPressed != null) {
      return resetPasswordPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameBeingChecked(_UsernameBeingChecked value),
    @required TResult registerUsernamePressed(_RegisterUsernamePressed value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult resetPasswordPressed(_ResetPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(fullNameChanged != null);
    assert(usernameChanged != null);
    assert(usernameBeingChecked != null);
    assert(registerUsernamePressed != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    assert(resetPasswordPressed != null);
    return resetPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameBeingChecked(_UsernameBeingChecked value),
    TResult registerUsernamePressed(_RegisterUsernamePressed value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult resetPasswordPressed(_ResetPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetPasswordPressed != null) {
      return resetPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordPressed implements SignInFormEvent {
  const factory _ResetPasswordPressed(String email) = _$_ResetPasswordPressed;

  String get email;
  @JsonKey(ignore: true)
  _$ResetPasswordPressedCopyWith<_ResetPasswordPressed> get copyWith;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required String emailAddress,
      @required String password,
      @required String fullName,
      @required String errorMessage,
      @required bool isAuthStateChanged,
      @required bool isSubmitting,
      @required String snackBarMessageForPasswordReset,
      @required bool isUserTypingUsername,
      @required bool isUsernameAvailable,
      @required String username,
      @required String usernameErrorMessage}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      fullName: fullName,
      errorMessage: errorMessage,
      isAuthStateChanged: isAuthStateChanged,
      isSubmitting: isSubmitting,
      snackBarMessageForPasswordReset: snackBarMessageForPasswordReset,
      isUserTypingUsername: isUserTypingUsername,
      isUsernameAvailable: isUsernameAvailable,
      username: username,
      usernameErrorMessage: usernameErrorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get emailAddress;
  String get password;
  String get fullName;
  String get errorMessage;
  bool get isAuthStateChanged;
  bool get isSubmitting;
  String get snackBarMessageForPasswordReset;
  bool get isUserTypingUsername;
  bool get isUsernameAvailable;
  String get username;
  String get usernameErrorMessage;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      String fullName,
      String errorMessage,
      bool isAuthStateChanged,
      bool isSubmitting,
      String snackBarMessageForPasswordReset,
      bool isUserTypingUsername,
      bool isUsernameAvailable,
      String username,
      String usernameErrorMessage});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object fullName = freezed,
    Object errorMessage = freezed,
    Object isAuthStateChanged = freezed,
    Object isSubmitting = freezed,
    Object snackBarMessageForPasswordReset = freezed,
    Object isUserTypingUsername = freezed,
    Object isUsernameAvailable = freezed,
    Object username = freezed,
    Object usernameErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isAuthStateChanged: isAuthStateChanged == freezed
          ? _value.isAuthStateChanged
          : isAuthStateChanged as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      snackBarMessageForPasswordReset:
          snackBarMessageForPasswordReset == freezed
              ? _value.snackBarMessageForPasswordReset
              : snackBarMessageForPasswordReset as String,
      isUserTypingUsername: isUserTypingUsername == freezed
          ? _value.isUserTypingUsername
          : isUserTypingUsername as bool,
      isUsernameAvailable: isUsernameAvailable == freezed
          ? _value.isUsernameAvailable
          : isUsernameAvailable as bool,
      username: username == freezed ? _value.username : username as String,
      usernameErrorMessage: usernameErrorMessage == freezed
          ? _value.usernameErrorMessage
          : usernameErrorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String password,
      String fullName,
      String errorMessage,
      bool isAuthStateChanged,
      bool isSubmitting,
      String snackBarMessageForPasswordReset,
      bool isUserTypingUsername,
      bool isUsernameAvailable,
      String username,
      String usernameErrorMessage});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object fullName = freezed,
    Object errorMessage = freezed,
    Object isAuthStateChanged = freezed,
    Object isSubmitting = freezed,
    Object snackBarMessageForPasswordReset = freezed,
    Object isUserTypingUsername = freezed,
    Object isUsernameAvailable = freezed,
    Object username = freezed,
    Object usernameErrorMessage = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isAuthStateChanged: isAuthStateChanged == freezed
          ? _value.isAuthStateChanged
          : isAuthStateChanged as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      snackBarMessageForPasswordReset:
          snackBarMessageForPasswordReset == freezed
              ? _value.snackBarMessageForPasswordReset
              : snackBarMessageForPasswordReset as String,
      isUserTypingUsername: isUserTypingUsername == freezed
          ? _value.isUserTypingUsername
          : isUserTypingUsername as bool,
      isUsernameAvailable: isUsernameAvailable == freezed
          ? _value.isUsernameAvailable
          : isUsernameAvailable as bool,
      username: username == freezed ? _value.username : username as String,
      usernameErrorMessage: usernameErrorMessage == freezed
          ? _value.usernameErrorMessage
          : usernameErrorMessage as String,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.fullName,
      @required this.errorMessage,
      @required this.isAuthStateChanged,
      @required this.isSubmitting,
      @required this.snackBarMessageForPasswordReset,
      @required this.isUserTypingUsername,
      @required this.isUsernameAvailable,
      @required this.username,
      @required this.usernameErrorMessage})
      : assert(emailAddress != null),
        assert(password != null),
        assert(fullName != null),
        assert(errorMessage != null),
        assert(isAuthStateChanged != null),
        assert(isSubmitting != null),
        assert(snackBarMessageForPasswordReset != null),
        assert(isUserTypingUsername != null),
        assert(isUsernameAvailable != null),
        assert(username != null),
        assert(usernameErrorMessage != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String fullName;
  @override
  final String errorMessage;
  @override
  final bool isAuthStateChanged;
  @override
  final bool isSubmitting;
  @override
  final String snackBarMessageForPasswordReset;
  @override
  final bool isUserTypingUsername;
  @override
  final bool isUsernameAvailable;
  @override
  final String username;
  @override
  final String usernameErrorMessage;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, fullName: $fullName, errorMessage: $errorMessage, isAuthStateChanged: $isAuthStateChanged, isSubmitting: $isSubmitting, snackBarMessageForPasswordReset: $snackBarMessageForPasswordReset, isUserTypingUsername: $isUserTypingUsername, isUsernameAvailable: $isUsernameAvailable, username: $username, usernameErrorMessage: $usernameErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isAuthStateChanged, isAuthStateChanged) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthStateChanged, isAuthStateChanged)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.snackBarMessageForPasswordReset,
                    snackBarMessageForPasswordReset) ||
                const DeepCollectionEquality().equals(
                    other.snackBarMessageForPasswordReset,
                    snackBarMessageForPasswordReset)) &&
            (identical(other.isUserTypingUsername, isUserTypingUsername) ||
                const DeepCollectionEquality().equals(
                    other.isUserTypingUsername, isUserTypingUsername)) &&
            (identical(other.isUsernameAvailable, isUsernameAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isUsernameAvailable, isUsernameAvailable)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.usernameErrorMessage, usernameErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.usernameErrorMessage, usernameErrorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isAuthStateChanged) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(snackBarMessageForPasswordReset) ^
      const DeepCollectionEquality().hash(isUserTypingUsername) ^
      const DeepCollectionEquality().hash(isUsernameAvailable) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(usernameErrorMessage);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required String emailAddress,
      @required String password,
      @required String fullName,
      @required String errorMessage,
      @required bool isAuthStateChanged,
      @required bool isSubmitting,
      @required String snackBarMessageForPasswordReset,
      @required bool isUserTypingUsername,
      @required bool isUsernameAvailable,
      @required String username,
      @required String usernameErrorMessage}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get fullName;
  @override
  String get errorMessage;
  @override
  bool get isAuthStateChanged;
  @override
  bool get isSubmitting;
  @override
  String get snackBarMessageForPasswordReset;
  @override
  bool get isUserTypingUsername;
  @override
  bool get isUsernameAvailable;
  @override
  String get username;
  @override
  String get usernameErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
