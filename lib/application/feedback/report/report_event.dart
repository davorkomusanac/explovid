part of 'report_bloc.dart';

@freezed
abstract class ReportEvent with _$ReportEvent {
  const factory ReportEvent.reportUserPressed({
    @required String reportedUserUid,
    @required String reportMessage,
  }) = _ReportUserPressed;
  const factory ReportEvent.reportPostPressed({
    @required String reportedUserUid,
    @required String reportedPostUid,
    @required String reportedPostText,
    @required String reportMessage,
  }) = _ReportPostPressed;
  const factory ReportEvent.reportCommentPressed({
    @required String reportedUserUid,
    @required String reportedPostUid,
    @required String reportedCommentUid,
    @required String reportedCommentText,
    @required String reportMessage,
  }) = _ReportCommentPressed;
}
