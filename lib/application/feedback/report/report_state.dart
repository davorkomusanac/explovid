part of 'report_bloc.dart';

@freezed
abstract class ReportState with _$ReportState {
  const factory ReportState({
    @required String errorMessage,
    @required int numberToForceUpdateState,
  }) = _ReportState;

  factory ReportState.initial() => ReportState(
        errorMessage: '',
        numberToForceUpdateState: 1,
      );
}
