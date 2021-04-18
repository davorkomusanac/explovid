part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @required bool isLoading,
    @required List<OurNotification> notifications,
    @required int nextPage,
    @required bool isThereMoreNotificationsToLoad,
  }) = _NotificationsState;

  factory NotificationsState.initial() => NotificationsState(
        isLoading: true,
        notifications: [],
        nextPage: 1,
        isThereMoreNotificationsToLoad: true,
      );
}
