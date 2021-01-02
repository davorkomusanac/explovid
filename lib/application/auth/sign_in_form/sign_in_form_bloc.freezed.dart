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
  _PasswordConfirmationChanged passwordConfirmationChanged(
      String passwordConfirmation) {
    return _PasswordConfirmationChanged(
      passwordConfirmation,
    );
  }

// ignore: unused_element
  _FullNameChanged fullNameChanged(String fullName) {
    return _FullNameChanged(
      fullName,
    );
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
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordConfirmationChangedCopyWith<$Res> {
  factory _$PasswordConfirmationChangedCopyWith(
          _PasswordConfirmationChanged value,
          $Res Function(_PasswordConfirmationChanged) then) =
      __$PasswordConfirmationChangedCopyWithImpl<$Res>;
  $Res call({String passwordConfirmation});
}

/// @nodoc
class __$PasswordConfirmationChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordConfirmationChangedCopyWith<$Res> {
  __$PasswordConfirmationChangedCopyWithImpl(
      _PasswordConfirmationChanged _value,
      $Res Function(_PasswordConfirmationChanged) _then)
      : super(_value, (v) => _then(v as _PasswordConfirmationChanged));

  @override
  _PasswordConfirmationChanged get _value =>
      super._value as _PasswordConfirmationChanged;

  @override
  $Res call({
    Object passwordConfirmation = freezed,
  }) {
    return _then(_PasswordConfirmationChanged(
      passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation as String,
    ));
  }
}

/// @nodoc
class _$_PasswordConfirmationChanged implements _PasswordConfirmationChanged {
  const _$_PasswordConfirmationChanged(this.passwordConfirmation)
      : assert(passwordConfirmation != null);

  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'SignInFormEvent.passwordConfirmationChanged(passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordConfirmationChanged &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordConfirmation);

  @override
  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged>
      get copyWith => __$PasswordConfirmationChangedCopyWithImpl<
          _PasswordConfirmationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return passwordConfirmationChanged(passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return passwordConfirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmationChanged implements SignInFormEvent {
  const factory _PasswordConfirmationChanged(String passwordConfirmation) =
      _$_PasswordConfirmationChanged;

  String get passwordConfirmation;
  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged>
      get copyWith;
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

  @override
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith =>
      __$FullNameChangedCopyWithImpl<_FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith;
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
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
    @required TResult passwordConfirmationChanged(String passwordConfirmation),
    @required TResult fullNameChanged(String fullName),
    @required TResult registerPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithApplePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult passwordConfirmationChanged(String passwordConfirmation),
    TResult fullNameChanged(String fullName),
    TResult registerPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithApplePressed(),
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
    @required
        TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required TResult fullNameChanged(_FullNameChanged value),
    @required TResult registerPressed(_RegisterPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(fullNameChanged != null);
    assert(registerPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithApplePressed != null);
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordConfirmationChanged(_PasswordConfirmationChanged value),
    TResult fullNameChanged(_FullNameChanged value),
    TResult registerPressed(_RegisterPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
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
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required String emailAddress,
      @required String password,
      @required String confirmation,
      @required String fullName,
      @required String errorMessage,
      @required bool isAuthStateChanged,
      @required bool isSubmitting}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      confirmation: confirmation,
      fullName: fullName,
      errorMessage: errorMessage,
      isAuthStateChanged: isAuthStateChanged,
      isSubmitting: isSubmitting,
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
  String get confirmation;
  String get fullName;
  String get errorMessage;
  bool get isAuthStateChanged;
  bool get isSubmitting;

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
      String confirmation,
      String fullName,
      String errorMessage,
      bool isAuthStateChanged,
      bool isSubmitting});
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
    Object confirmation = freezed,
    Object fullName = freezed,
    Object errorMessage = freezed,
    Object isAuthStateChanged = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isAuthStateChanged: isAuthStateChanged == freezed
          ? _value.isAuthStateChanged
          : isAuthStateChanged as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
      String confirmation,
      String fullName,
      String errorMessage,
      bool isAuthStateChanged,
      bool isSubmitting});
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
    Object confirmation = freezed,
    Object fullName = freezed,
    Object errorMessage = freezed,
    Object isAuthStateChanged = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isAuthStateChanged: isAuthStateChanged == freezed
          ? _value.isAuthStateChanged
          : isAuthStateChanged as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.confirmation,
      @required this.fullName,
      @required this.errorMessage,
      @required this.isAuthStateChanged,
      @required this.isSubmitting})
      : assert(emailAddress != null),
        assert(password != null),
        assert(confirmation != null),
        assert(fullName != null),
        assert(errorMessage != null),
        assert(isAuthStateChanged != null),
        assert(isSubmitting != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String confirmation;
  @override
  final String fullName;
  @override
  final String errorMessage;
  @override
  final bool isAuthStateChanged;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, confirmation: $confirmation, fullName: $fullName, errorMessage: $errorMessage, isAuthStateChanged: $isAuthStateChanged, isSubmitting: $isSubmitting)';
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
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)) &&
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
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmation) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isAuthStateChanged) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required String emailAddress,
      @required String password,
      @required String confirmation,
      @required String fullName,
      @required String errorMessage,
      @required bool isAuthStateChanged,
      @required bool isSubmitting}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get confirmation;
  @override
  String get fullName;
  @override
  String get errorMessage;
  @override
  bool get isAuthStateChanged;
  @override
  bool get isSubmitting;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}