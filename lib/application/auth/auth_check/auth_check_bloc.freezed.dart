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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
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
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
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
