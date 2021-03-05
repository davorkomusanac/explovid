// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthCheckEventTearOff {
  const _$AuthCheckEventTearOff();

// ignore: unused_element
  _AuthCheckRequested authCheckRequested() {
    return const _AuthCheckRequested();
  }

// ignore: unused_element
  _SignOutPressed signOutPressed() {
    return const _SignOutPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthCheckEvent = _$AuthCheckEventTearOff();

/// @nodoc
mixin _$AuthCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOutPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOutPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signOutPressed(_SignOutPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signOutPressed(_SignOutPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthCheckEventCopyWith<$Res> {
  factory $AuthCheckEventCopyWith(
          AuthCheckEvent value, $Res Function(AuthCheckEvent) then) =
      _$AuthCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckEventCopyWithImpl<$Res>
    implements $AuthCheckEventCopyWith<$Res> {
  _$AuthCheckEventCopyWithImpl(this._value, this._then);

  final AuthCheckEvent _value;
  // ignore: unused_field
  final $Res Function(AuthCheckEvent) _then;
}

/// @nodoc
abstract class _$AuthCheckRequestedCopyWith<$Res> {
  factory _$AuthCheckRequestedCopyWith(
          _AuthCheckRequested value, $Res Function(_AuthCheckRequested) then) =
      __$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthCheckEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestedCopyWith<$Res> {
  __$AuthCheckRequestedCopyWithImpl(
      _AuthCheckRequested _value, $Res Function(_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequested));

  @override
  _AuthCheckRequested get _value => super._value as _AuthCheckRequested;
}

/// @nodoc
class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthCheckEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOutPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signOutPressed != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOutPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signOutPressed(_SignOutPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signOutPressed != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signOutPressed(_SignOutPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthCheckEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$SignOutPressedCopyWith<$Res> {
  factory _$SignOutPressedCopyWith(
          _SignOutPressed value, $Res Function(_SignOutPressed) then) =
      __$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutPressedCopyWithImpl<$Res>
    extends _$AuthCheckEventCopyWithImpl<$Res>
    implements _$SignOutPressedCopyWith<$Res> {
  __$SignOutPressedCopyWithImpl(
      _SignOutPressed _value, $Res Function(_SignOutPressed) _then)
      : super(_value, (v) => _then(v as _SignOutPressed));

  @override
  _SignOutPressed get _value => super._value as _SignOutPressed;
}

/// @nodoc
class _$_SignOutPressed implements _SignOutPressed {
  const _$_SignOutPressed();

  @override
  String toString() {
    return 'AuthCheckEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOutPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signOutPressed != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOutPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signOutPressed(_SignOutPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signOutPressed != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signOutPressed(_SignOutPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class _SignOutPressed implements AuthCheckEvent {
  const factory _SignOutPressed() = _$_SignOutPressed;
}

/// @nodoc
class _$AuthCheckStateTearOff {
  const _$AuthCheckStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return const _Authenticated();
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _EmailNotVerified emailNotVerified() {
    return const _EmailNotVerified();
  }

// ignore: unused_element
  _UsernameNotGiven usernameNotGiven() {
    return const _UsernameNotGiven();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthCheckState = _$AuthCheckStateTearOff();

/// @nodoc
mixin _$AuthCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthCheckStateCopyWith<$Res> {
  factory $AuthCheckStateCopyWith(
          AuthCheckState value, $Res Function(AuthCheckState) then) =
      _$AuthCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckStateCopyWithImpl<$Res>
    implements $AuthCheckStateCopyWith<$Res> {
  _$AuthCheckStateCopyWithImpl(this._value, this._then);

  final AuthCheckState _value;
  // ignore: unused_field
  final $Res Function(AuthCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthCheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthCheckState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthCheckState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthCheckState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthCheckState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthCheckState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$EmailNotVerifiedCopyWith<$Res> {
  factory _$EmailNotVerifiedCopyWith(
          _EmailNotVerified value, $Res Function(_EmailNotVerified) then) =
      __$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$EmailNotVerifiedCopyWith<$Res> {
  __$EmailNotVerifiedCopyWithImpl(
      _EmailNotVerified _value, $Res Function(_EmailNotVerified) _then)
      : super(_value, (v) => _then(v as _EmailNotVerified));

  @override
  _EmailNotVerified get _value => super._value as _EmailNotVerified;
}

/// @nodoc
class _$_EmailNotVerified implements _EmailNotVerified {
  const _$_EmailNotVerified();

  @override
  String toString() {
    return 'AuthCheckState.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailNotVerified implements AuthCheckState {
  const factory _EmailNotVerified() = _$_EmailNotVerified;
}

/// @nodoc
abstract class _$UsernameNotGivenCopyWith<$Res> {
  factory _$UsernameNotGivenCopyWith(
          _UsernameNotGiven value, $Res Function(_UsernameNotGiven) then) =
      __$UsernameNotGivenCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsernameNotGivenCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$UsernameNotGivenCopyWith<$Res> {
  __$UsernameNotGivenCopyWithImpl(
      _UsernameNotGiven _value, $Res Function(_UsernameNotGiven) _then)
      : super(_value, (v) => _then(v as _UsernameNotGiven));

  @override
  _UsernameNotGiven get _value => super._value as _UsernameNotGiven;
}

/// @nodoc
class _$_UsernameNotGiven implements _UsernameNotGiven {
  const _$_UsernameNotGiven();

  @override
  String toString() {
    return 'AuthCheckState.usernameNotGiven()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsernameNotGiven);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
    @required TResult emailNotVerified(),
    @required TResult usernameNotGiven(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return usernameNotGiven();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    TResult emailNotVerified(),
    TResult usernameNotGiven(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameNotGiven != null) {
      return usernameNotGiven();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult emailNotVerified(_EmailNotVerified value),
    @required TResult usernameNotGiven(_UsernameNotGiven value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(emailNotVerified != null);
    assert(usernameNotGiven != null);
    return usernameNotGiven(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    TResult emailNotVerified(_EmailNotVerified value),
    TResult usernameNotGiven(_UsernameNotGiven value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameNotGiven != null) {
      return usernameNotGiven(this);
    }
    return orElse();
  }
}

abstract class _UsernameNotGiven implements AuthCheckState {
  const factory _UsernameNotGiven() = _$_UsernameNotGiven;
}
