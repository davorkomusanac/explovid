part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.loadInitialNotifications() = _LoadInitialNotifications;
  const factory NotificationsEvent.notificationsUpdated(
    List<OurNotification> notifications,
  ) = _NotificationsUpdated;
  const factory NotificationsEvent.nextNotificationsPageCalled() = _NextNotificationsPageCalled;
}
