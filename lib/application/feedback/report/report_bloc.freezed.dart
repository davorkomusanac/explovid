// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReportEventTearOff {
  const _$ReportEventTearOff();

// ignore: unused_element
  _ReportUserPressed reportUserPressed(
      {@required String reportedUserUid, @required String reportMessage}) {
    return _ReportUserPressed(
      reportedUserUid: reportedUserUid,
      reportMessage: reportMessage,
    );
  }

// ignore: unused_element
  _ReportPostPressed reportPostPressed(
      {@required String reportedUserUid,
      @required String reportedPostUid,
      @required String reportedPostText,
      @required String reportMessage}) {
    return _ReportPostPressed(
      reportedUserUid: reportedUserUid,
      reportedPostUid: reportedPostUid,
      reportedPostText: reportedPostText,
      reportMessage: reportMessage,
    );
  }

// ignore: unused_element
  _ReportCommentPressed reportCommentPressed(
      {@required String reportedUserUid,
      @required String reportedPostUid,
      @required String reportedCommentUid,
      @required String reportedCommentText,
      @required String reportMessage}) {
    return _ReportCommentPressed(
      reportedUserUid: reportedUserUid,
      reportedPostUid: reportedPostUid,
      reportedCommentUid: reportedCommentUid,
      reportedCommentText: reportedCommentText,
      reportMessage: reportMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportEvent = _$ReportEventTearOff();

/// @nodoc
mixin _$ReportEvent {
  String get reportedUserUid;
  String get reportMessage;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult reportUserPressed(String reportedUserUid, String reportMessage),
    @required
        TResult reportPostPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedPostText,
            String reportMessage),
    @required
        TResult reportCommentPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedCommentUid,
            String reportedCommentText,
            String reportMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reportUserPressed(String reportedUserUid, String reportMessage),
    TResult reportPostPressed(String reportedUserUid, String reportedPostUid,
        String reportedPostText, String reportMessage),
    TResult reportCommentPressed(
        String reportedUserUid,
        String reportedPostUid,
        String reportedCommentUid,
        String reportedCommentText,
        String reportMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reportUserPressed(_ReportUserPressed value),
    @required TResult reportPostPressed(_ReportPostPressed value),
    @required TResult reportCommentPressed(_ReportCommentPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reportUserPressed(_ReportUserPressed value),
    TResult reportPostPressed(_ReportPostPressed value),
    TResult reportCommentPressed(_ReportCommentPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ReportEventCopyWith<ReportEvent> get copyWith;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
  $Res call({String reportedUserUid, String reportMessage});
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;

  @override
  $Res call({
    Object reportedUserUid = freezed,
    Object reportMessage = freezed,
  }) {
    return _then(_value.copyWith(
      reportedUserUid: reportedUserUid == freezed
          ? _value.reportedUserUid
          : reportedUserUid as String,
      reportMessage: reportMessage == freezed
          ? _value.reportMessage
          : reportMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportUserPressedCopyWith<$Res>
    implements $ReportEventCopyWith<$Res> {
  factory _$ReportUserPressedCopyWith(
          _ReportUserPressed value, $Res Function(_ReportUserPressed) then) =
      __$ReportUserPressedCopyWithImpl<$Res>;
  @override
  $Res call({String reportedUserUid, String reportMessage});
}

/// @nodoc
class __$ReportUserPressedCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
    implements _$ReportUserPressedCopyWith<$Res> {
  __$ReportUserPressedCopyWithImpl(
      _ReportUserPressed _value, $Res Function(_ReportUserPressed) _then)
      : super(_value, (v) => _then(v as _ReportUserPressed));

  @override
  _ReportUserPressed get _value => super._value as _ReportUserPressed;

  @override
  $Res call({
    Object reportedUserUid = freezed,
    Object reportMessage = freezed,
  }) {
    return _then(_ReportUserPressed(
      reportedUserUid: reportedUserUid == freezed
          ? _value.reportedUserUid
          : reportedUserUid as String,
      reportMessage: reportMessage == freezed
          ? _value.reportMessage
          : reportMessage as String,
    ));
  }
}

/// @nodoc
class _$_ReportUserPressed implements _ReportUserPressed {
  const _$_ReportUserPressed(
      {@required this.reportedUserUid, @required this.reportMessage})
      : assert(reportedUserUid != null),
        assert(reportMessage != null);

  @override
  final String reportedUserUid;
  @override
  final String reportMessage;

  @override
  String toString() {
    return 'ReportEvent.reportUserPressed(reportedUserUid: $reportedUserUid, reportMessage: $reportMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportUserPressed &&
            (identical(other.reportedUserUid, reportedUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedUserUid, reportedUserUid)) &&
            (identical(other.reportMessage, reportMessage) ||
                const DeepCollectionEquality()
                    .equals(other.reportMessage, reportMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reportedUserUid) ^
      const DeepCollectionEquality().hash(reportMessage);

  @JsonKey(ignore: true)
  @override
  _$ReportUserPressedCopyWith<_ReportUserPressed> get copyWith =>
      __$ReportUserPressedCopyWithImpl<_ReportUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult reportUserPressed(String reportedUserUid, String reportMessage),
    @required
        TResult reportPostPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedPostText,
            String reportMessage),
    @required
        TResult reportCommentPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedCommentUid,
            String reportedCommentText,
            String reportMessage),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportUserPressed(reportedUserUid, reportMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reportUserPressed(String reportedUserUid, String reportMessage),
    TResult reportPostPressed(String reportedUserUid, String reportedPostUid,
        String reportedPostText, String reportMessage),
    TResult reportCommentPressed(
        String reportedUserUid,
        String reportedPostUid,
        String reportedCommentUid,
        String reportedCommentText,
        String reportMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportUserPressed != null) {
      return reportUserPressed(reportedUserUid, reportMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reportUserPressed(_ReportUserPressed value),
    @required TResult reportPostPressed(_ReportPostPressed value),
    @required TResult reportCommentPressed(_ReportCommentPressed value),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reportUserPressed(_ReportUserPressed value),
    TResult reportPostPressed(_ReportPostPressed value),
    TResult reportCommentPressed(_ReportCommentPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportUserPressed != null) {
      return reportUserPressed(this);
    }
    return orElse();
  }
}

abstract class _ReportUserPressed implements ReportEvent {
  const factory _ReportUserPressed(
      {@required String reportedUserUid,
      @required String reportMessage}) = _$_ReportUserPressed;

  @override
  String get reportedUserUid;
  @override
  String get reportMessage;
  @override
  @JsonKey(ignore: true)
  _$ReportUserPressedCopyWith<_ReportUserPressed> get copyWith;
}

/// @nodoc
abstract class _$ReportPostPressedCopyWith<$Res>
    implements $ReportEventCopyWith<$Res> {
  factory _$ReportPostPressedCopyWith(
          _ReportPostPressed value, $Res Function(_ReportPostPressed) then) =
      __$ReportPostPressedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String reportedUserUid,
      String reportedPostUid,
      String reportedPostText,
      String reportMessage});
}

/// @nodoc
class __$ReportPostPressedCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
    implements _$ReportPostPressedCopyWith<$Res> {
  __$ReportPostPressedCopyWithImpl(
      _ReportPostPressed _value, $Res Function(_ReportPostPressed) _then)
      : super(_value, (v) => _then(v as _ReportPostPressed));

  @override
  _ReportPostPressed get _value => super._value as _ReportPostPressed;

  @override
  $Res call({
    Object reportedUserUid = freezed,
    Object reportedPostUid = freezed,
    Object reportedPostText = freezed,
    Object reportMessage = freezed,
  }) {
    return _then(_ReportPostPressed(
      reportedUserUid: reportedUserUid == freezed
          ? _value.reportedUserUid
          : reportedUserUid as String,
      reportedPostUid: reportedPostUid == freezed
          ? _value.reportedPostUid
          : reportedPostUid as String,
      reportedPostText: reportedPostText == freezed
          ? _value.reportedPostText
          : reportedPostText as String,
      reportMessage: reportMessage == freezed
          ? _value.reportMessage
          : reportMessage as String,
    ));
  }
}

/// @nodoc
class _$_ReportPostPressed implements _ReportPostPressed {
  const _$_ReportPostPressed(
      {@required this.reportedUserUid,
      @required this.reportedPostUid,
      @required this.reportedPostText,
      @required this.reportMessage})
      : assert(reportedUserUid != null),
        assert(reportedPostUid != null),
        assert(reportedPostText != null),
        assert(reportMessage != null);

  @override
  final String reportedUserUid;
  @override
  final String reportedPostUid;
  @override
  final String reportedPostText;
  @override
  final String reportMessage;

  @override
  String toString() {
    return 'ReportEvent.reportPostPressed(reportedUserUid: $reportedUserUid, reportedPostUid: $reportedPostUid, reportedPostText: $reportedPostText, reportMessage: $reportMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportPostPressed &&
            (identical(other.reportedUserUid, reportedUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedUserUid, reportedUserUid)) &&
            (identical(other.reportedPostUid, reportedPostUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedPostUid, reportedPostUid)) &&
            (identical(other.reportedPostText, reportedPostText) ||
                const DeepCollectionEquality()
                    .equals(other.reportedPostText, reportedPostText)) &&
            (identical(other.reportMessage, reportMessage) ||
                const DeepCollectionEquality()
                    .equals(other.reportMessage, reportMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reportedUserUid) ^
      const DeepCollectionEquality().hash(reportedPostUid) ^
      const DeepCollectionEquality().hash(reportedPostText) ^
      const DeepCollectionEquality().hash(reportMessage);

  @JsonKey(ignore: true)
  @override
  _$ReportPostPressedCopyWith<_ReportPostPressed> get copyWith =>
      __$ReportPostPressedCopyWithImpl<_ReportPostPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult reportUserPressed(String reportedUserUid, String reportMessage),
    @required
        TResult reportPostPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedPostText,
            String reportMessage),
    @required
        TResult reportCommentPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedCommentUid,
            String reportedCommentText,
            String reportMessage),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportPostPressed(
        reportedUserUid, reportedPostUid, reportedPostText, reportMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reportUserPressed(String reportedUserUid, String reportMessage),
    TResult reportPostPressed(String reportedUserUid, String reportedPostUid,
        String reportedPostText, String reportMessage),
    TResult reportCommentPressed(
        String reportedUserUid,
        String reportedPostUid,
        String reportedCommentUid,
        String reportedCommentText,
        String reportMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportPostPressed != null) {
      return reportPostPressed(
          reportedUserUid, reportedPostUid, reportedPostText, reportMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reportUserPressed(_ReportUserPressed value),
    @required TResult reportPostPressed(_ReportPostPressed value),
    @required TResult reportCommentPressed(_ReportCommentPressed value),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportPostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reportUserPressed(_ReportUserPressed value),
    TResult reportPostPressed(_ReportPostPressed value),
    TResult reportCommentPressed(_ReportCommentPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportPostPressed != null) {
      return reportPostPressed(this);
    }
    return orElse();
  }
}

abstract class _ReportPostPressed implements ReportEvent {
  const factory _ReportPostPressed(
      {@required String reportedUserUid,
      @required String reportedPostUid,
      @required String reportedPostText,
      @required String reportMessage}) = _$_ReportPostPressed;

  @override
  String get reportedUserUid;
  String get reportedPostUid;
  String get reportedPostText;
  @override
  String get reportMessage;
  @override
  @JsonKey(ignore: true)
  _$ReportPostPressedCopyWith<_ReportPostPressed> get copyWith;
}

/// @nodoc
abstract class _$ReportCommentPressedCopyWith<$Res>
    implements $ReportEventCopyWith<$Res> {
  factory _$ReportCommentPressedCopyWith(_ReportCommentPressed value,
          $Res Function(_ReportCommentPressed) then) =
      __$ReportCommentPressedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String reportedUserUid,
      String reportedPostUid,
      String reportedCommentUid,
      String reportedCommentText,
      String reportMessage});
}

/// @nodoc
class __$ReportCommentPressedCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
    implements _$ReportCommentPressedCopyWith<$Res> {
  __$ReportCommentPressedCopyWithImpl(
      _ReportCommentPressed _value, $Res Function(_ReportCommentPressed) _then)
      : super(_value, (v) => _then(v as _ReportCommentPressed));

  @override
  _ReportCommentPressed get _value => super._value as _ReportCommentPressed;

  @override
  $Res call({
    Object reportedUserUid = freezed,
    Object reportedPostUid = freezed,
    Object reportedCommentUid = freezed,
    Object reportedCommentText = freezed,
    Object reportMessage = freezed,
  }) {
    return _then(_ReportCommentPressed(
      reportedUserUid: reportedUserUid == freezed
          ? _value.reportedUserUid
          : reportedUserUid as String,
      reportedPostUid: reportedPostUid == freezed
          ? _value.reportedPostUid
          : reportedPostUid as String,
      reportedCommentUid: reportedCommentUid == freezed
          ? _value.reportedCommentUid
          : reportedCommentUid as String,
      reportedCommentText: reportedCommentText == freezed
          ? _value.reportedCommentText
          : reportedCommentText as String,
      reportMessage: reportMessage == freezed
          ? _value.reportMessage
          : reportMessage as String,
    ));
  }
}

/// @nodoc
class _$_ReportCommentPressed implements _ReportCommentPressed {
  const _$_ReportCommentPressed(
      {@required this.reportedUserUid,
      @required this.reportedPostUid,
      @required this.reportedCommentUid,
      @required this.reportedCommentText,
      @required this.reportMessage})
      : assert(reportedUserUid != null),
        assert(reportedPostUid != null),
        assert(reportedCommentUid != null),
        assert(reportedCommentText != null),
        assert(reportMessage != null);

  @override
  final String reportedUserUid;
  @override
  final String reportedPostUid;
  @override
  final String reportedCommentUid;
  @override
  final String reportedCommentText;
  @override
  final String reportMessage;

  @override
  String toString() {
    return 'ReportEvent.reportCommentPressed(reportedUserUid: $reportedUserUid, reportedPostUid: $reportedPostUid, reportedCommentUid: $reportedCommentUid, reportedCommentText: $reportedCommentText, reportMessage: $reportMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportCommentPressed &&
            (identical(other.reportedUserUid, reportedUserUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedUserUid, reportedUserUid)) &&
            (identical(other.reportedPostUid, reportedPostUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedPostUid, reportedPostUid)) &&
            (identical(other.reportedCommentUid, reportedCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.reportedCommentUid, reportedCommentUid)) &&
            (identical(other.reportedCommentText, reportedCommentText) ||
                const DeepCollectionEquality()
                    .equals(other.reportedCommentText, reportedCommentText)) &&
            (identical(other.reportMessage, reportMessage) ||
                const DeepCollectionEquality()
                    .equals(other.reportMessage, reportMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reportedUserUid) ^
      const DeepCollectionEquality().hash(reportedPostUid) ^
      const DeepCollectionEquality().hash(reportedCommentUid) ^
      const DeepCollectionEquality().hash(reportedCommentText) ^
      const DeepCollectionEquality().hash(reportMessage);

  @JsonKey(ignore: true)
  @override
  _$ReportCommentPressedCopyWith<_ReportCommentPressed> get copyWith =>
      __$ReportCommentPressedCopyWithImpl<_ReportCommentPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult reportUserPressed(String reportedUserUid, String reportMessage),
    @required
        TResult reportPostPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedPostText,
            String reportMessage),
    @required
        TResult reportCommentPressed(
            String reportedUserUid,
            String reportedPostUid,
            String reportedCommentUid,
            String reportedCommentText,
            String reportMessage),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportCommentPressed(reportedUserUid, reportedPostUid,
        reportedCommentUid, reportedCommentText, reportMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reportUserPressed(String reportedUserUid, String reportMessage),
    TResult reportPostPressed(String reportedUserUid, String reportedPostUid,
        String reportedPostText, String reportMessage),
    TResult reportCommentPressed(
        String reportedUserUid,
        String reportedPostUid,
        String reportedCommentUid,
        String reportedCommentText,
        String reportMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportCommentPressed != null) {
      return reportCommentPressed(reportedUserUid, reportedPostUid,
          reportedCommentUid, reportedCommentText, reportMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reportUserPressed(_ReportUserPressed value),
    @required TResult reportPostPressed(_ReportPostPressed value),
    @required TResult reportCommentPressed(_ReportCommentPressed value),
  }) {
    assert(reportUserPressed != null);
    assert(reportPostPressed != null);
    assert(reportCommentPressed != null);
    return reportCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reportUserPressed(_ReportUserPressed value),
    TResult reportPostPressed(_ReportPostPressed value),
    TResult reportCommentPressed(_ReportCommentPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reportCommentPressed != null) {
      return reportCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _ReportCommentPressed implements ReportEvent {
  const factory _ReportCommentPressed(
      {@required String reportedUserUid,
      @required String reportedPostUid,
      @required String reportedCommentUid,
      @required String reportedCommentText,
      @required String reportMessage}) = _$_ReportCommentPressed;

  @override
  String get reportedUserUid;
  String get reportedPostUid;
  String get reportedCommentUid;
  String get reportedCommentText;
  @override
  String get reportMessage;
  @override
  @JsonKey(ignore: true)
  _$ReportCommentPressedCopyWith<_ReportCommentPressed> get copyWith;
}

/// @nodoc
class _$ReportStateTearOff {
  const _$ReportStateTearOff();

// ignore: unused_element
  _ReportState call(
      {@required String errorMessage, @required int numberToForceUpdateState}) {
    return _ReportState(
      errorMessage: errorMessage,
      numberToForceUpdateState: numberToForceUpdateState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportState = _$ReportStateTearOff();

/// @nodoc
mixin _$ReportState {
  String get errorMessage;
  int get numberToForceUpdateState;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call({String errorMessage, int numberToForceUpdateState});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object numberToForceUpdateState = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      numberToForceUpdateState: numberToForceUpdateState == freezed
          ? _value.numberToForceUpdateState
          : numberToForceUpdateState as int,
    ));
  }
}

/// @nodoc
abstract class _$ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(
          _ReportState value, $Res Function(_ReportState) then) =
      __$ReportStateCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage, int numberToForceUpdateState});
}

/// @nodoc
class __$ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(
      _ReportState _value, $Res Function(_ReportState) _then)
      : super(_value, (v) => _then(v as _ReportState));

  @override
  _ReportState get _value => super._value as _ReportState;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object numberToForceUpdateState = freezed,
  }) {
    return _then(_ReportState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      numberToForceUpdateState: numberToForceUpdateState == freezed
          ? _value.numberToForceUpdateState
          : numberToForceUpdateState as int,
    ));
  }
}

/// @nodoc
class _$_ReportState implements _ReportState {
  const _$_ReportState(
      {@required this.errorMessage, @required this.numberToForceUpdateState})
      : assert(errorMessage != null),
        assert(numberToForceUpdateState != null);

  @override
  final String errorMessage;
  @override
  final int numberToForceUpdateState;

  @override
  String toString() {
    return 'ReportState(errorMessage: $errorMessage, numberToForceUpdateState: $numberToForceUpdateState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(
                    other.numberToForceUpdateState, numberToForceUpdateState) ||
                const DeepCollectionEquality().equals(
                    other.numberToForceUpdateState, numberToForceUpdateState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(numberToForceUpdateState);

  @JsonKey(ignore: true)
  @override
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {@required String errorMessage,
      @required int numberToForceUpdateState}) = _$_ReportState;

  @override
  String get errorMessage;
  @override
  int get numberToForceUpdateState;
  @override
  @JsonKey(ignore: true)
  _$ReportStateCopyWith<_ReportState> get copyWith;
}
