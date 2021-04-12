// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReviewsPostsEventTearOff {
  const _$ReviewsPostsEventTearOff();

// ignore: unused_element
  _LoadReviewsPressed loadReviewsPressed(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) {
    return _LoadReviewsPressed(
      title: title,
      tmdbId: tmdbId,
      isOfTypeMovie: isOfTypeMovie,
    );
  }

// ignore: unused_element
  _LoadReviewsPressedNextPage loadReviewsPressedNextPage(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) {
    return _LoadReviewsPressedNextPage(
      title: title,
      tmdbId: tmdbId,
      isOfTypeMovie: isOfTypeMovie,
    );
  }

// ignore: unused_element
  _LoadCurrentUserReviewPressed loadCurrentUserReviewPressed(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) {
    return _LoadCurrentUserReviewPressed(
      title: title,
      tmdbId: tmdbId,
      isOfTypeMovie: isOfTypeMovie,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReviewsPostsEvent = _$ReviewsPostsEventTearOff();

/// @nodoc
mixin _$ReviewsPostsEvent {
  String get title;
  int get tmdbId;
  bool get isOfTypeMovie;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loadReviewsPressed(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadReviewsPressedNextPage(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadCurrentUserReviewPressed(
            String title, int tmdbId, bool isOfTypeMovie),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadReviewsPressed(String title, int tmdbId, bool isOfTypeMovie),
    TResult loadReviewsPressedNextPage(
        String title, int tmdbId, bool isOfTypeMovie),
    TResult loadCurrentUserReviewPressed(
        String title, int tmdbId, bool isOfTypeMovie),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadReviewsPressed(_LoadReviewsPressed value),
    @required
        TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    @required
        TResult loadCurrentUserReviewPressed(
            _LoadCurrentUserReviewPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadReviewsPressed(_LoadReviewsPressed value),
    TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    TResult loadCurrentUserReviewPressed(_LoadCurrentUserReviewPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ReviewsPostsEventCopyWith<ReviewsPostsEvent> get copyWith;
}

/// @nodoc
abstract class $ReviewsPostsEventCopyWith<$Res> {
  factory $ReviewsPostsEventCopyWith(
          ReviewsPostsEvent value, $Res Function(ReviewsPostsEvent) then) =
      _$ReviewsPostsEventCopyWithImpl<$Res>;
  $Res call({String title, int tmdbId, bool isOfTypeMovie});
}

/// @nodoc
class _$ReviewsPostsEventCopyWithImpl<$Res>
    implements $ReviewsPostsEventCopyWith<$Res> {
  _$ReviewsPostsEventCopyWithImpl(this._value, this._then);

  final ReviewsPostsEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewsPostsEvent) _then;

  @override
  $Res call({
    Object title = freezed,
    Object tmdbId = freezed,
    Object isOfTypeMovie = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      tmdbId: tmdbId == freezed ? _value.tmdbId : tmdbId as int,
      isOfTypeMovie: isOfTypeMovie == freezed
          ? _value.isOfTypeMovie
          : isOfTypeMovie as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoadReviewsPressedCopyWith<$Res>
    implements $ReviewsPostsEventCopyWith<$Res> {
  factory _$LoadReviewsPressedCopyWith(
          _LoadReviewsPressed value, $Res Function(_LoadReviewsPressed) then) =
      __$LoadReviewsPressedCopyWithImpl<$Res>;
  @override
  $Res call({String title, int tmdbId, bool isOfTypeMovie});
}

/// @nodoc
class __$LoadReviewsPressedCopyWithImpl<$Res>
    extends _$ReviewsPostsEventCopyWithImpl<$Res>
    implements _$LoadReviewsPressedCopyWith<$Res> {
  __$LoadReviewsPressedCopyWithImpl(
      _LoadReviewsPressed _value, $Res Function(_LoadReviewsPressed) _then)
      : super(_value, (v) => _then(v as _LoadReviewsPressed));

  @override
  _LoadReviewsPressed get _value => super._value as _LoadReviewsPressed;

  @override
  $Res call({
    Object title = freezed,
    Object tmdbId = freezed,
    Object isOfTypeMovie = freezed,
  }) {
    return _then(_LoadReviewsPressed(
      title: title == freezed ? _value.title : title as String,
      tmdbId: tmdbId == freezed ? _value.tmdbId : tmdbId as int,
      isOfTypeMovie: isOfTypeMovie == freezed
          ? _value.isOfTypeMovie
          : isOfTypeMovie as bool,
    ));
  }
}

/// @nodoc
class _$_LoadReviewsPressed implements _LoadReviewsPressed {
  const _$_LoadReviewsPressed(
      {@required this.title,
      @required this.tmdbId,
      @required this.isOfTypeMovie})
      : assert(title != null),
        assert(tmdbId != null),
        assert(isOfTypeMovie != null);

  @override
  final String title;
  @override
  final int tmdbId;
  @override
  final bool isOfTypeMovie;

  @override
  String toString() {
    return 'ReviewsPostsEvent.loadReviewsPressed(title: $title, tmdbId: $tmdbId, isOfTypeMovie: $isOfTypeMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadReviewsPressed &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tmdbId, tmdbId) ||
                const DeepCollectionEquality().equals(other.tmdbId, tmdbId)) &&
            (identical(other.isOfTypeMovie, isOfTypeMovie) ||
                const DeepCollectionEquality()
                    .equals(other.isOfTypeMovie, isOfTypeMovie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tmdbId) ^
      const DeepCollectionEquality().hash(isOfTypeMovie);

  @JsonKey(ignore: true)
  @override
  _$LoadReviewsPressedCopyWith<_LoadReviewsPressed> get copyWith =>
      __$LoadReviewsPressedCopyWithImpl<_LoadReviewsPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loadReviewsPressed(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadReviewsPressedNextPage(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadCurrentUserReviewPressed(
            String title, int tmdbId, bool isOfTypeMovie),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadReviewsPressed(title, tmdbId, isOfTypeMovie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadReviewsPressed(String title, int tmdbId, bool isOfTypeMovie),
    TResult loadReviewsPressedNextPage(
        String title, int tmdbId, bool isOfTypeMovie),
    TResult loadCurrentUserReviewPressed(
        String title, int tmdbId, bool isOfTypeMovie),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadReviewsPressed != null) {
      return loadReviewsPressed(title, tmdbId, isOfTypeMovie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadReviewsPressed(_LoadReviewsPressed value),
    @required
        TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    @required
        TResult loadCurrentUserReviewPressed(
            _LoadCurrentUserReviewPressed value),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadReviewsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadReviewsPressed(_LoadReviewsPressed value),
    TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    TResult loadCurrentUserReviewPressed(_LoadCurrentUserReviewPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadReviewsPressed != null) {
      return loadReviewsPressed(this);
    }
    return orElse();
  }
}

abstract class _LoadReviewsPressed implements ReviewsPostsEvent {
  const factory _LoadReviewsPressed(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) = _$_LoadReviewsPressed;

  @override
  String get title;
  @override
  int get tmdbId;
  @override
  bool get isOfTypeMovie;
  @override
  @JsonKey(ignore: true)
  _$LoadReviewsPressedCopyWith<_LoadReviewsPressed> get copyWith;
}

/// @nodoc
abstract class _$LoadReviewsPressedNextPageCopyWith<$Res>
    implements $ReviewsPostsEventCopyWith<$Res> {
  factory _$LoadReviewsPressedNextPageCopyWith(
          _LoadReviewsPressedNextPage value,
          $Res Function(_LoadReviewsPressedNextPage) then) =
      __$LoadReviewsPressedNextPageCopyWithImpl<$Res>;
  @override
  $Res call({String title, int tmdbId, bool isOfTypeMovie});
}

/// @nodoc
class __$LoadReviewsPressedNextPageCopyWithImpl<$Res>
    extends _$ReviewsPostsEventCopyWithImpl<$Res>
    implements _$LoadReviewsPressedNextPageCopyWith<$Res> {
  __$LoadReviewsPressedNextPageCopyWithImpl(_LoadReviewsPressedNextPage _value,
      $Res Function(_LoadReviewsPressedNextPage) _then)
      : super(_value, (v) => _then(v as _LoadReviewsPressedNextPage));

  @override
  _LoadReviewsPressedNextPage get _value =>
      super._value as _LoadReviewsPressedNextPage;

  @override
  $Res call({
    Object title = freezed,
    Object tmdbId = freezed,
    Object isOfTypeMovie = freezed,
  }) {
    return _then(_LoadReviewsPressedNextPage(
      title: title == freezed ? _value.title : title as String,
      tmdbId: tmdbId == freezed ? _value.tmdbId : tmdbId as int,
      isOfTypeMovie: isOfTypeMovie == freezed
          ? _value.isOfTypeMovie
          : isOfTypeMovie as bool,
    ));
  }
}

/// @nodoc
class _$_LoadReviewsPressedNextPage implements _LoadReviewsPressedNextPage {
  const _$_LoadReviewsPressedNextPage(
      {@required this.title,
      @required this.tmdbId,
      @required this.isOfTypeMovie})
      : assert(title != null),
        assert(tmdbId != null),
        assert(isOfTypeMovie != null);

  @override
  final String title;
  @override
  final int tmdbId;
  @override
  final bool isOfTypeMovie;

  @override
  String toString() {
    return 'ReviewsPostsEvent.loadReviewsPressedNextPage(title: $title, tmdbId: $tmdbId, isOfTypeMovie: $isOfTypeMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadReviewsPressedNextPage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tmdbId, tmdbId) ||
                const DeepCollectionEquality().equals(other.tmdbId, tmdbId)) &&
            (identical(other.isOfTypeMovie, isOfTypeMovie) ||
                const DeepCollectionEquality()
                    .equals(other.isOfTypeMovie, isOfTypeMovie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tmdbId) ^
      const DeepCollectionEquality().hash(isOfTypeMovie);

  @JsonKey(ignore: true)
  @override
  _$LoadReviewsPressedNextPageCopyWith<_LoadReviewsPressedNextPage>
      get copyWith => __$LoadReviewsPressedNextPageCopyWithImpl<
          _LoadReviewsPressedNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loadReviewsPressed(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadReviewsPressedNextPage(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadCurrentUserReviewPressed(
            String title, int tmdbId, bool isOfTypeMovie),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadReviewsPressedNextPage(title, tmdbId, isOfTypeMovie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadReviewsPressed(String title, int tmdbId, bool isOfTypeMovie),
    TResult loadReviewsPressedNextPage(
        String title, int tmdbId, bool isOfTypeMovie),
    TResult loadCurrentUserReviewPressed(
        String title, int tmdbId, bool isOfTypeMovie),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadReviewsPressedNextPage != null) {
      return loadReviewsPressedNextPage(title, tmdbId, isOfTypeMovie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadReviewsPressed(_LoadReviewsPressed value),
    @required
        TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    @required
        TResult loadCurrentUserReviewPressed(
            _LoadCurrentUserReviewPressed value),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadReviewsPressedNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadReviewsPressed(_LoadReviewsPressed value),
    TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    TResult loadCurrentUserReviewPressed(_LoadCurrentUserReviewPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadReviewsPressedNextPage != null) {
      return loadReviewsPressedNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadReviewsPressedNextPage implements ReviewsPostsEvent {
  const factory _LoadReviewsPressedNextPage(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) = _$_LoadReviewsPressedNextPage;

  @override
  String get title;
  @override
  int get tmdbId;
  @override
  bool get isOfTypeMovie;
  @override
  @JsonKey(ignore: true)
  _$LoadReviewsPressedNextPageCopyWith<_LoadReviewsPressedNextPage>
      get copyWith;
}

/// @nodoc
abstract class _$LoadCurrentUserReviewPressedCopyWith<$Res>
    implements $ReviewsPostsEventCopyWith<$Res> {
  factory _$LoadCurrentUserReviewPressedCopyWith(
          _LoadCurrentUserReviewPressed value,
          $Res Function(_LoadCurrentUserReviewPressed) then) =
      __$LoadCurrentUserReviewPressedCopyWithImpl<$Res>;
  @override
  $Res call({String title, int tmdbId, bool isOfTypeMovie});
}

/// @nodoc
class __$LoadCurrentUserReviewPressedCopyWithImpl<$Res>
    extends _$ReviewsPostsEventCopyWithImpl<$Res>
    implements _$LoadCurrentUserReviewPressedCopyWith<$Res> {
  __$LoadCurrentUserReviewPressedCopyWithImpl(
      _LoadCurrentUserReviewPressed _value,
      $Res Function(_LoadCurrentUserReviewPressed) _then)
      : super(_value, (v) => _then(v as _LoadCurrentUserReviewPressed));

  @override
  _LoadCurrentUserReviewPressed get _value =>
      super._value as _LoadCurrentUserReviewPressed;

  @override
  $Res call({
    Object title = freezed,
    Object tmdbId = freezed,
    Object isOfTypeMovie = freezed,
  }) {
    return _then(_LoadCurrentUserReviewPressed(
      title: title == freezed ? _value.title : title as String,
      tmdbId: tmdbId == freezed ? _value.tmdbId : tmdbId as int,
      isOfTypeMovie: isOfTypeMovie == freezed
          ? _value.isOfTypeMovie
          : isOfTypeMovie as bool,
    ));
  }
}

/// @nodoc
class _$_LoadCurrentUserReviewPressed implements _LoadCurrentUserReviewPressed {
  const _$_LoadCurrentUserReviewPressed(
      {@required this.title,
      @required this.tmdbId,
      @required this.isOfTypeMovie})
      : assert(title != null),
        assert(tmdbId != null),
        assert(isOfTypeMovie != null);

  @override
  final String title;
  @override
  final int tmdbId;
  @override
  final bool isOfTypeMovie;

  @override
  String toString() {
    return 'ReviewsPostsEvent.loadCurrentUserReviewPressed(title: $title, tmdbId: $tmdbId, isOfTypeMovie: $isOfTypeMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCurrentUserReviewPressed &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tmdbId, tmdbId) ||
                const DeepCollectionEquality().equals(other.tmdbId, tmdbId)) &&
            (identical(other.isOfTypeMovie, isOfTypeMovie) ||
                const DeepCollectionEquality()
                    .equals(other.isOfTypeMovie, isOfTypeMovie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tmdbId) ^
      const DeepCollectionEquality().hash(isOfTypeMovie);

  @JsonKey(ignore: true)
  @override
  _$LoadCurrentUserReviewPressedCopyWith<_LoadCurrentUserReviewPressed>
      get copyWith => __$LoadCurrentUserReviewPressedCopyWithImpl<
          _LoadCurrentUserReviewPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loadReviewsPressed(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadReviewsPressedNextPage(
            String title, int tmdbId, bool isOfTypeMovie),
    @required
        TResult loadCurrentUserReviewPressed(
            String title, int tmdbId, bool isOfTypeMovie),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadCurrentUserReviewPressed(title, tmdbId, isOfTypeMovie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadReviewsPressed(String title, int tmdbId, bool isOfTypeMovie),
    TResult loadReviewsPressedNextPage(
        String title, int tmdbId, bool isOfTypeMovie),
    TResult loadCurrentUserReviewPressed(
        String title, int tmdbId, bool isOfTypeMovie),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentUserReviewPressed != null) {
      return loadCurrentUserReviewPressed(title, tmdbId, isOfTypeMovie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadReviewsPressed(_LoadReviewsPressed value),
    @required
        TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    @required
        TResult loadCurrentUserReviewPressed(
            _LoadCurrentUserReviewPressed value),
  }) {
    assert(loadReviewsPressed != null);
    assert(loadReviewsPressedNextPage != null);
    assert(loadCurrentUserReviewPressed != null);
    return loadCurrentUserReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadReviewsPressed(_LoadReviewsPressed value),
    TResult loadReviewsPressedNextPage(_LoadReviewsPressedNextPage value),
    TResult loadCurrentUserReviewPressed(_LoadCurrentUserReviewPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentUserReviewPressed != null) {
      return loadCurrentUserReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentUserReviewPressed implements ReviewsPostsEvent {
  const factory _LoadCurrentUserReviewPressed(
      {@required String title,
      @required int tmdbId,
      @required bool isOfTypeMovie}) = _$_LoadCurrentUserReviewPressed;

  @override
  String get title;
  @override
  int get tmdbId;
  @override
  bool get isOfTypeMovie;
  @override
  @JsonKey(ignore: true)
  _$LoadCurrentUserReviewPressedCopyWith<_LoadCurrentUserReviewPressed>
      get copyWith;
}

/// @nodoc
class _$ReviewsPostsStateTearOff {
  const _$ReviewsPostsStateTearOff();

// ignore: unused_element
  _ReviewsPostsState call(
      {@required bool isLoadingReviews,
      @required List<OurUserPost> reviews,
      @required Timestamp reviewLastInListTimestamp,
      @required int nextPage,
      @required bool isThereMoreReviewsToLoad,
      @required bool isLoadingCurrentUserReview,
      @required OurUserPost currentUserReview}) {
    return _ReviewsPostsState(
      isLoadingReviews: isLoadingReviews,
      reviews: reviews,
      reviewLastInListTimestamp: reviewLastInListTimestamp,
      nextPage: nextPage,
      isThereMoreReviewsToLoad: isThereMoreReviewsToLoad,
      isLoadingCurrentUserReview: isLoadingCurrentUserReview,
      currentUserReview: currentUserReview,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReviewsPostsState = _$ReviewsPostsStateTearOff();

/// @nodoc
mixin _$ReviewsPostsState {
  bool get isLoadingReviews;
  List<OurUserPost> get reviews; //pagination
  Timestamp get reviewLastInListTimestamp;
  int get nextPage;
  bool
      get isThereMoreReviewsToLoad; //Current User Review for Movie or Tv Show opened
  bool get isLoadingCurrentUserReview;
  OurUserPost get currentUserReview;

  @JsonKey(ignore: true)
  $ReviewsPostsStateCopyWith<ReviewsPostsState> get copyWith;
}

/// @nodoc
abstract class $ReviewsPostsStateCopyWith<$Res> {
  factory $ReviewsPostsStateCopyWith(
          ReviewsPostsState value, $Res Function(ReviewsPostsState) then) =
      _$ReviewsPostsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoadingReviews,
      List<OurUserPost> reviews,
      Timestamp reviewLastInListTimestamp,
      int nextPage,
      bool isThereMoreReviewsToLoad,
      bool isLoadingCurrentUserReview,
      OurUserPost currentUserReview});
}

/// @nodoc
class _$ReviewsPostsStateCopyWithImpl<$Res>
    implements $ReviewsPostsStateCopyWith<$Res> {
  _$ReviewsPostsStateCopyWithImpl(this._value, this._then);

  final ReviewsPostsState _value;
  // ignore: unused_field
  final $Res Function(ReviewsPostsState) _then;

  @override
  $Res call({
    Object isLoadingReviews = freezed,
    Object reviews = freezed,
    Object reviewLastInListTimestamp = freezed,
    Object nextPage = freezed,
    Object isThereMoreReviewsToLoad = freezed,
    Object isLoadingCurrentUserReview = freezed,
    Object currentUserReview = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingReviews: isLoadingReviews == freezed
          ? _value.isLoadingReviews
          : isLoadingReviews as bool,
      reviews:
          reviews == freezed ? _value.reviews : reviews as List<OurUserPost>,
      reviewLastInListTimestamp: reviewLastInListTimestamp == freezed
          ? _value.reviewLastInListTimestamp
          : reviewLastInListTimestamp as Timestamp,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreReviewsToLoad: isThereMoreReviewsToLoad == freezed
          ? _value.isThereMoreReviewsToLoad
          : isThereMoreReviewsToLoad as bool,
      isLoadingCurrentUserReview: isLoadingCurrentUserReview == freezed
          ? _value.isLoadingCurrentUserReview
          : isLoadingCurrentUserReview as bool,
      currentUserReview: currentUserReview == freezed
          ? _value.currentUserReview
          : currentUserReview as OurUserPost,
    ));
  }
}

/// @nodoc
abstract class _$ReviewsPostsStateCopyWith<$Res>
    implements $ReviewsPostsStateCopyWith<$Res> {
  factory _$ReviewsPostsStateCopyWith(
          _ReviewsPostsState value, $Res Function(_ReviewsPostsState) then) =
      __$ReviewsPostsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoadingReviews,
      List<OurUserPost> reviews,
      Timestamp reviewLastInListTimestamp,
      int nextPage,
      bool isThereMoreReviewsToLoad,
      bool isLoadingCurrentUserReview,
      OurUserPost currentUserReview});
}

/// @nodoc
class __$ReviewsPostsStateCopyWithImpl<$Res>
    extends _$ReviewsPostsStateCopyWithImpl<$Res>
    implements _$ReviewsPostsStateCopyWith<$Res> {
  __$ReviewsPostsStateCopyWithImpl(
      _ReviewsPostsState _value, $Res Function(_ReviewsPostsState) _then)
      : super(_value, (v) => _then(v as _ReviewsPostsState));

  @override
  _ReviewsPostsState get _value => super._value as _ReviewsPostsState;

  @override
  $Res call({
    Object isLoadingReviews = freezed,
    Object reviews = freezed,
    Object reviewLastInListTimestamp = freezed,
    Object nextPage = freezed,
    Object isThereMoreReviewsToLoad = freezed,
    Object isLoadingCurrentUserReview = freezed,
    Object currentUserReview = freezed,
  }) {
    return _then(_ReviewsPostsState(
      isLoadingReviews: isLoadingReviews == freezed
          ? _value.isLoadingReviews
          : isLoadingReviews as bool,
      reviews:
          reviews == freezed ? _value.reviews : reviews as List<OurUserPost>,
      reviewLastInListTimestamp: reviewLastInListTimestamp == freezed
          ? _value.reviewLastInListTimestamp
          : reviewLastInListTimestamp as Timestamp,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMoreReviewsToLoad: isThereMoreReviewsToLoad == freezed
          ? _value.isThereMoreReviewsToLoad
          : isThereMoreReviewsToLoad as bool,
      isLoadingCurrentUserReview: isLoadingCurrentUserReview == freezed
          ? _value.isLoadingCurrentUserReview
          : isLoadingCurrentUserReview as bool,
      currentUserReview: currentUserReview == freezed
          ? _value.currentUserReview
          : currentUserReview as OurUserPost,
    ));
  }
}

/// @nodoc
class _$_ReviewsPostsState implements _ReviewsPostsState {
  const _$_ReviewsPostsState(
      {@required this.isLoadingReviews,
      @required this.reviews,
      @required this.reviewLastInListTimestamp,
      @required this.nextPage,
      @required this.isThereMoreReviewsToLoad,
      @required this.isLoadingCurrentUserReview,
      @required this.currentUserReview})
      : assert(isLoadingReviews != null),
        assert(reviews != null),
        assert(reviewLastInListTimestamp != null),
        assert(nextPage != null),
        assert(isThereMoreReviewsToLoad != null),
        assert(isLoadingCurrentUserReview != null),
        assert(currentUserReview != null);

  @override
  final bool isLoadingReviews;
  @override
  final List<OurUserPost> reviews;
  @override //pagination
  final Timestamp reviewLastInListTimestamp;
  @override
  final int nextPage;
  @override
  final bool isThereMoreReviewsToLoad;
  @override //Current User Review for Movie or Tv Show opened
  final bool isLoadingCurrentUserReview;
  @override
  final OurUserPost currentUserReview;

  @override
  String toString() {
    return 'ReviewsPostsState(isLoadingReviews: $isLoadingReviews, reviews: $reviews, reviewLastInListTimestamp: $reviewLastInListTimestamp, nextPage: $nextPage, isThereMoreReviewsToLoad: $isThereMoreReviewsToLoad, isLoadingCurrentUserReview: $isLoadingCurrentUserReview, currentUserReview: $currentUserReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsPostsState &&
            (identical(other.isLoadingReviews, isLoadingReviews) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingReviews, isLoadingReviews)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality()
                    .equals(other.reviews, reviews)) &&
            (identical(other.reviewLastInListTimestamp,
                    reviewLastInListTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.reviewLastInListTimestamp,
                    reviewLastInListTimestamp)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(
                    other.isThereMoreReviewsToLoad, isThereMoreReviewsToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMoreReviewsToLoad,
                    isThereMoreReviewsToLoad)) &&
            (identical(other.isLoadingCurrentUserReview,
                    isLoadingCurrentUserReview) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingCurrentUserReview,
                    isLoadingCurrentUserReview)) &&
            (identical(other.currentUserReview, currentUserReview) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserReview, currentUserReview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoadingReviews) ^
      const DeepCollectionEquality().hash(reviews) ^
      const DeepCollectionEquality().hash(reviewLastInListTimestamp) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(isThereMoreReviewsToLoad) ^
      const DeepCollectionEquality().hash(isLoadingCurrentUserReview) ^
      const DeepCollectionEquality().hash(currentUserReview);

  @JsonKey(ignore: true)
  @override
  _$ReviewsPostsStateCopyWith<_ReviewsPostsState> get copyWith =>
      __$ReviewsPostsStateCopyWithImpl<_ReviewsPostsState>(this, _$identity);
}

abstract class _ReviewsPostsState implements ReviewsPostsState {
  const factory _ReviewsPostsState(
      {@required bool isLoadingReviews,
      @required List<OurUserPost> reviews,
      @required Timestamp reviewLastInListTimestamp,
      @required int nextPage,
      @required bool isThereMoreReviewsToLoad,
      @required bool isLoadingCurrentUserReview,
      @required OurUserPost currentUserReview}) = _$_ReviewsPostsState;

  @override
  bool get isLoadingReviews;
  @override
  List<OurUserPost> get reviews;
  @override //pagination
  Timestamp get reviewLastInListTimestamp;
  @override
  int get nextPage;
  @override
  bool get isThereMoreReviewsToLoad;
  @override //Current User Review for Movie or Tv Show opened
  bool get isLoadingCurrentUserReview;
  @override
  OurUserPost get currentUserReview;
  @override
  @JsonKey(ignore: true)
  _$ReviewsPostsStateCopyWith<_ReviewsPostsState> get copyWith;
}
