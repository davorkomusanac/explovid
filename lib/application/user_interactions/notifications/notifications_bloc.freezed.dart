// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

// ignore: unused_element
  _LoadInitialNotifications loadInitialNotifications() {
    return const _LoadInitialNotifications();
  }

// ignore: unused_element
  _NotificationsUpdated notificationsUpdated(
      List<OurNotification> notifications) {
    return _NotificationsUpdated(
      notifications,
    );
  }

// ignore: unused_element
  _NextNotificationsPageCalled nextNotificationsPageCalled() {
    return const _NextNotificationsPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialNotifications(),
    @required TResult notificationsUpdated(List<OurNotification> notifications),
    @required TResult nextNotificationsPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialNotifications(),
    TResult notificationsUpdated(List<OurNotification> notifications),
    TResult nextNotificationsPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInitialNotifications(_LoadInitialNotifications value),
    @required TResult notificationsUpdated(_NotificationsUpdated value),
    @required
        TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialNotifications(_LoadInitialNotifications value),
    TResult notificationsUpdated(_NotificationsUpdated value),
    TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class _$LoadInitialNotificationsCopyWith<$Res> {
  factory _$LoadInitialNotificationsCopyWith(_LoadInitialNotifications value,
          $Res Function(_LoadInitialNotifications) then) =
      __$LoadInitialNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInitialNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$LoadInitialNotificationsCopyWith<$Res> {
  __$LoadInitialNotificationsCopyWithImpl(_LoadInitialNotifications _value,
      $Res Function(_LoadInitialNotifications) _then)
      : super(_value, (v) => _then(v as _LoadInitialNotifications));

  @override
  _LoadInitialNotifications get _value =>
      super._value as _LoadInitialNotifications;
}

/// @nodoc
class _$_LoadInitialNotifications implements _LoadInitialNotifications {
  const _$_LoadInitialNotifications();

  @override
  String toString() {
    return 'NotificationsEvent.loadInitialNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInitialNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialNotifications(),
    @required TResult notificationsUpdated(List<OurNotification> notifications),
    @required TResult nextNotificationsPageCalled(),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return loadInitialNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialNotifications(),
    TResult notificationsUpdated(List<OurNotification> notifications),
    TResult nextNotificationsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInitialNotifications != null) {
      return loadInitialNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInitialNotifications(_LoadInitialNotifications value),
    @required TResult notificationsUpdated(_NotificationsUpdated value),
    @required
        TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return loadInitialNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialNotifications(_LoadInitialNotifications value),
    TResult notificationsUpdated(_NotificationsUpdated value),
    TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInitialNotifications != null) {
      return loadInitialNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadInitialNotifications implements NotificationsEvent {
  const factory _LoadInitialNotifications() = _$_LoadInitialNotifications;
}

/// @nodoc
abstract class _$NotificationsUpdatedCopyWith<$Res> {
  factory _$NotificationsUpdatedCopyWith(_NotificationsUpdated value,
          $Res Function(_NotificationsUpdated) then) =
      __$NotificationsUpdatedCopyWithImpl<$Res>;
  $Res call({List<OurNotification> notifications});
}

/// @nodoc
class __$NotificationsUpdatedCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$NotificationsUpdatedCopyWith<$Res> {
  __$NotificationsUpdatedCopyWithImpl(
      _NotificationsUpdated _value, $Res Function(_NotificationsUpdated) _then)
      : super(_value, (v) => _then(v as _NotificationsUpdated));

  @override
  _NotificationsUpdated get _value => super._value as _NotificationsUpdated;

  @override
  $Res call({
    Object notifications = freezed,
  }) {
    return _then(_NotificationsUpdated(
      notifications == freezed
          ? _value.notifications
          : notifications as List<OurNotification>,
    ));
  }
}

/// @nodoc
class _$_NotificationsUpdated implements _NotificationsUpdated {
  const _$_NotificationsUpdated(this.notifications)
      : assert(notifications != null);

  @override
  final List<OurNotification> notifications;

  @override
  String toString() {
    return 'NotificationsEvent.notificationsUpdated(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsUpdated &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  _$NotificationsUpdatedCopyWith<_NotificationsUpdated> get copyWith =>
      __$NotificationsUpdatedCopyWithImpl<_NotificationsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialNotifications(),
    @required TResult notificationsUpdated(List<OurNotification> notifications),
    @required TResult nextNotificationsPageCalled(),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return notificationsUpdated(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialNotifications(),
    TResult notificationsUpdated(List<OurNotification> notifications),
    TResult nextNotificationsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationsUpdated != null) {
      return notificationsUpdated(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInitialNotifications(_LoadInitialNotifications value),
    @required TResult notificationsUpdated(_NotificationsUpdated value),
    @required
        TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return notificationsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialNotifications(_LoadInitialNotifications value),
    TResult notificationsUpdated(_NotificationsUpdated value),
    TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationsUpdated != null) {
      return notificationsUpdated(this);
    }
    return orElse();
  }
}

abstract class _NotificationsUpdated implements NotificationsEvent {
  const factory _NotificationsUpdated(List<OurNotification> notifications) =
      _$_NotificationsUpdated;

  List<OurNotification> get notifications;
  @JsonKey(ignore: true)
  _$NotificationsUpdatedCopyWith<_NotificationsUpdated> get copyWith;
}

/// @nodoc
abstract class _$NextNotificationsPageCalledCopyWith<$Res> {
  factory _$NextNotificationsPageCalledCopyWith(
          _NextNotificationsPageCalled value,
          $Res Function(_NextNotificationsPageCalled) then) =
      __$NextNotificationsPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextNotificationsPageCalledCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$NextNotificationsPageCalledCopyWith<$Res> {
  __$NextNotificationsPageCalledCopyWithImpl(
      _NextNotificationsPageCalled _value,
      $Res Function(_NextNotificationsPageCalled) _then)
      : super(_value, (v) => _then(v as _NextNotificationsPageCalled));

  @override
  _NextNotificationsPageCalled get _value =>
      super._value as _NextNotificationsPageCalled;
}

/// @nodoc
class _$_NextNotificationsPageCalled implements _NextNotificationsPageCalled {
  const _$_NextNotificationsPageCalled();

  @override
  String toString() {
    return 'NotificationsEvent.nextNotificationsPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextNotificationsPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInitialNotifications(),
    @required TResult notificationsUpdated(List<OurNotification> notifications),
    @required TResult nextNotificationsPageCalled(),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return nextNotificationsPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInitialNotifications(),
    TResult notificationsUpdated(List<OurNotification> notifications),
    TResult nextNotificationsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextNotificationsPageCalled != null) {
      return nextNotificationsPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInitialNotifications(_LoadInitialNotifications value),
    @required TResult notificationsUpdated(_NotificationsUpdated value),
    @required
        TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
  }) {
    assert(loadInitialNotifications != null);
    assert(notificationsUpdated != null);
    assert(nextNotificationsPageCalled != null);
    return nextNotificationsPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInitialNotifications(_LoadInitialNotifications value),
    TResult notificationsUpdated(_NotificationsUpdated value),
    TResult nextNotificationsPageCalled(_NextNotificationsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextNotificationsPageCalled != null) {
      return nextNotificationsPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextNotificationsPageCalled implements NotificationsEvent {
  const factory _NextNotificationsPageCalled() = _$_NextNotificationsPageCalled;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

// ignore: unused_element
  _NotificationsState call(
      {@required bool isLoading,
      @required List<OurNotification> notifications,
      @required int nextPage,
      @required bool isThereMoreNotificationsToLoad}) {
    return _NotificationsState(
      isLoading: isLoading,
      notifications: notifications,
      nextPage: nextPage,
      isThereMoreNotificationsToLoad: isThereMoreNotificationsToLoad,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  bool get isLoading;
  List<OurNotification> get notifications;
  int get nextPage;
  bool get isThereMoreNotificationsToLoad;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<OurNotification> notifications,
      int nextPage,
      bool isThereMoreNotificationsToLoad});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object notifications = freezed,
    Object nextPage = freezed,
    Object isThereMoreNotificationsToLoad = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<OurNotification>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreNotificationsToLoad: isThereMoreNotificationsToLoad == freezed
          ? _value.isThereMoreNotificationsToLoad
          : isThereMoreNotificationsToLoad as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$NotificationsStateCopyWith(
          _NotificationsState value, $Res Function(_NotificationsState) then) =
      __$NotificationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<OurNotification> notifications,
      int nextPage,
      bool isThereMoreNotificationsToLoad});
}

/// @nodoc
class __$NotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$NotificationsStateCopyWith<$Res> {
  __$NotificationsStateCopyWithImpl(
      _NotificationsState _value, $Res Function(_NotificationsState) _then)
      : super(_value, (v) => _then(v as _NotificationsState));

  @override
  _NotificationsState get _value => super._value as _NotificationsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object notifications = freezed,
    Object nextPage = freezed,
    Object isThereMoreNotificationsToLoad = freezed,
  }) {
    return _then(_NotificationsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<OurNotification>,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreNotificationsToLoad: isThereMoreNotificationsToLoad == freezed
          ? _value.isThereMoreNotificationsToLoad
          : isThereMoreNotificationsToLoad as bool,
    ));
  }
}

/// @nodoc
class _$_NotificationsState implements _NotificationsState {
  const _$_NotificationsState(
      {@required this.isLoading,
      @required this.notifications,
      @required this.nextPage,
      @required this.isThereMoreNotificationsToLoad})
      : assert(isLoading != null),
        assert(notifications != null),
        assert(nextPage != null),
        assert(isThereMoreNotificationsToLoad != null);

  @override
  final bool isLoading;
  @override
  final List<OurNotification> notifications;
  @override
  final int nextPage;
  @override
  final bool isThereMoreNotificationsToLoad;

  @override
  String toString() {
    return 'NotificationsState(isLoading: $isLoading, notifications: $notifications, nextPage: $nextPage, isThereMoreNotificationsToLoad: $isThereMoreNotificationsToLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(other.isThereMoreNotificationsToLoad,
                    isThereMoreNotificationsToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreNotificationsToLoad,
                    isThereMoreNotificationsToLoad)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(notifications) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(isThereMoreNotificationsToLoad);

  @JsonKey(ignore: true)
  @override
  _$NotificationsStateCopyWith<_NotificationsState> get copyWith =>
      __$NotificationsStateCopyWithImpl<_NotificationsState>(this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {@required bool isLoading,
      @required List<OurNotification> notifications,
      @required int nextPage,
      @required bool isThereMoreNotificationsToLoad}) = _$_NotificationsState;

  @override
  bool get isLoading;
  @override
  List<OurNotification> get notifications;
  @override
  int get nextPage;
  @override
  bool get isThereMoreNotificationsToLoad;
  @override
  @JsonKey(ignore: true)
  _$NotificationsStateCopyWith<_NotificationsState> get copyWith;
}
