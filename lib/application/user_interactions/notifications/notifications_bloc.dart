import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/our_notification/our_notification.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final UserActionsRepository _userActionsRepository;
  StreamSubscription _streamSubscription;

  NotificationsBloc(this._userActionsRepository) : super(NotificationsState.initial());

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      loadInitialNotifications: (e) async* {
        _streamSubscription?.cancel();
        _streamSubscription = _userActionsRepository.getNotifications().listen(
              (notifications) => add(NotificationsEvent.notificationsUpdated(notifications)),
            );
      },
      notificationsUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          notifications: e.notifications,
          isThereMoreNotificationsToLoad: e.notifications.length < 10 ? false : true,
        );
      },
      nextNotificationsPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreNotificationsToLoad) {
          var notificationsNextPage = await _userActionsRepository.getNotificationsNextPage(state.notifications.last);
          isThereMore = notificationsNextPage.length < 10 ? false : true;
          for (var notification in notificationsNextPage) {
            state.notifications.add(notification);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreNotificationsToLoad: isThereMore,
        );
      },
    );
  }
}
