// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedbackEventTearOff {
  const _$FeedbackEventTearOff();

// ignore: unused_element
  _FeedbackMessageChanged feedbackMessageChanged(String feedback) {
    return _FeedbackMessageChanged(
      feedback,
    );
  }

// ignore: unused_element
  _FeedbackTypeChanged feedbackTypeChanged() {
    return const _FeedbackTypeChanged();
  }

// ignore: unused_element
  _SubmitPressed submitPressed() {
    return const _SubmitPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $FeedbackEvent = _$FeedbackEventTearOff();

/// @nodoc
mixin _$FeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feedbackMessageChanged(String feedback),
    @required TResult feedbackTypeChanged(),
    @required TResult submitPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feedbackMessageChanged(String feedback),
    TResult feedbackTypeChanged(),
    TResult submitPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    @required TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    @required TResult submitPressed(_SubmitPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    TResult submitPressed(_SubmitPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FeedbackEventCopyWith<$Res> {
  factory $FeedbackEventCopyWith(
          FeedbackEvent value, $Res Function(FeedbackEvent) then) =
      _$FeedbackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbackEventCopyWithImpl<$Res>
    implements $FeedbackEventCopyWith<$Res> {
  _$FeedbackEventCopyWithImpl(this._value, this._then);

  final FeedbackEvent _value;
  // ignore: unused_field
  final $Res Function(FeedbackEvent) _then;
}

/// @nodoc
abstract class _$FeedbackMessageChangedCopyWith<$Res> {
  factory _$FeedbackMessageChangedCopyWith(_FeedbackMessageChanged value,
          $Res Function(_FeedbackMessageChanged) then) =
      __$FeedbackMessageChangedCopyWithImpl<$Res>;
  $Res call({String feedback});
}

/// @nodoc
class __$FeedbackMessageChangedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res>
    implements _$FeedbackMessageChangedCopyWith<$Res> {
  __$FeedbackMessageChangedCopyWithImpl(_FeedbackMessageChanged _value,
      $Res Function(_FeedbackMessageChanged) _then)
      : super(_value, (v) => _then(v as _FeedbackMessageChanged));

  @override
  _FeedbackMessageChanged get _value => super._value as _FeedbackMessageChanged;

  @override
  $Res call({
    Object feedback = freezed,
  }) {
    return _then(_FeedbackMessageChanged(
      feedback == freezed ? _value.feedback : feedback as String,
    ));
  }
}

/// @nodoc
class _$_FeedbackMessageChanged implements _FeedbackMessageChanged {
  const _$_FeedbackMessageChanged(this.feedback) : assert(feedback != null);

  @override
  final String feedback;

  @override
  String toString() {
    return 'FeedbackEvent.feedbackMessageChanged(feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedbackMessageChanged &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feedback);

  @JsonKey(ignore: true)
  @override
  _$FeedbackMessageChangedCopyWith<_FeedbackMessageChanged> get copyWith =>
      __$FeedbackMessageChangedCopyWithImpl<_FeedbackMessageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feedbackMessageChanged(String feedback),
    @required TResult feedbackTypeChanged(),
    @required TResult submitPressed(),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return feedbackMessageChanged(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feedbackMessageChanged(String feedback),
    TResult feedbackTypeChanged(),
    TResult submitPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feedbackMessageChanged != null) {
      return feedbackMessageChanged(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    @required TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    @required TResult submitPressed(_SubmitPressed value),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return feedbackMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    TResult submitPressed(_SubmitPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feedbackMessageChanged != null) {
      return feedbackMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _FeedbackMessageChanged implements FeedbackEvent {
  const factory _FeedbackMessageChanged(String feedback) =
      _$_FeedbackMessageChanged;

  String get feedback;
  @JsonKey(ignore: true)
  _$FeedbackMessageChangedCopyWith<_FeedbackMessageChanged> get copyWith;
}

/// @nodoc
abstract class _$FeedbackTypeChangedCopyWith<$Res> {
  factory _$FeedbackTypeChangedCopyWith(_FeedbackTypeChanged value,
          $Res Function(_FeedbackTypeChanged) then) =
      __$FeedbackTypeChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeedbackTypeChangedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res>
    implements _$FeedbackTypeChangedCopyWith<$Res> {
  __$FeedbackTypeChangedCopyWithImpl(
      _FeedbackTypeChanged _value, $Res Function(_FeedbackTypeChanged) _then)
      : super(_value, (v) => _then(v as _FeedbackTypeChanged));

  @override
  _FeedbackTypeChanged get _value => super._value as _FeedbackTypeChanged;
}

/// @nodoc
class _$_FeedbackTypeChanged implements _FeedbackTypeChanged {
  const _$_FeedbackTypeChanged();

  @override
  String toString() {
    return 'FeedbackEvent.feedbackTypeChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeedbackTypeChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feedbackMessageChanged(String feedback),
    @required TResult feedbackTypeChanged(),
    @required TResult submitPressed(),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return feedbackTypeChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feedbackMessageChanged(String feedback),
    TResult feedbackTypeChanged(),
    TResult submitPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feedbackTypeChanged != null) {
      return feedbackTypeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    @required TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    @required TResult submitPressed(_SubmitPressed value),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return feedbackTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    TResult submitPressed(_SubmitPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feedbackTypeChanged != null) {
      return feedbackTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _FeedbackTypeChanged implements FeedbackEvent {
  const factory _FeedbackTypeChanged() = _$_FeedbackTypeChanged;
}

/// @nodoc
abstract class _$SubmitPressedCopyWith<$Res> {
  factory _$SubmitPressedCopyWith(
          _SubmitPressed value, $Res Function(_SubmitPressed) then) =
      __$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitPressedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res>
    implements _$SubmitPressedCopyWith<$Res> {
  __$SubmitPressedCopyWithImpl(
      _SubmitPressed _value, $Res Function(_SubmitPressed) _then)
      : super(_value, (v) => _then(v as _SubmitPressed));

  @override
  _SubmitPressed get _value => super._value as _SubmitPressed;
}

/// @nodoc
class _$_SubmitPressed implements _SubmitPressed {
  const _$_SubmitPressed();

  @override
  String toString() {
    return 'FeedbackEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feedbackMessageChanged(String feedback),
    @required TResult feedbackTypeChanged(),
    @required TResult submitPressed(),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feedbackMessageChanged(String feedback),
    TResult feedbackTypeChanged(),
    TResult submitPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    @required TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    @required TResult submitPressed(_SubmitPressed value),
  }) {
    assert(feedbackMessageChanged != null);
    assert(feedbackTypeChanged != null);
    assert(submitPressed != null);
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feedbackMessageChanged(_FeedbackMessageChanged value),
    TResult feedbackTypeChanged(_FeedbackTypeChanged value),
    TResult submitPressed(_SubmitPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class _SubmitPressed implements FeedbackEvent {
  const factory _SubmitPressed() = _$_SubmitPressed;
}

/// @nodoc
class _$FeedbackStateTearOff {
  const _$FeedbackStateTearOff();

// ignore: unused_element
  _FeedbackState call(
      {@required String feedbackMessage,
      @required String errorMessage,
      @required bool isFeedbackTypeFeature,
      @required bool isSubmitting}) {
    return _FeedbackState(
      feedbackMessage: feedbackMessage,
      errorMessage: errorMessage,
      isFeedbackTypeFeature: isFeedbackTypeFeature,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedbackState = _$FeedbackStateTearOff();

/// @nodoc
mixin _$FeedbackState {
  String get feedbackMessage;
  String get errorMessage;
  bool get isFeedbackTypeFeature;
  bool get isSubmitting;

  @JsonKey(ignore: true)
  $FeedbackStateCopyWith<FeedbackState> get copyWith;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res>;
  $Res call(
      {String feedbackMessage,
      String errorMessage,
      bool isFeedbackTypeFeature,
      bool isSubmitting});
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  final FeedbackState _value;
  // ignore: unused_field
  final $Res Function(FeedbackState) _then;

  @override
  $Res call({
    Object feedbackMessage = freezed,
    Object errorMessage = freezed,
    Object isFeedbackTypeFeature = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackMessage: feedbackMessage == freezed
          ? _value.feedbackMessage
          : feedbackMessage as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isFeedbackTypeFeature: isFeedbackTypeFeature == freezed
          ? _value.isFeedbackTypeFeature
          : isFeedbackTypeFeature as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackStateCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedbackStateCopyWith(
          _FeedbackState value, $Res Function(_FeedbackState) then) =
      __$FeedbackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String feedbackMessage,
      String errorMessage,
      bool isFeedbackTypeFeature,
      bool isSubmitting});
}

/// @nodoc
class __$FeedbackStateCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedbackStateCopyWith<$Res> {
  __$FeedbackStateCopyWithImpl(
      _FeedbackState _value, $Res Function(_FeedbackState) _then)
      : super(_value, (v) => _then(v as _FeedbackState));

  @override
  _FeedbackState get _value => super._value as _FeedbackState;

  @override
  $Res call({
    Object feedbackMessage = freezed,
    Object errorMessage = freezed,
    Object isFeedbackTypeFeature = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_FeedbackState(
      feedbackMessage: feedbackMessage == freezed
          ? _value.feedbackMessage
          : feedbackMessage as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isFeedbackTypeFeature: isFeedbackTypeFeature == freezed
          ? _value.isFeedbackTypeFeature
          : isFeedbackTypeFeature as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_FeedbackState implements _FeedbackState {
  const _$_FeedbackState(
      {@required this.feedbackMessage,
      @required this.errorMessage,
      @required this.isFeedbackTypeFeature,
      @required this.isSubmitting})
      : assert(feedbackMessage != null),
        assert(errorMessage != null),
        assert(isFeedbackTypeFeature != null),
        assert(isSubmitting != null);

  @override
  final String feedbackMessage;
  @override
  final String errorMessage;
  @override
  final bool isFeedbackTypeFeature;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'FeedbackState(feedbackMessage: $feedbackMessage, errorMessage: $errorMessage, isFeedbackTypeFeature: $isFeedbackTypeFeature, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedbackState &&
            (identical(other.feedbackMessage, feedbackMessage) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackMessage, feedbackMessage)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isFeedbackTypeFeature, isFeedbackTypeFeature) ||
                const DeepCollectionEquality().equals(
                    other.isFeedbackTypeFeature, isFeedbackTypeFeature)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbackMessage) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isFeedbackTypeFeature) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith =>
      __$FeedbackStateCopyWithImpl<_FeedbackState>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState(
      {@required String feedbackMessage,
      @required String errorMessage,
      @required bool isFeedbackTypeFeature,
      @required bool isSubmitting}) = _$_FeedbackState;

  @override
  String get feedbackMessage;
  @override
  String get errorMessage;
  @override
  bool get isFeedbackTypeFeature;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith;
}
