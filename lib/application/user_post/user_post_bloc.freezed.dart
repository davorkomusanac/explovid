// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserPostEventTearOff {
  const _$UserPostEventTearOff();

// ignore: unused_element
  _LoadPostPressed loadPostPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _LoadPostPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _ShowSpoilerPressed showSpoilerPressed() {
    return const _ShowSpoilerPressed();
  }

// ignore: unused_element
  _LikePostPressed likePostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String postPhotoUrl}) {
    return _LikePostPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      postPhotoUrl: postPhotoUrl,
    );
  }

// ignore: unused_element
  _UnlikePostPressed unlikePostPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _UnlikePostPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _ShowPostLikersPressed showPostLikersPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _ShowPostLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _NextPageShowPostLikersPressed nextPageShowPostLikersPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _NextPageShowPostLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _CommentPostPressed commentPostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentText,
      @required bool isCommentSpoiler,
      @required String postPhotoUrl}) {
    return _CommentPostPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentText: commentText,
      isCommentSpoiler: isCommentSpoiler,
      postPhotoUrl: postPhotoUrl,
    );
  }

// ignore: unused_element
  _DeleteCommentPostPressed deleteCommentPostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid}) {
    return _DeleteCommentPostPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
    );
  }

// ignore: unused_element
  _ShowPostCommentsPressed showPostCommentsPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _ShowPostCommentsPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _NextPageShowPostCommentsPressed nextPageShowPostCommentsPressed(
      {@required String postOwnerUid, @required String postUid}) {
    return _NextPageShowPostCommentsPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
    );
  }

// ignore: unused_element
  _ShowSpoilersPressed showAllSpoilersInCommentsPressed() {
    return const _ShowSpoilersPressed();
  }

// ignore: unused_element
  _LikePostCommentPressed likePostCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String commentText,
      @required String postPhotoUrl}) {
    return _LikePostCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
      commentText: commentText,
      postPhotoUrl: postPhotoUrl,
    );
  }

// ignore: unused_element
  _UnlikePostCommentPressed unlikePostCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid}) {
    return _UnlikePostCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
    );
  }

// ignore: unused_element
  _ShowCommentLikersPressed showCommentLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid}) {
    return _ShowCommentLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentUid: commentUid,
    );
  }

// ignore: unused_element
  _NextPageShowCommentLikersPressed nextPageShowCommentLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid}) {
    return _NextPageShowCommentLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      commentUid: commentUid,
    );
  }

// ignore: unused_element
  _ReplyToCommentPressed replyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentText,
      @required bool isCommentSpoiler,
      @required String postPhotoUrl,
      @required String uidOfTheCommentOwnerBeingRepliedTo}) {
    return _ReplyToCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentText: commentText,
      isCommentSpoiler: isCommentSpoiler,
      postPhotoUrl: postPhotoUrl,
      uidOfTheCommentOwnerBeingRepliedTo: uidOfTheCommentOwnerBeingRepliedTo,
    );
  }

// ignore: unused_element
  _DeleteReplyToCommentPressed deleteReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String parentCommentOwnerUid}) {
    return _DeleteReplyToCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
      parentCommentOwnerUid: parentCommentOwnerUid,
    );
  }

// ignore: unused_element
  _ShowCommentRepliesPressed showCommentRepliesPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid}) {
    return _ShowCommentRepliesPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
    );
  }

// ignore: unused_element
  _NextPageShowCommentRepliesPressed nextPageShowCommentRepliesPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid}) {
    return _NextPageShowCommentRepliesPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
    );
  }

// ignore: unused_element
  _HideCommentRepliesPressed hideCommentRepliesPressed(
      {@required String parentCommentUid}) {
    return _HideCommentRepliesPressed(
      parentCommentUid: parentCommentUid,
    );
  }

// ignore: unused_element
  _UnHideCommentRepliesPressed unHideCommentRepliesPressed(
      {@required String parentCommentUid}) {
    return _UnHideCommentRepliesPressed(
      parentCommentUid: parentCommentUid,
    );
  }

// ignore: unused_element
  _LikeReplyToCommentPressed likeReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String commentText,
      @required String postPhotoUrl}) {
    return _LikeReplyToCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
      commentText: commentText,
      postPhotoUrl: postPhotoUrl,
    );
  }

// ignore: unused_element
  _UnlikeReplyToCommentPressed unlikeReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid}) {
    return _UnlikeReplyToCommentPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentUid: commentUid,
      commentOwnerUid: commentOwnerUid,
    );
  }

// ignore: unused_element
  _ShowReplyLikersPressed showReplyLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid}) {
    return _ShowReplyLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentUid: commentUid,
    );
  }

// ignore: unused_element
  _NextPageShowReplyLikersPressed nextPageShowReplyLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid}) {
    return _NextPageShowReplyLikersPressed(
      postOwnerUid: postOwnerUid,
      postUid: postUid,
      parentCommentUid: parentCommentUid,
      commentUid: commentUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserPostEvent = _$UserPostEventTearOff();

/// @nodoc
mixin _$UserPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserPostEventCopyWith<$Res> {
  factory $UserPostEventCopyWith(
          UserPostEvent value, $Res Function(UserPostEvent) then) =
      _$UserPostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPostEventCopyWithImpl<$Res>
    implements $UserPostEventCopyWith<$Res> {
  _$UserPostEventCopyWithImpl(this._value, this._then);

  final UserPostEvent _value;
  // ignore: unused_field
  final $Res Function(UserPostEvent) _then;
}

/// @nodoc
abstract class _$LoadPostPressedCopyWith<$Res> {
  factory _$LoadPostPressedCopyWith(
          _LoadPostPressed value, $Res Function(_LoadPostPressed) then) =
      __$LoadPostPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$LoadPostPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$LoadPostPressedCopyWith<$Res> {
  __$LoadPostPressedCopyWithImpl(
      _LoadPostPressed _value, $Res Function(_LoadPostPressed) _then)
      : super(_value, (v) => _then(v as _LoadPostPressed));

  @override
  _LoadPostPressed get _value => super._value as _LoadPostPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_LoadPostPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_LoadPostPressed implements _LoadPostPressed {
  const _$_LoadPostPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.loadPostPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadPostPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$LoadPostPressedCopyWith<_LoadPostPressed> get copyWith =>
      __$LoadPostPressedCopyWithImpl<_LoadPostPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return loadPostPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPostPressed != null) {
      return loadPostPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return loadPostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPostPressed != null) {
      return loadPostPressed(this);
    }
    return orElse();
  }
}

abstract class _LoadPostPressed implements UserPostEvent {
  const factory _LoadPostPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_LoadPostPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$LoadPostPressedCopyWith<_LoadPostPressed> get copyWith;
}

/// @nodoc
abstract class _$ShowSpoilerPressedCopyWith<$Res> {
  factory _$ShowSpoilerPressedCopyWith(
          _ShowSpoilerPressed value, $Res Function(_ShowSpoilerPressed) then) =
      __$ShowSpoilerPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSpoilerPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowSpoilerPressedCopyWith<$Res> {
  __$ShowSpoilerPressedCopyWithImpl(
      _ShowSpoilerPressed _value, $Res Function(_ShowSpoilerPressed) _then)
      : super(_value, (v) => _then(v as _ShowSpoilerPressed));

  @override
  _ShowSpoilerPressed get _value => super._value as _ShowSpoilerPressed;
}

/// @nodoc
class _$_ShowSpoilerPressed implements _ShowSpoilerPressed {
  const _$_ShowSpoilerPressed();

  @override
  String toString() {
    return 'UserPostEvent.showSpoilerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowSpoilerPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showSpoilerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSpoilerPressed != null) {
      return showSpoilerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showSpoilerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSpoilerPressed != null) {
      return showSpoilerPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowSpoilerPressed implements UserPostEvent {
  const factory _ShowSpoilerPressed() = _$_ShowSpoilerPressed;
}

/// @nodoc
abstract class _$LikePostPressedCopyWith<$Res> {
  factory _$LikePostPressedCopyWith(
          _LikePostPressed value, $Res Function(_LikePostPressed) then) =
      __$LikePostPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid, String postPhotoUrl});
}

/// @nodoc
class __$LikePostPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$LikePostPressedCopyWith<$Res> {
  __$LikePostPressedCopyWithImpl(
      _LikePostPressed _value, $Res Function(_LikePostPressed) _then)
      : super(_value, (v) => _then(v as _LikePostPressed));

  @override
  _LikePostPressed get _value => super._value as _LikePostPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object postPhotoUrl = freezed,
  }) {
    return _then(_LikePostPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      postPhotoUrl: postPhotoUrl == freezed
          ? _value.postPhotoUrl
          : postPhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$_LikePostPressed implements _LikePostPressed {
  const _$_LikePostPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.postPhotoUrl})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(postPhotoUrl != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String postPhotoUrl;

  @override
  String toString() {
    return 'UserPostEvent.likePostPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikePostPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postPhotoUrl, postPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(postPhotoUrl);

  @JsonKey(ignore: true)
  @override
  _$LikePostPressedCopyWith<_LikePostPressed> get copyWith =>
      __$LikePostPressedCopyWithImpl<_LikePostPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likePostPressed(postOwnerUid, postUid, postPhotoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePostPressed != null) {
      return likePostPressed(postOwnerUid, postUid, postPhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likePostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePostPressed != null) {
      return likePostPressed(this);
    }
    return orElse();
  }
}

abstract class _LikePostPressed implements UserPostEvent {
  const factory _LikePostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String postPhotoUrl}) = _$_LikePostPressed;

  String get postOwnerUid;
  String get postUid;
  String get postPhotoUrl;
  @JsonKey(ignore: true)
  _$LikePostPressedCopyWith<_LikePostPressed> get copyWith;
}

/// @nodoc
abstract class _$UnlikePostPressedCopyWith<$Res> {
  factory _$UnlikePostPressedCopyWith(
          _UnlikePostPressed value, $Res Function(_UnlikePostPressed) then) =
      __$UnlikePostPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$UnlikePostPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$UnlikePostPressedCopyWith<$Res> {
  __$UnlikePostPressedCopyWithImpl(
      _UnlikePostPressed _value, $Res Function(_UnlikePostPressed) _then)
      : super(_value, (v) => _then(v as _UnlikePostPressed));

  @override
  _UnlikePostPressed get _value => super._value as _UnlikePostPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_UnlikePostPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_UnlikePostPressed implements _UnlikePostPressed {
  const _$_UnlikePostPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.unlikePostPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlikePostPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$UnlikePostPressedCopyWith<_UnlikePostPressed> get copyWith =>
      __$UnlikePostPressedCopyWithImpl<_UnlikePostPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikePostPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePostPressed != null) {
      return unlikePostPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikePostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePostPressed != null) {
      return unlikePostPressed(this);
    }
    return orElse();
  }
}

abstract class _UnlikePostPressed implements UserPostEvent {
  const factory _UnlikePostPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_UnlikePostPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$UnlikePostPressedCopyWith<_UnlikePostPressed> get copyWith;
}

/// @nodoc
abstract class _$ShowPostLikersPressedCopyWith<$Res> {
  factory _$ShowPostLikersPressedCopyWith(_ShowPostLikersPressed value,
          $Res Function(_ShowPostLikersPressed) then) =
      __$ShowPostLikersPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$ShowPostLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowPostLikersPressedCopyWith<$Res> {
  __$ShowPostLikersPressedCopyWithImpl(_ShowPostLikersPressed _value,
      $Res Function(_ShowPostLikersPressed) _then)
      : super(_value, (v) => _then(v as _ShowPostLikersPressed));

  @override
  _ShowPostLikersPressed get _value => super._value as _ShowPostLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_ShowPostLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_ShowPostLikersPressed implements _ShowPostLikersPressed {
  const _$_ShowPostLikersPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.showPostLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowPostLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$ShowPostLikersPressedCopyWith<_ShowPostLikersPressed> get copyWith =>
      __$ShowPostLikersPressedCopyWithImpl<_ShowPostLikersPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showPostLikersPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPostLikersPressed != null) {
      return showPostLikersPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showPostLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPostLikersPressed != null) {
      return showPostLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowPostLikersPressed implements UserPostEvent {
  const factory _ShowPostLikersPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_ShowPostLikersPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$ShowPostLikersPressedCopyWith<_ShowPostLikersPressed> get copyWith;
}

/// @nodoc
abstract class _$NextPageShowPostLikersPressedCopyWith<$Res> {
  factory _$NextPageShowPostLikersPressedCopyWith(
          _NextPageShowPostLikersPressed value,
          $Res Function(_NextPageShowPostLikersPressed) then) =
      __$NextPageShowPostLikersPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$NextPageShowPostLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$NextPageShowPostLikersPressedCopyWith<$Res> {
  __$NextPageShowPostLikersPressedCopyWithImpl(
      _NextPageShowPostLikersPressed _value,
      $Res Function(_NextPageShowPostLikersPressed) _then)
      : super(_value, (v) => _then(v as _NextPageShowPostLikersPressed));

  @override
  _NextPageShowPostLikersPressed get _value =>
      super._value as _NextPageShowPostLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_NextPageShowPostLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_NextPageShowPostLikersPressed
    implements _NextPageShowPostLikersPressed {
  const _$_NextPageShowPostLikersPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.nextPageShowPostLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageShowPostLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$NextPageShowPostLikersPressedCopyWith<_NextPageShowPostLikersPressed>
      get copyWith => __$NextPageShowPostLikersPressedCopyWithImpl<
          _NextPageShowPostLikersPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowPostLikersPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowPostLikersPressed != null) {
      return nextPageShowPostLikersPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowPostLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowPostLikersPressed != null) {
      return nextPageShowPostLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPageShowPostLikersPressed implements UserPostEvent {
  const factory _NextPageShowPostLikersPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_NextPageShowPostLikersPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$NextPageShowPostLikersPressedCopyWith<_NextPageShowPostLikersPressed>
      get copyWith;
}

/// @nodoc
abstract class _$CommentPostPressedCopyWith<$Res> {
  factory _$CommentPostPressedCopyWith(
          _CommentPostPressed value, $Res Function(_CommentPostPressed) then) =
      __$CommentPostPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String commentText,
      bool isCommentSpoiler,
      String postPhotoUrl});
}

/// @nodoc
class __$CommentPostPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$CommentPostPressedCopyWith<$Res> {
  __$CommentPostPressedCopyWithImpl(
      _CommentPostPressed _value, $Res Function(_CommentPostPressed) _then)
      : super(_value, (v) => _then(v as _CommentPostPressed));

  @override
  _CommentPostPressed get _value => super._value as _CommentPostPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentText = freezed,
    Object isCommentSpoiler = freezed,
    Object postPhotoUrl = freezed,
  }) {
    return _then(_CommentPostPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentText:
          commentText == freezed ? _value.commentText : commentText as String,
      isCommentSpoiler: isCommentSpoiler == freezed
          ? _value.isCommentSpoiler
          : isCommentSpoiler as bool,
      postPhotoUrl: postPhotoUrl == freezed
          ? _value.postPhotoUrl
          : postPhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$_CommentPostPressed implements _CommentPostPressed {
  const _$_CommentPostPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentText,
      @required this.isCommentSpoiler,
      @required this.postPhotoUrl})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentText != null),
        assert(isCommentSpoiler != null),
        assert(postPhotoUrl != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentText;
  @override
  final bool isCommentSpoiler;
  @override
  final String postPhotoUrl;

  @override
  String toString() {
    return 'UserPostEvent.commentPostPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentText: $commentText, isCommentSpoiler: $isCommentSpoiler, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentPostPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentText, commentText) ||
                const DeepCollectionEquality()
                    .equals(other.commentText, commentText)) &&
            (identical(other.isCommentSpoiler, isCommentSpoiler) ||
                const DeepCollectionEquality()
                    .equals(other.isCommentSpoiler, isCommentSpoiler)) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postPhotoUrl, postPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentText) ^
      const DeepCollectionEquality().hash(isCommentSpoiler) ^
      const DeepCollectionEquality().hash(postPhotoUrl);

  @JsonKey(ignore: true)
  @override
  _$CommentPostPressedCopyWith<_CommentPostPressed> get copyWith =>
      __$CommentPostPressedCopyWithImpl<_CommentPostPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return commentPostPressed(
        postOwnerUid, postUid, commentText, isCommentSpoiler, postPhotoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (commentPostPressed != null) {
      return commentPostPressed(
          postOwnerUid, postUid, commentText, isCommentSpoiler, postPhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return commentPostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (commentPostPressed != null) {
      return commentPostPressed(this);
    }
    return orElse();
  }
}

abstract class _CommentPostPressed implements UserPostEvent {
  const factory _CommentPostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentText,
      @required bool isCommentSpoiler,
      @required String postPhotoUrl}) = _$_CommentPostPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentText;
  bool get isCommentSpoiler;
  String get postPhotoUrl;
  @JsonKey(ignore: true)
  _$CommentPostPressedCopyWith<_CommentPostPressed> get copyWith;
}

/// @nodoc
abstract class _$DeleteCommentPostPressedCopyWith<$Res> {
  factory _$DeleteCommentPostPressedCopyWith(_DeleteCommentPostPressed value,
          $Res Function(_DeleteCommentPostPressed) then) =
      __$DeleteCommentPostPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String commentUid,
      String commentOwnerUid});
}

/// @nodoc
class __$DeleteCommentPostPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$DeleteCommentPostPressedCopyWith<$Res> {
  __$DeleteCommentPostPressedCopyWithImpl(_DeleteCommentPostPressed _value,
      $Res Function(_DeleteCommentPostPressed) _then)
      : super(_value, (v) => _then(v as _DeleteCommentPostPressed));

  @override
  _DeleteCommentPostPressed get _value =>
      super._value as _DeleteCommentPostPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
  }) {
    return _then(_DeleteCommentPostPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
    ));
  }
}

/// @nodoc
class _$_DeleteCommentPostPressed implements _DeleteCommentPostPressed {
  const _$_DeleteCommentPostPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentUid,
      @required this.commentOwnerUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;

  @override
  String toString() {
    return 'UserPostEvent.deleteCommentPostPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCommentPostPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid);

  @JsonKey(ignore: true)
  @override
  _$DeleteCommentPostPressedCopyWith<_DeleteCommentPostPressed> get copyWith =>
      __$DeleteCommentPostPressedCopyWithImpl<_DeleteCommentPostPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return deleteCommentPostPressed(
        postOwnerUid, postUid, commentUid, commentOwnerUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteCommentPostPressed != null) {
      return deleteCommentPostPressed(
          postOwnerUid, postUid, commentUid, commentOwnerUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return deleteCommentPostPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteCommentPostPressed != null) {
      return deleteCommentPostPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteCommentPostPressed implements UserPostEvent {
  const factory _DeleteCommentPostPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid}) = _$_DeleteCommentPostPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentUid;
  String get commentOwnerUid;
  @JsonKey(ignore: true)
  _$DeleteCommentPostPressedCopyWith<_DeleteCommentPostPressed> get copyWith;
}

/// @nodoc
abstract class _$ShowPostCommentsPressedCopyWith<$Res> {
  factory _$ShowPostCommentsPressedCopyWith(_ShowPostCommentsPressed value,
          $Res Function(_ShowPostCommentsPressed) then) =
      __$ShowPostCommentsPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$ShowPostCommentsPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowPostCommentsPressedCopyWith<$Res> {
  __$ShowPostCommentsPressedCopyWithImpl(_ShowPostCommentsPressed _value,
      $Res Function(_ShowPostCommentsPressed) _then)
      : super(_value, (v) => _then(v as _ShowPostCommentsPressed));

  @override
  _ShowPostCommentsPressed get _value =>
      super._value as _ShowPostCommentsPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_ShowPostCommentsPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_ShowPostCommentsPressed implements _ShowPostCommentsPressed {
  const _$_ShowPostCommentsPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.showPostCommentsPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowPostCommentsPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$ShowPostCommentsPressedCopyWith<_ShowPostCommentsPressed> get copyWith =>
      __$ShowPostCommentsPressedCopyWithImpl<_ShowPostCommentsPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showPostCommentsPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPostCommentsPressed != null) {
      return showPostCommentsPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showPostCommentsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPostCommentsPressed != null) {
      return showPostCommentsPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowPostCommentsPressed implements UserPostEvent {
  const factory _ShowPostCommentsPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_ShowPostCommentsPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$ShowPostCommentsPressedCopyWith<_ShowPostCommentsPressed> get copyWith;
}

/// @nodoc
abstract class _$NextPageShowPostCommentsPressedCopyWith<$Res> {
  factory _$NextPageShowPostCommentsPressedCopyWith(
          _NextPageShowPostCommentsPressed value,
          $Res Function(_NextPageShowPostCommentsPressed) then) =
      __$NextPageShowPostCommentsPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid});
}

/// @nodoc
class __$NextPageShowPostCommentsPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$NextPageShowPostCommentsPressedCopyWith<$Res> {
  __$NextPageShowPostCommentsPressedCopyWithImpl(
      _NextPageShowPostCommentsPressed _value,
      $Res Function(_NextPageShowPostCommentsPressed) _then)
      : super(_value, (v) => _then(v as _NextPageShowPostCommentsPressed));

  @override
  _NextPageShowPostCommentsPressed get _value =>
      super._value as _NextPageShowPostCommentsPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
  }) {
    return _then(_NextPageShowPostCommentsPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
    ));
  }
}

/// @nodoc
class _$_NextPageShowPostCommentsPressed
    implements _NextPageShowPostCommentsPressed {
  const _$_NextPageShowPostCommentsPressed(
      {@required this.postOwnerUid, @required this.postUid})
      : assert(postOwnerUid != null),
        assert(postUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;

  @override
  String toString() {
    return 'UserPostEvent.nextPageShowPostCommentsPressed(postOwnerUid: $postOwnerUid, postUid: $postUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageShowPostCommentsPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality().equals(other.postUid, postUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid);

  @JsonKey(ignore: true)
  @override
  _$NextPageShowPostCommentsPressedCopyWith<_NextPageShowPostCommentsPressed>
      get copyWith => __$NextPageShowPostCommentsPressedCopyWithImpl<
          _NextPageShowPostCommentsPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowPostCommentsPressed(postOwnerUid, postUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowPostCommentsPressed != null) {
      return nextPageShowPostCommentsPressed(postOwnerUid, postUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowPostCommentsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowPostCommentsPressed != null) {
      return nextPageShowPostCommentsPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPageShowPostCommentsPressed implements UserPostEvent {
  const factory _NextPageShowPostCommentsPressed(
      {@required String postOwnerUid,
      @required String postUid}) = _$_NextPageShowPostCommentsPressed;

  String get postOwnerUid;
  String get postUid;
  @JsonKey(ignore: true)
  _$NextPageShowPostCommentsPressedCopyWith<_NextPageShowPostCommentsPressed>
      get copyWith;
}

/// @nodoc
abstract class _$ShowSpoilersPressedCopyWith<$Res> {
  factory _$ShowSpoilersPressedCopyWith(_ShowSpoilersPressed value,
          $Res Function(_ShowSpoilersPressed) then) =
      __$ShowSpoilersPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSpoilersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowSpoilersPressedCopyWith<$Res> {
  __$ShowSpoilersPressedCopyWithImpl(
      _ShowSpoilersPressed _value, $Res Function(_ShowSpoilersPressed) _then)
      : super(_value, (v) => _then(v as _ShowSpoilersPressed));

  @override
  _ShowSpoilersPressed get _value => super._value as _ShowSpoilersPressed;
}

/// @nodoc
class _$_ShowSpoilersPressed implements _ShowSpoilersPressed {
  const _$_ShowSpoilersPressed();

  @override
  String toString() {
    return 'UserPostEvent.showAllSpoilersInCommentsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowSpoilersPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showAllSpoilersInCommentsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllSpoilersInCommentsPressed != null) {
      return showAllSpoilersInCommentsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showAllSpoilersInCommentsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllSpoilersInCommentsPressed != null) {
      return showAllSpoilersInCommentsPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowSpoilersPressed implements UserPostEvent {
  const factory _ShowSpoilersPressed() = _$_ShowSpoilersPressed;
}

/// @nodoc
abstract class _$LikePostCommentPressedCopyWith<$Res> {
  factory _$LikePostCommentPressedCopyWith(_LikePostCommentPressed value,
          $Res Function(_LikePostCommentPressed) then) =
      __$LikePostCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String commentUid,
      String commentOwnerUid,
      String commentText,
      String postPhotoUrl});
}

/// @nodoc
class __$LikePostCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$LikePostCommentPressedCopyWith<$Res> {
  __$LikePostCommentPressedCopyWithImpl(_LikePostCommentPressed _value,
      $Res Function(_LikePostCommentPressed) _then)
      : super(_value, (v) => _then(v as _LikePostCommentPressed));

  @override
  _LikePostCommentPressed get _value => super._value as _LikePostCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
    Object commentText = freezed,
    Object postPhotoUrl = freezed,
  }) {
    return _then(_LikePostCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
      commentText:
          commentText == freezed ? _value.commentText : commentText as String,
      postPhotoUrl: postPhotoUrl == freezed
          ? _value.postPhotoUrl
          : postPhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$_LikePostCommentPressed implements _LikePostCommentPressed {
  const _$_LikePostCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentUid,
      @required this.commentOwnerUid,
      @required this.commentText,
      @required this.postPhotoUrl})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null),
        assert(commentText != null),
        assert(postPhotoUrl != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;
  @override
  final String commentText;
  @override
  final String postPhotoUrl;

  @override
  String toString() {
    return 'UserPostEvent.likePostCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid, commentText: $commentText, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikePostCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)) &&
            (identical(other.commentText, commentText) ||
                const DeepCollectionEquality()
                    .equals(other.commentText, commentText)) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postPhotoUrl, postPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid) ^
      const DeepCollectionEquality().hash(commentText) ^
      const DeepCollectionEquality().hash(postPhotoUrl);

  @JsonKey(ignore: true)
  @override
  _$LikePostCommentPressedCopyWith<_LikePostCommentPressed> get copyWith =>
      __$LikePostCommentPressedCopyWithImpl<_LikePostCommentPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likePostCommentPressed(postOwnerUid, postUid, commentUid,
        commentOwnerUid, commentText, postPhotoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePostCommentPressed != null) {
      return likePostCommentPressed(postOwnerUid, postUid, commentUid,
          commentOwnerUid, commentText, postPhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likePostCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePostCommentPressed != null) {
      return likePostCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _LikePostCommentPressed implements UserPostEvent {
  const factory _LikePostCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String commentText,
      @required String postPhotoUrl}) = _$_LikePostCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentUid;
  String get commentOwnerUid;
  String get commentText;
  String get postPhotoUrl;
  @JsonKey(ignore: true)
  _$LikePostCommentPressedCopyWith<_LikePostCommentPressed> get copyWith;
}

/// @nodoc
abstract class _$UnlikePostCommentPressedCopyWith<$Res> {
  factory _$UnlikePostCommentPressedCopyWith(_UnlikePostCommentPressed value,
          $Res Function(_UnlikePostCommentPressed) then) =
      __$UnlikePostCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String commentUid,
      String commentOwnerUid});
}

/// @nodoc
class __$UnlikePostCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$UnlikePostCommentPressedCopyWith<$Res> {
  __$UnlikePostCommentPressedCopyWithImpl(_UnlikePostCommentPressed _value,
      $Res Function(_UnlikePostCommentPressed) _then)
      : super(_value, (v) => _then(v as _UnlikePostCommentPressed));

  @override
  _UnlikePostCommentPressed get _value =>
      super._value as _UnlikePostCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
  }) {
    return _then(_UnlikePostCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
    ));
  }
}

/// @nodoc
class _$_UnlikePostCommentPressed implements _UnlikePostCommentPressed {
  const _$_UnlikePostCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentUid,
      @required this.commentOwnerUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;

  @override
  String toString() {
    return 'UserPostEvent.unlikePostCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlikePostCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid);

  @JsonKey(ignore: true)
  @override
  _$UnlikePostCommentPressedCopyWith<_UnlikePostCommentPressed> get copyWith =>
      __$UnlikePostCommentPressedCopyWithImpl<_UnlikePostCommentPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikePostCommentPressed(
        postOwnerUid, postUid, commentUid, commentOwnerUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePostCommentPressed != null) {
      return unlikePostCommentPressed(
          postOwnerUid, postUid, commentUid, commentOwnerUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikePostCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePostCommentPressed != null) {
      return unlikePostCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _UnlikePostCommentPressed implements UserPostEvent {
  const factory _UnlikePostCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid,
      @required String commentOwnerUid}) = _$_UnlikePostCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentUid;
  String get commentOwnerUid;
  @JsonKey(ignore: true)
  _$UnlikePostCommentPressedCopyWith<_UnlikePostCommentPressed> get copyWith;
}

/// @nodoc
abstract class _$ShowCommentLikersPressedCopyWith<$Res> {
  factory _$ShowCommentLikersPressedCopyWith(_ShowCommentLikersPressed value,
          $Res Function(_ShowCommentLikersPressed) then) =
      __$ShowCommentLikersPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid, String commentUid});
}

/// @nodoc
class __$ShowCommentLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowCommentLikersPressedCopyWith<$Res> {
  __$ShowCommentLikersPressedCopyWithImpl(_ShowCommentLikersPressed _value,
      $Res Function(_ShowCommentLikersPressed) _then)
      : super(_value, (v) => _then(v as _ShowCommentLikersPressed));

  @override
  _ShowCommentLikersPressed get _value =>
      super._value as _ShowCommentLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentUid = freezed,
  }) {
    return _then(_ShowCommentLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
    ));
  }
}

/// @nodoc
class _$_ShowCommentLikersPressed implements _ShowCommentLikersPressed {
  const _$_ShowCommentLikersPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentUid;

  @override
  String toString() {
    return 'UserPostEvent.showCommentLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentUid: $commentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowCommentLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentUid);

  @JsonKey(ignore: true)
  @override
  _$ShowCommentLikersPressedCopyWith<_ShowCommentLikersPressed> get copyWith =>
      __$ShowCommentLikersPressedCopyWithImpl<_ShowCommentLikersPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showCommentLikersPressed(postOwnerUid, postUid, commentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showCommentLikersPressed != null) {
      return showCommentLikersPressed(postOwnerUid, postUid, commentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showCommentLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showCommentLikersPressed != null) {
      return showCommentLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowCommentLikersPressed implements UserPostEvent {
  const factory _ShowCommentLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid}) = _$_ShowCommentLikersPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentUid;
  @JsonKey(ignore: true)
  _$ShowCommentLikersPressedCopyWith<_ShowCommentLikersPressed> get copyWith;
}

/// @nodoc
abstract class _$NextPageShowCommentLikersPressedCopyWith<$Res> {
  factory _$NextPageShowCommentLikersPressedCopyWith(
          _NextPageShowCommentLikersPressed value,
          $Res Function(_NextPageShowCommentLikersPressed) then) =
      __$NextPageShowCommentLikersPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid, String commentUid});
}

/// @nodoc
class __$NextPageShowCommentLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$NextPageShowCommentLikersPressedCopyWith<$Res> {
  __$NextPageShowCommentLikersPressedCopyWithImpl(
      _NextPageShowCommentLikersPressed _value,
      $Res Function(_NextPageShowCommentLikersPressed) _then)
      : super(_value, (v) => _then(v as _NextPageShowCommentLikersPressed));

  @override
  _NextPageShowCommentLikersPressed get _value =>
      super._value as _NextPageShowCommentLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object commentUid = freezed,
  }) {
    return _then(_NextPageShowCommentLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
    ));
  }
}

/// @nodoc
class _$_NextPageShowCommentLikersPressed
    implements _NextPageShowCommentLikersPressed {
  const _$_NextPageShowCommentLikersPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.commentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(commentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String commentUid;

  @override
  String toString() {
    return 'UserPostEvent.nextPageShowCommentLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, commentUid: $commentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageShowCommentLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(commentUid);

  @JsonKey(ignore: true)
  @override
  _$NextPageShowCommentLikersPressedCopyWith<_NextPageShowCommentLikersPressed>
      get copyWith => __$NextPageShowCommentLikersPressedCopyWithImpl<
          _NextPageShowCommentLikersPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowCommentLikersPressed(postOwnerUid, postUid, commentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowCommentLikersPressed != null) {
      return nextPageShowCommentLikersPressed(
          postOwnerUid, postUid, commentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowCommentLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowCommentLikersPressed != null) {
      return nextPageShowCommentLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPageShowCommentLikersPressed implements UserPostEvent {
  const factory _NextPageShowCommentLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String commentUid}) = _$_NextPageShowCommentLikersPressed;

  String get postOwnerUid;
  String get postUid;
  String get commentUid;
  @JsonKey(ignore: true)
  _$NextPageShowCommentLikersPressedCopyWith<_NextPageShowCommentLikersPressed>
      get copyWith;
}

/// @nodoc
abstract class _$ReplyToCommentPressedCopyWith<$Res> {
  factory _$ReplyToCommentPressedCopyWith(_ReplyToCommentPressed value,
          $Res Function(_ReplyToCommentPressed) then) =
      __$ReplyToCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentText,
      bool isCommentSpoiler,
      String postPhotoUrl,
      String uidOfTheCommentOwnerBeingRepliedTo});
}

/// @nodoc
class __$ReplyToCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ReplyToCommentPressedCopyWith<$Res> {
  __$ReplyToCommentPressedCopyWithImpl(_ReplyToCommentPressed _value,
      $Res Function(_ReplyToCommentPressed) _then)
      : super(_value, (v) => _then(v as _ReplyToCommentPressed));

  @override
  _ReplyToCommentPressed get _value => super._value as _ReplyToCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentText = freezed,
    Object isCommentSpoiler = freezed,
    Object postPhotoUrl = freezed,
    Object uidOfTheCommentOwnerBeingRepliedTo = freezed,
  }) {
    return _then(_ReplyToCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentText:
          commentText == freezed ? _value.commentText : commentText as String,
      isCommentSpoiler: isCommentSpoiler == freezed
          ? _value.isCommentSpoiler
          : isCommentSpoiler as bool,
      postPhotoUrl: postPhotoUrl == freezed
          ? _value.postPhotoUrl
          : postPhotoUrl as String,
      uidOfTheCommentOwnerBeingRepliedTo:
          uidOfTheCommentOwnerBeingRepliedTo == freezed
              ? _value.uidOfTheCommentOwnerBeingRepliedTo
              : uidOfTheCommentOwnerBeingRepliedTo as String,
    ));
  }
}

/// @nodoc
class _$_ReplyToCommentPressed implements _ReplyToCommentPressed {
  const _$_ReplyToCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentText,
      @required this.isCommentSpoiler,
      @required this.postPhotoUrl,
      @required this.uidOfTheCommentOwnerBeingRepliedTo})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentText != null),
        assert(isCommentSpoiler != null),
        assert(postPhotoUrl != null),
        assert(uidOfTheCommentOwnerBeingRepliedTo != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentText;
  @override
  final bool isCommentSpoiler;
  @override
  final String postPhotoUrl;
  @override
  final String uidOfTheCommentOwnerBeingRepliedTo;

  @override
  String toString() {
    return 'UserPostEvent.replyToCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentText: $commentText, isCommentSpoiler: $isCommentSpoiler, postPhotoUrl: $postPhotoUrl, uidOfTheCommentOwnerBeingRepliedTo: $uidOfTheCommentOwnerBeingRepliedTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReplyToCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentText, commentText) ||
                const DeepCollectionEquality()
                    .equals(other.commentText, commentText)) &&
            (identical(other.isCommentSpoiler, isCommentSpoiler) ||
                const DeepCollectionEquality()
                    .equals(other.isCommentSpoiler, isCommentSpoiler)) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postPhotoUrl, postPhotoUrl)) &&
            (identical(other.uidOfTheCommentOwnerBeingRepliedTo,
                    uidOfTheCommentOwnerBeingRepliedTo) ||
                const DeepCollectionEquality().equals(
                    other.uidOfTheCommentOwnerBeingRepliedTo,
                    uidOfTheCommentOwnerBeingRepliedTo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentText) ^
      const DeepCollectionEquality().hash(isCommentSpoiler) ^
      const DeepCollectionEquality().hash(postPhotoUrl) ^
      const DeepCollectionEquality().hash(uidOfTheCommentOwnerBeingRepliedTo);

  @JsonKey(ignore: true)
  @override
  _$ReplyToCommentPressedCopyWith<_ReplyToCommentPressed> get copyWith =>
      __$ReplyToCommentPressedCopyWithImpl<_ReplyToCommentPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return replyToCommentPressed(
        postOwnerUid,
        postUid,
        parentCommentUid,
        commentText,
        isCommentSpoiler,
        postPhotoUrl,
        uidOfTheCommentOwnerBeingRepliedTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (replyToCommentPressed != null) {
      return replyToCommentPressed(
          postOwnerUid,
          postUid,
          parentCommentUid,
          commentText,
          isCommentSpoiler,
          postPhotoUrl,
          uidOfTheCommentOwnerBeingRepliedTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return replyToCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (replyToCommentPressed != null) {
      return replyToCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _ReplyToCommentPressed implements UserPostEvent {
  const factory _ReplyToCommentPressed(
          {@required String postOwnerUid,
          @required String postUid,
          @required String parentCommentUid,
          @required String commentText,
          @required bool isCommentSpoiler,
          @required String postPhotoUrl,
          @required String uidOfTheCommentOwnerBeingRepliedTo}) =
      _$_ReplyToCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentText;
  bool get isCommentSpoiler;
  String get postPhotoUrl;
  String get uidOfTheCommentOwnerBeingRepliedTo;
  @JsonKey(ignore: true)
  _$ReplyToCommentPressedCopyWith<_ReplyToCommentPressed> get copyWith;
}

/// @nodoc
abstract class _$DeleteReplyToCommentPressedCopyWith<$Res> {
  factory _$DeleteReplyToCommentPressedCopyWith(
          _DeleteReplyToCommentPressed value,
          $Res Function(_DeleteReplyToCommentPressed) then) =
      __$DeleteReplyToCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentUid,
      String commentOwnerUid,
      String parentCommentOwnerUid});
}

/// @nodoc
class __$DeleteReplyToCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$DeleteReplyToCommentPressedCopyWith<$Res> {
  __$DeleteReplyToCommentPressedCopyWithImpl(
      _DeleteReplyToCommentPressed _value,
      $Res Function(_DeleteReplyToCommentPressed) _then)
      : super(_value, (v) => _then(v as _DeleteReplyToCommentPressed));

  @override
  _DeleteReplyToCommentPressed get _value =>
      super._value as _DeleteReplyToCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
    Object parentCommentOwnerUid = freezed,
  }) {
    return _then(_DeleteReplyToCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
      parentCommentOwnerUid: parentCommentOwnerUid == freezed
          ? _value.parentCommentOwnerUid
          : parentCommentOwnerUid as String,
    ));
  }
}

/// @nodoc
class _$_DeleteReplyToCommentPressed implements _DeleteReplyToCommentPressed {
  const _$_DeleteReplyToCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentUid,
      @required this.commentOwnerUid,
      @required this.parentCommentOwnerUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null),
        assert(parentCommentOwnerUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;
  @override
  final String parentCommentOwnerUid;

  @override
  String toString() {
    return 'UserPostEvent.deleteReplyToCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid, parentCommentOwnerUid: $parentCommentOwnerUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteReplyToCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)) &&
            (identical(other.parentCommentOwnerUid, parentCommentOwnerUid) ||
                const DeepCollectionEquality().equals(
                    other.parentCommentOwnerUid, parentCommentOwnerUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid) ^
      const DeepCollectionEquality().hash(parentCommentOwnerUid);

  @JsonKey(ignore: true)
  @override
  _$DeleteReplyToCommentPressedCopyWith<_DeleteReplyToCommentPressed>
      get copyWith => __$DeleteReplyToCommentPressedCopyWithImpl<
          _DeleteReplyToCommentPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return deleteReplyToCommentPressed(postOwnerUid, postUid, parentCommentUid,
        commentUid, commentOwnerUid, parentCommentOwnerUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteReplyToCommentPressed != null) {
      return deleteReplyToCommentPressed(postOwnerUid, postUid,
          parentCommentUid, commentUid, commentOwnerUid, parentCommentOwnerUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return deleteReplyToCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteReplyToCommentPressed != null) {
      return deleteReplyToCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteReplyToCommentPressed implements UserPostEvent {
  const factory _DeleteReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String parentCommentOwnerUid}) = _$_DeleteReplyToCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentUid;
  String get commentOwnerUid;
  String get parentCommentOwnerUid;
  @JsonKey(ignore: true)
  _$DeleteReplyToCommentPressedCopyWith<_DeleteReplyToCommentPressed>
      get copyWith;
}

/// @nodoc
abstract class _$ShowCommentRepliesPressedCopyWith<$Res> {
  factory _$ShowCommentRepliesPressedCopyWith(_ShowCommentRepliesPressed value,
          $Res Function(_ShowCommentRepliesPressed) then) =
      __$ShowCommentRepliesPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid, String parentCommentUid});
}

/// @nodoc
class __$ShowCommentRepliesPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowCommentRepliesPressedCopyWith<$Res> {
  __$ShowCommentRepliesPressedCopyWithImpl(_ShowCommentRepliesPressed _value,
      $Res Function(_ShowCommentRepliesPressed) _then)
      : super(_value, (v) => _then(v as _ShowCommentRepliesPressed));

  @override
  _ShowCommentRepliesPressed get _value =>
      super._value as _ShowCommentRepliesPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
  }) {
    return _then(_ShowCommentRepliesPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
    ));
  }
}

/// @nodoc
class _$_ShowCommentRepliesPressed implements _ShowCommentRepliesPressed {
  const _$_ShowCommentRepliesPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;

  @override
  String toString() {
    return 'UserPostEvent.showCommentRepliesPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowCommentRepliesPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid);

  @JsonKey(ignore: true)
  @override
  _$ShowCommentRepliesPressedCopyWith<_ShowCommentRepliesPressed>
      get copyWith =>
          __$ShowCommentRepliesPressedCopyWithImpl<_ShowCommentRepliesPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showCommentRepliesPressed(postOwnerUid, postUid, parentCommentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showCommentRepliesPressed != null) {
      return showCommentRepliesPressed(postOwnerUid, postUid, parentCommentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showCommentRepliesPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showCommentRepliesPressed != null) {
      return showCommentRepliesPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowCommentRepliesPressed implements UserPostEvent {
  const factory _ShowCommentRepliesPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid}) = _$_ShowCommentRepliesPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  @JsonKey(ignore: true)
  _$ShowCommentRepliesPressedCopyWith<_ShowCommentRepliesPressed> get copyWith;
}

/// @nodoc
abstract class _$NextPageShowCommentRepliesPressedCopyWith<$Res> {
  factory _$NextPageShowCommentRepliesPressedCopyWith(
          _NextPageShowCommentRepliesPressed value,
          $Res Function(_NextPageShowCommentRepliesPressed) then) =
      __$NextPageShowCommentRepliesPressedCopyWithImpl<$Res>;
  $Res call({String postOwnerUid, String postUid, String parentCommentUid});
}

/// @nodoc
class __$NextPageShowCommentRepliesPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$NextPageShowCommentRepliesPressedCopyWith<$Res> {
  __$NextPageShowCommentRepliesPressedCopyWithImpl(
      _NextPageShowCommentRepliesPressed _value,
      $Res Function(_NextPageShowCommentRepliesPressed) _then)
      : super(_value, (v) => _then(v as _NextPageShowCommentRepliesPressed));

  @override
  _NextPageShowCommentRepliesPressed get _value =>
      super._value as _NextPageShowCommentRepliesPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
  }) {
    return _then(_NextPageShowCommentRepliesPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
    ));
  }
}

/// @nodoc
class _$_NextPageShowCommentRepliesPressed
    implements _NextPageShowCommentRepliesPressed {
  const _$_NextPageShowCommentRepliesPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;

  @override
  String toString() {
    return 'UserPostEvent.nextPageShowCommentRepliesPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageShowCommentRepliesPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid);

  @JsonKey(ignore: true)
  @override
  _$NextPageShowCommentRepliesPressedCopyWith<
          _NextPageShowCommentRepliesPressed>
      get copyWith => __$NextPageShowCommentRepliesPressedCopyWithImpl<
          _NextPageShowCommentRepliesPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowCommentRepliesPressed(
        postOwnerUid, postUid, parentCommentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowCommentRepliesPressed != null) {
      return nextPageShowCommentRepliesPressed(
          postOwnerUid, postUid, parentCommentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowCommentRepliesPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowCommentRepliesPressed != null) {
      return nextPageShowCommentRepliesPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPageShowCommentRepliesPressed implements UserPostEvent {
  const factory _NextPageShowCommentRepliesPressed(
          {@required String postOwnerUid,
          @required String postUid,
          @required String parentCommentUid}) =
      _$_NextPageShowCommentRepliesPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  @JsonKey(ignore: true)
  _$NextPageShowCommentRepliesPressedCopyWith<
      _NextPageShowCommentRepliesPressed> get copyWith;
}

/// @nodoc
abstract class _$HideCommentRepliesPressedCopyWith<$Res> {
  factory _$HideCommentRepliesPressedCopyWith(_HideCommentRepliesPressed value,
          $Res Function(_HideCommentRepliesPressed) then) =
      __$HideCommentRepliesPressedCopyWithImpl<$Res>;
  $Res call({String parentCommentUid});
}

/// @nodoc
class __$HideCommentRepliesPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$HideCommentRepliesPressedCopyWith<$Res> {
  __$HideCommentRepliesPressedCopyWithImpl(_HideCommentRepliesPressed _value,
      $Res Function(_HideCommentRepliesPressed) _then)
      : super(_value, (v) => _then(v as _HideCommentRepliesPressed));

  @override
  _HideCommentRepliesPressed get _value =>
      super._value as _HideCommentRepliesPressed;

  @override
  $Res call({
    Object parentCommentUid = freezed,
  }) {
    return _then(_HideCommentRepliesPressed(
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
    ));
  }
}

/// @nodoc
class _$_HideCommentRepliesPressed implements _HideCommentRepliesPressed {
  const _$_HideCommentRepliesPressed({@required this.parentCommentUid})
      : assert(parentCommentUid != null);

  @override
  final String parentCommentUid;

  @override
  String toString() {
    return 'UserPostEvent.hideCommentRepliesPressed(parentCommentUid: $parentCommentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HideCommentRepliesPressed &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentCommentUid);

  @JsonKey(ignore: true)
  @override
  _$HideCommentRepliesPressedCopyWith<_HideCommentRepliesPressed>
      get copyWith =>
          __$HideCommentRepliesPressedCopyWithImpl<_HideCommentRepliesPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return hideCommentRepliesPressed(parentCommentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hideCommentRepliesPressed != null) {
      return hideCommentRepliesPressed(parentCommentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return hideCommentRepliesPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hideCommentRepliesPressed != null) {
      return hideCommentRepliesPressed(this);
    }
    return orElse();
  }
}

abstract class _HideCommentRepliesPressed implements UserPostEvent {
  const factory _HideCommentRepliesPressed(
      {@required String parentCommentUid}) = _$_HideCommentRepliesPressed;

  String get parentCommentUid;
  @JsonKey(ignore: true)
  _$HideCommentRepliesPressedCopyWith<_HideCommentRepliesPressed> get copyWith;
}

/// @nodoc
abstract class _$UnHideCommentRepliesPressedCopyWith<$Res> {
  factory _$UnHideCommentRepliesPressedCopyWith(
          _UnHideCommentRepliesPressed value,
          $Res Function(_UnHideCommentRepliesPressed) then) =
      __$UnHideCommentRepliesPressedCopyWithImpl<$Res>;
  $Res call({String parentCommentUid});
}

/// @nodoc
class __$UnHideCommentRepliesPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$UnHideCommentRepliesPressedCopyWith<$Res> {
  __$UnHideCommentRepliesPressedCopyWithImpl(
      _UnHideCommentRepliesPressed _value,
      $Res Function(_UnHideCommentRepliesPressed) _then)
      : super(_value, (v) => _then(v as _UnHideCommentRepliesPressed));

  @override
  _UnHideCommentRepliesPressed get _value =>
      super._value as _UnHideCommentRepliesPressed;

  @override
  $Res call({
    Object parentCommentUid = freezed,
  }) {
    return _then(_UnHideCommentRepliesPressed(
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
    ));
  }
}

/// @nodoc
class _$_UnHideCommentRepliesPressed implements _UnHideCommentRepliesPressed {
  const _$_UnHideCommentRepliesPressed({@required this.parentCommentUid})
      : assert(parentCommentUid != null);

  @override
  final String parentCommentUid;

  @override
  String toString() {
    return 'UserPostEvent.unHideCommentRepliesPressed(parentCommentUid: $parentCommentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnHideCommentRepliesPressed &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentCommentUid);

  @JsonKey(ignore: true)
  @override
  _$UnHideCommentRepliesPressedCopyWith<_UnHideCommentRepliesPressed>
      get copyWith => __$UnHideCommentRepliesPressedCopyWithImpl<
          _UnHideCommentRepliesPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unHideCommentRepliesPressed(parentCommentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unHideCommentRepliesPressed != null) {
      return unHideCommentRepliesPressed(parentCommentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unHideCommentRepliesPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unHideCommentRepliesPressed != null) {
      return unHideCommentRepliesPressed(this);
    }
    return orElse();
  }
}

abstract class _UnHideCommentRepliesPressed implements UserPostEvent {
  const factory _UnHideCommentRepliesPressed(
      {@required String parentCommentUid}) = _$_UnHideCommentRepliesPressed;

  String get parentCommentUid;
  @JsonKey(ignore: true)
  _$UnHideCommentRepliesPressedCopyWith<_UnHideCommentRepliesPressed>
      get copyWith;
}

/// @nodoc
abstract class _$LikeReplyToCommentPressedCopyWith<$Res> {
  factory _$LikeReplyToCommentPressedCopyWith(_LikeReplyToCommentPressed value,
          $Res Function(_LikeReplyToCommentPressed) then) =
      __$LikeReplyToCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentUid,
      String commentOwnerUid,
      String commentText,
      String postPhotoUrl});
}

/// @nodoc
class __$LikeReplyToCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$LikeReplyToCommentPressedCopyWith<$Res> {
  __$LikeReplyToCommentPressedCopyWithImpl(_LikeReplyToCommentPressed _value,
      $Res Function(_LikeReplyToCommentPressed) _then)
      : super(_value, (v) => _then(v as _LikeReplyToCommentPressed));

  @override
  _LikeReplyToCommentPressed get _value =>
      super._value as _LikeReplyToCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
    Object commentText = freezed,
    Object postPhotoUrl = freezed,
  }) {
    return _then(_LikeReplyToCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
      commentText:
          commentText == freezed ? _value.commentText : commentText as String,
      postPhotoUrl: postPhotoUrl == freezed
          ? _value.postPhotoUrl
          : postPhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$_LikeReplyToCommentPressed implements _LikeReplyToCommentPressed {
  const _$_LikeReplyToCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentUid,
      @required this.commentOwnerUid,
      @required this.commentText,
      @required this.postPhotoUrl})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null),
        assert(commentText != null),
        assert(postPhotoUrl != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;
  @override
  final String commentText;
  @override
  final String postPhotoUrl;

  @override
  String toString() {
    return 'UserPostEvent.likeReplyToCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid, commentText: $commentText, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeReplyToCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)) &&
            (identical(other.commentText, commentText) ||
                const DeepCollectionEquality()
                    .equals(other.commentText, commentText)) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postPhotoUrl, postPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid) ^
      const DeepCollectionEquality().hash(commentText) ^
      const DeepCollectionEquality().hash(postPhotoUrl);

  @JsonKey(ignore: true)
  @override
  _$LikeReplyToCommentPressedCopyWith<_LikeReplyToCommentPressed>
      get copyWith =>
          __$LikeReplyToCommentPressedCopyWithImpl<_LikeReplyToCommentPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likeReplyToCommentPressed(postOwnerUid, postUid, parentCommentUid,
        commentUid, commentOwnerUid, commentText, postPhotoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeReplyToCommentPressed != null) {
      return likeReplyToCommentPressed(postOwnerUid, postUid, parentCommentUid,
          commentUid, commentOwnerUid, commentText, postPhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return likeReplyToCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeReplyToCommentPressed != null) {
      return likeReplyToCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _LikeReplyToCommentPressed implements UserPostEvent {
  const factory _LikeReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid,
      @required String commentText,
      @required String postPhotoUrl}) = _$_LikeReplyToCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentUid;
  String get commentOwnerUid;
  String get commentText;
  String get postPhotoUrl;
  @JsonKey(ignore: true)
  _$LikeReplyToCommentPressedCopyWith<_LikeReplyToCommentPressed> get copyWith;
}

/// @nodoc
abstract class _$UnlikeReplyToCommentPressedCopyWith<$Res> {
  factory _$UnlikeReplyToCommentPressedCopyWith(
          _UnlikeReplyToCommentPressed value,
          $Res Function(_UnlikeReplyToCommentPressed) then) =
      __$UnlikeReplyToCommentPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentUid,
      String commentOwnerUid});
}

/// @nodoc
class __$UnlikeReplyToCommentPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$UnlikeReplyToCommentPressedCopyWith<$Res> {
  __$UnlikeReplyToCommentPressedCopyWithImpl(
      _UnlikeReplyToCommentPressed _value,
      $Res Function(_UnlikeReplyToCommentPressed) _then)
      : super(_value, (v) => _then(v as _UnlikeReplyToCommentPressed));

  @override
  _UnlikeReplyToCommentPressed get _value =>
      super._value as _UnlikeReplyToCommentPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentUid = freezed,
    Object commentOwnerUid = freezed,
  }) {
    return _then(_UnlikeReplyToCommentPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
      commentOwnerUid: commentOwnerUid == freezed
          ? _value.commentOwnerUid
          : commentOwnerUid as String,
    ));
  }
}

/// @nodoc
class _$_UnlikeReplyToCommentPressed implements _UnlikeReplyToCommentPressed {
  const _$_UnlikeReplyToCommentPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentUid,
      @required this.commentOwnerUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentUid != null),
        assert(commentOwnerUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentUid;
  @override
  final String commentOwnerUid;

  @override
  String toString() {
    return 'UserPostEvent.unlikeReplyToCommentPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentUid: $commentUid, commentOwnerUid: $commentOwnerUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlikeReplyToCommentPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)) &&
            (identical(other.commentOwnerUid, commentOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentOwnerUid, commentOwnerUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentUid) ^
      const DeepCollectionEquality().hash(commentOwnerUid);

  @JsonKey(ignore: true)
  @override
  _$UnlikeReplyToCommentPressedCopyWith<_UnlikeReplyToCommentPressed>
      get copyWith => __$UnlikeReplyToCommentPressedCopyWithImpl<
          _UnlikeReplyToCommentPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikeReplyToCommentPressed(
        postOwnerUid, postUid, parentCommentUid, commentUid, commentOwnerUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikeReplyToCommentPressed != null) {
      return unlikeReplyToCommentPressed(
          postOwnerUid, postUid, parentCommentUid, commentUid, commentOwnerUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return unlikeReplyToCommentPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikeReplyToCommentPressed != null) {
      return unlikeReplyToCommentPressed(this);
    }
    return orElse();
  }
}

abstract class _UnlikeReplyToCommentPressed implements UserPostEvent {
  const factory _UnlikeReplyToCommentPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid,
      @required String commentOwnerUid}) = _$_UnlikeReplyToCommentPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentUid;
  String get commentOwnerUid;
  @JsonKey(ignore: true)
  _$UnlikeReplyToCommentPressedCopyWith<_UnlikeReplyToCommentPressed>
      get copyWith;
}

/// @nodoc
abstract class _$ShowReplyLikersPressedCopyWith<$Res> {
  factory _$ShowReplyLikersPressedCopyWith(_ShowReplyLikersPressed value,
          $Res Function(_ShowReplyLikersPressed) then) =
      __$ShowReplyLikersPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentUid});
}

/// @nodoc
class __$ShowReplyLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$ShowReplyLikersPressedCopyWith<$Res> {
  __$ShowReplyLikersPressedCopyWithImpl(_ShowReplyLikersPressed _value,
      $Res Function(_ShowReplyLikersPressed) _then)
      : super(_value, (v) => _then(v as _ShowReplyLikersPressed));

  @override
  _ShowReplyLikersPressed get _value => super._value as _ShowReplyLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentUid = freezed,
  }) {
    return _then(_ShowReplyLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
    ));
  }
}

/// @nodoc
class _$_ShowReplyLikersPressed implements _ShowReplyLikersPressed {
  const _$_ShowReplyLikersPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentUid;

  @override
  String toString() {
    return 'UserPostEvent.showReplyLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentUid: $commentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowReplyLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentUid);

  @JsonKey(ignore: true)
  @override
  _$ShowReplyLikersPressedCopyWith<_ShowReplyLikersPressed> get copyWith =>
      __$ShowReplyLikersPressedCopyWithImpl<_ShowReplyLikersPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showReplyLikersPressed(
        postOwnerUid, postUid, parentCommentUid, commentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showReplyLikersPressed != null) {
      return showReplyLikersPressed(
          postOwnerUid, postUid, parentCommentUid, commentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return showReplyLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showReplyLikersPressed != null) {
      return showReplyLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowReplyLikersPressed implements UserPostEvent {
  const factory _ShowReplyLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid}) = _$_ShowReplyLikersPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentUid;
  @JsonKey(ignore: true)
  _$ShowReplyLikersPressedCopyWith<_ShowReplyLikersPressed> get copyWith;
}

/// @nodoc
abstract class _$NextPageShowReplyLikersPressedCopyWith<$Res> {
  factory _$NextPageShowReplyLikersPressedCopyWith(
          _NextPageShowReplyLikersPressed value,
          $Res Function(_NextPageShowReplyLikersPressed) then) =
      __$NextPageShowReplyLikersPressedCopyWithImpl<$Res>;
  $Res call(
      {String postOwnerUid,
      String postUid,
      String parentCommentUid,
      String commentUid});
}

/// @nodoc
class __$NextPageShowReplyLikersPressedCopyWithImpl<$Res>
    extends _$UserPostEventCopyWithImpl<$Res>
    implements _$NextPageShowReplyLikersPressedCopyWith<$Res> {
  __$NextPageShowReplyLikersPressedCopyWithImpl(
      _NextPageShowReplyLikersPressed _value,
      $Res Function(_NextPageShowReplyLikersPressed) _then)
      : super(_value, (v) => _then(v as _NextPageShowReplyLikersPressed));

  @override
  _NextPageShowReplyLikersPressed get _value =>
      super._value as _NextPageShowReplyLikersPressed;

  @override
  $Res call({
    Object postOwnerUid = freezed,
    Object postUid = freezed,
    Object parentCommentUid = freezed,
    Object commentUid = freezed,
  }) {
    return _then(_NextPageShowReplyLikersPressed(
      postOwnerUid: postOwnerUid == freezed
          ? _value.postOwnerUid
          : postOwnerUid as String,
      postUid: postUid == freezed ? _value.postUid : postUid as String,
      parentCommentUid: parentCommentUid == freezed
          ? _value.parentCommentUid
          : parentCommentUid as String,
      commentUid:
          commentUid == freezed ? _value.commentUid : commentUid as String,
    ));
  }
}

/// @nodoc
class _$_NextPageShowReplyLikersPressed
    implements _NextPageShowReplyLikersPressed {
  const _$_NextPageShowReplyLikersPressed(
      {@required this.postOwnerUid,
      @required this.postUid,
      @required this.parentCommentUid,
      @required this.commentUid})
      : assert(postOwnerUid != null),
        assert(postUid != null),
        assert(parentCommentUid != null),
        assert(commentUid != null);

  @override
  final String postOwnerUid;
  @override
  final String postUid;
  @override
  final String parentCommentUid;
  @override
  final String commentUid;

  @override
  String toString() {
    return 'UserPostEvent.nextPageShowReplyLikersPressed(postOwnerUid: $postOwnerUid, postUid: $postUid, parentCommentUid: $parentCommentUid, commentUid: $commentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageShowReplyLikersPressed &&
            (identical(other.postOwnerUid, postOwnerUid) ||
                const DeepCollectionEquality()
                    .equals(other.postOwnerUid, postOwnerUid)) &&
            (identical(other.postUid, postUid) ||
                const DeepCollectionEquality()
                    .equals(other.postUid, postUid)) &&
            (identical(other.parentCommentUid, parentCommentUid) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentUid, parentCommentUid)) &&
            (identical(other.commentUid, commentUid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUid, commentUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postOwnerUid) ^
      const DeepCollectionEquality().hash(postUid) ^
      const DeepCollectionEquality().hash(parentCommentUid) ^
      const DeepCollectionEquality().hash(commentUid);

  @JsonKey(ignore: true)
  @override
  _$NextPageShowReplyLikersPressedCopyWith<_NextPageShowReplyLikersPressed>
      get copyWith => __$NextPageShowReplyLikersPressedCopyWithImpl<
          _NextPageShowReplyLikersPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPostPressed(String postOwnerUid, String postUid),
    @required TResult showSpoilerPressed(),
    @required
        TResult likePostPressed(
            String postOwnerUid, String postUid, String postPhotoUrl),
    @required TResult unlikePostPressed(String postOwnerUid, String postUid),
    @required
        TResult showPostLikersPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostLikersPressed(
            String postOwnerUid, String postUid),
    @required
        TResult commentPostPressed(String postOwnerUid, String postUid,
            String commentText, bool isCommentSpoiler, String postPhotoUrl),
    @required
        TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    @required
        TResult nextPageShowPostCommentsPressed(
            String postOwnerUid, String postUid),
    @required TResult showAllSpoilersInCommentsPressed(),
    @required
        TResult likePostCommentPressed(
            String postOwnerUid,
            String postUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
            String commentUid, String commentOwnerUid),
    @required
        TResult showCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult nextPageShowCommentLikersPressed(
            String postOwnerUid, String postUid, String commentUid),
    @required
        TResult replyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentText,
            bool isCommentSpoiler,
            String postPhotoUrl,
            String uidOfTheCommentOwnerBeingRepliedTo),
    @required
        TResult deleteReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String parentCommentOwnerUid),
    @required
        TResult showCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required
        TResult nextPageShowCommentRepliesPressed(
            String postOwnerUid, String postUid, String parentCommentUid),
    @required TResult hideCommentRepliesPressed(String parentCommentUid),
    @required TResult unHideCommentRepliesPressed(String parentCommentUid),
    @required
        TResult likeReplyToCommentPressed(
            String postOwnerUid,
            String postUid,
            String parentCommentUid,
            String commentUid,
            String commentOwnerUid,
            String commentText,
            String postPhotoUrl),
    @required
        TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid, String commentOwnerUid),
    @required
        TResult showReplyLikersPressed(String postOwnerUid, String postUid,
            String parentCommentUid, String commentUid),
    @required
        TResult nextPageShowReplyLikersPressed(String postOwnerUid,
            String postUid, String parentCommentUid, String commentUid),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowReplyLikersPressed(
        postOwnerUid, postUid, parentCommentUid, commentUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPostPressed(String postOwnerUid, String postUid),
    TResult showSpoilerPressed(),
    TResult likePostPressed(
        String postOwnerUid, String postUid, String postPhotoUrl),
    TResult unlikePostPressed(String postOwnerUid, String postUid),
    TResult showPostLikersPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostLikersPressed(String postOwnerUid, String postUid),
    TResult commentPostPressed(String postOwnerUid, String postUid,
        String commentText, bool isCommentSpoiler, String postPhotoUrl),
    TResult deleteCommentPostPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showPostCommentsPressed(String postOwnerUid, String postUid),
    TResult nextPageShowPostCommentsPressed(
        String postOwnerUid, String postUid),
    TResult showAllSpoilersInCommentsPressed(),
    TResult likePostCommentPressed(
        String postOwnerUid,
        String postUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikePostCommentPressed(String postOwnerUid, String postUid,
        String commentUid, String commentOwnerUid),
    TResult showCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult nextPageShowCommentLikersPressed(
        String postOwnerUid, String postUid, String commentUid),
    TResult replyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentText,
        bool isCommentSpoiler,
        String postPhotoUrl,
        String uidOfTheCommentOwnerBeingRepliedTo),
    TResult deleteReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String parentCommentOwnerUid),
    TResult showCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult nextPageShowCommentRepliesPressed(
        String postOwnerUid, String postUid, String parentCommentUid),
    TResult hideCommentRepliesPressed(String parentCommentUid),
    TResult unHideCommentRepliesPressed(String parentCommentUid),
    TResult likeReplyToCommentPressed(
        String postOwnerUid,
        String postUid,
        String parentCommentUid,
        String commentUid,
        String commentOwnerUid,
        String commentText,
        String postPhotoUrl),
    TResult unlikeReplyToCommentPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid, String commentOwnerUid),
    TResult showReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    TResult nextPageShowReplyLikersPressed(String postOwnerUid, String postUid,
        String parentCommentUid, String commentUid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowReplyLikersPressed != null) {
      return nextPageShowReplyLikersPressed(
          postOwnerUid, postUid, parentCommentUid, commentUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPostPressed(_LoadPostPressed value),
    @required TResult showSpoilerPressed(_ShowSpoilerPressed value),
    @required TResult likePostPressed(_LikePostPressed value),
    @required TResult unlikePostPressed(_UnlikePostPressed value),
    @required TResult showPostLikersPressed(_ShowPostLikersPressed value),
    @required
        TResult nextPageShowPostLikersPressed(
            _NextPageShowPostLikersPressed value),
    @required TResult commentPostPressed(_CommentPostPressed value),
    @required TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    @required TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    @required
        TResult nextPageShowPostCommentsPressed(
            _NextPageShowPostCommentsPressed value),
    @required
        TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    @required TResult likePostCommentPressed(_LikePostCommentPressed value),
    @required TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    @required TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    @required
        TResult nextPageShowCommentLikersPressed(
            _NextPageShowCommentLikersPressed value),
    @required TResult replyToCommentPressed(_ReplyToCommentPressed value),
    @required
        TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    @required
        TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    @required
        TResult nextPageShowCommentRepliesPressed(
            _NextPageShowCommentRepliesPressed value),
    @required
        TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    @required
        TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    @required
        TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    @required
        TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    @required TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    @required
        TResult nextPageShowReplyLikersPressed(
            _NextPageShowReplyLikersPressed value),
  }) {
    assert(loadPostPressed != null);
    assert(showSpoilerPressed != null);
    assert(likePostPressed != null);
    assert(unlikePostPressed != null);
    assert(showPostLikersPressed != null);
    assert(nextPageShowPostLikersPressed != null);
    assert(commentPostPressed != null);
    assert(deleteCommentPostPressed != null);
    assert(showPostCommentsPressed != null);
    assert(nextPageShowPostCommentsPressed != null);
    assert(showAllSpoilersInCommentsPressed != null);
    assert(likePostCommentPressed != null);
    assert(unlikePostCommentPressed != null);
    assert(showCommentLikersPressed != null);
    assert(nextPageShowCommentLikersPressed != null);
    assert(replyToCommentPressed != null);
    assert(deleteReplyToCommentPressed != null);
    assert(showCommentRepliesPressed != null);
    assert(nextPageShowCommentRepliesPressed != null);
    assert(hideCommentRepliesPressed != null);
    assert(unHideCommentRepliesPressed != null);
    assert(likeReplyToCommentPressed != null);
    assert(unlikeReplyToCommentPressed != null);
    assert(showReplyLikersPressed != null);
    assert(nextPageShowReplyLikersPressed != null);
    return nextPageShowReplyLikersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPostPressed(_LoadPostPressed value),
    TResult showSpoilerPressed(_ShowSpoilerPressed value),
    TResult likePostPressed(_LikePostPressed value),
    TResult unlikePostPressed(_UnlikePostPressed value),
    TResult showPostLikersPressed(_ShowPostLikersPressed value),
    TResult nextPageShowPostLikersPressed(_NextPageShowPostLikersPressed value),
    TResult commentPostPressed(_CommentPostPressed value),
    TResult deleteCommentPostPressed(_DeleteCommentPostPressed value),
    TResult showPostCommentsPressed(_ShowPostCommentsPressed value),
    TResult nextPageShowPostCommentsPressed(
        _NextPageShowPostCommentsPressed value),
    TResult showAllSpoilersInCommentsPressed(_ShowSpoilersPressed value),
    TResult likePostCommentPressed(_LikePostCommentPressed value),
    TResult unlikePostCommentPressed(_UnlikePostCommentPressed value),
    TResult showCommentLikersPressed(_ShowCommentLikersPressed value),
    TResult nextPageShowCommentLikersPressed(
        _NextPageShowCommentLikersPressed value),
    TResult replyToCommentPressed(_ReplyToCommentPressed value),
    TResult deleteReplyToCommentPressed(_DeleteReplyToCommentPressed value),
    TResult showCommentRepliesPressed(_ShowCommentRepliesPressed value),
    TResult nextPageShowCommentRepliesPressed(
        _NextPageShowCommentRepliesPressed value),
    TResult hideCommentRepliesPressed(_HideCommentRepliesPressed value),
    TResult unHideCommentRepliesPressed(_UnHideCommentRepliesPressed value),
    TResult likeReplyToCommentPressed(_LikeReplyToCommentPressed value),
    TResult unlikeReplyToCommentPressed(_UnlikeReplyToCommentPressed value),
    TResult showReplyLikersPressed(_ShowReplyLikersPressed value),
    TResult nextPageShowReplyLikersPressed(
        _NextPageShowReplyLikersPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageShowReplyLikersPressed != null) {
      return nextPageShowReplyLikersPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPageShowReplyLikersPressed implements UserPostEvent {
  const factory _NextPageShowReplyLikersPressed(
      {@required String postOwnerUid,
      @required String postUid,
      @required String parentCommentUid,
      @required String commentUid}) = _$_NextPageShowReplyLikersPressed;

  String get postOwnerUid;
  String get postUid;
  String get parentCommentUid;
  String get commentUid;
  @JsonKey(ignore: true)
  _$NextPageShowReplyLikersPressedCopyWith<_NextPageShowReplyLikersPressed>
      get copyWith;
}

/// @nodoc
class _$UserPostStateTearOff {
  const _$UserPostStateTearOff();

// ignore: unused_element
  _UserPostState call(
      {@required bool isLoadingPost,
      @required bool isPostLiked,
      @required bool isCurrentUserOwnerOfPost,
      @required bool isSpoiler,
      @required OurUserPost userPost,
      @required num numberOfLikes,
      @required num numberOfComments,
      @required String errorMessage,
      @required List<OurUser> postLikers,
      @required bool isLoadingPostLikers,
      @required Timestamp postLikersLastInListTimestamp,
      @required int nextPage,
      @required bool isThereMorePostLikersPageToLoad,
      @required bool isShowAllSpoilersInCommentsPressed,
      @required bool isUploadingComment,
      @required bool isLoadingPostComments,
      @required List<OurPostComment> postComments,
      @required List<OurUser> postCommentsUserProfiles,
      @required Timestamp postCommentLastInListTimestamp,
      @required num postCommentLastInListNumberOfLikes,
      @required bool isThereMorePostCommentsPageToLoad,
      @required Map<String, bool> postCommentsLikedByCurrentUser,
      @required List<OurUser> commentLikers,
      @required bool isLoadingCommentLikers,
      @required Timestamp commentLikersLastInListTimestamp,
      @required bool isThereMoreCommentLikersPageToLoad,
      @required Map<String, bool> isCommentRepliesShown,
      @required Map<String, bool> isLoadingCommentReplies,
      @required Map<String, List<OurPostComment>> commentReplies,
      @required Map<String, List<OurUser>> commentRepliesUserProfiles,
      @required Map<String, Timestamp> commentRepliesLastInListTimestamp,
      @required Map<String, bool> isThereMoreCommentRepliesPageToLoad,
      @required Map<String, bool> commentRepliesLikedByCurrentUser,
      @required List<OurUser> replyLikers,
      @required bool isLoadingReplyLikers,
      @required Timestamp replyLikersLastInListTimestamp,
      @required bool isThereMoreReplyLikersPageToLoad}) {
    return _UserPostState(
      isLoadingPost: isLoadingPost,
      isPostLiked: isPostLiked,
      isCurrentUserOwnerOfPost: isCurrentUserOwnerOfPost,
      isSpoiler: isSpoiler,
      userPost: userPost,
      numberOfLikes: numberOfLikes,
      numberOfComments: numberOfComments,
      errorMessage: errorMessage,
      postLikers: postLikers,
      isLoadingPostLikers: isLoadingPostLikers,
      postLikersLastInListTimestamp: postLikersLastInListTimestamp,
      nextPage: nextPage,
      isThereMorePostLikersPageToLoad: isThereMorePostLikersPageToLoad,
      isShowAllSpoilersInCommentsPressed: isShowAllSpoilersInCommentsPressed,
      isUploadingComment: isUploadingComment,
      isLoadingPostComments: isLoadingPostComments,
      postComments: postComments,
      postCommentsUserProfiles: postCommentsUserProfiles,
      postCommentLastInListTimestamp: postCommentLastInListTimestamp,
      postCommentLastInListNumberOfLikes: postCommentLastInListNumberOfLikes,
      isThereMorePostCommentsPageToLoad: isThereMorePostCommentsPageToLoad,
      postCommentsLikedByCurrentUser: postCommentsLikedByCurrentUser,
      commentLikers: commentLikers,
      isLoadingCommentLikers: isLoadingCommentLikers,
      commentLikersLastInListTimestamp: commentLikersLastInListTimestamp,
      isThereMoreCommentLikersPageToLoad: isThereMoreCommentLikersPageToLoad,
      isCommentRepliesShown: isCommentRepliesShown,
      isLoadingCommentReplies: isLoadingCommentReplies,
      commentReplies: commentReplies,
      commentRepliesUserProfiles: commentRepliesUserProfiles,
      commentRepliesLastInListTimestamp: commentRepliesLastInListTimestamp,
      isThereMoreCommentRepliesPageToLoad: isThereMoreCommentRepliesPageToLoad,
      commentRepliesLikedByCurrentUser: commentRepliesLikedByCurrentUser,
      replyLikers: replyLikers,
      isLoadingReplyLikers: isLoadingReplyLikers,
      replyLikersLastInListTimestamp: replyLikersLastInListTimestamp,
      isThereMoreReplyLikersPageToLoad: isThereMoreReplyLikersPageToLoad,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserPostState = _$UserPostStateTearOff();

/// @nodoc
mixin _$UserPostState {
  bool get isLoadingPost;
  bool get isPostLiked;
  bool get isCurrentUserOwnerOfPost;
  bool get isSpoiler;
  OurUserPost
      get userPost; //Added numberOfLikes and Comments as part of state, so that the UI updates when liked or commented
  num get numberOfLikes;
  num get numberOfComments;
  String get errorMessage; //post likers
  List<OurUser> get postLikers;
  bool get isLoadingPostLikers; //pagination
  Timestamp get postLikersLastInListTimestamp;
  int get nextPage;
  bool get isThereMorePostLikersPageToLoad; //post comments
  bool get isShowAllSpoilersInCommentsPressed;
  bool get isUploadingComment;
  bool get isLoadingPostComments;
  List<OurPostComment> get postComments;
  List<OurUser> get postCommentsUserProfiles; //pagination
  Timestamp get postCommentLastInListTimestamp;
  num get postCommentLastInListNumberOfLikes;
  bool get isThereMorePostCommentsPageToLoad; //like post comments
  Map<String, bool> get postCommentsLikedByCurrentUser; //comment likers
  List<OurUser> get commentLikers;
  bool get isLoadingCommentLikers; //pagination
  Timestamp get commentLikersLastInListTimestamp;
  bool get isThereMoreCommentLikersPageToLoad; //comment replies
  Map<String, bool> get isCommentRepliesShown;
  Map<String, bool> get isLoadingCommentReplies;
  Map<String, List<OurPostComment>> get commentReplies;
  Map<String, List<OurUser>> get commentRepliesUserProfiles; //pagination
  Map<String, Timestamp> get commentRepliesLastInListTimestamp;
  Map<String, bool> get isThereMoreCommentRepliesPageToLoad; //like reply
  Map<String, bool> get commentRepliesLikedByCurrentUser; //reply likers
  List<OurUser> get replyLikers;
  bool get isLoadingReplyLikers; //pagination
  Timestamp get replyLikersLastInListTimestamp;
  bool get isThereMoreReplyLikersPageToLoad;

  @JsonKey(ignore: true)
  $UserPostStateCopyWith<UserPostState> get copyWith;
}

/// @nodoc
abstract class $UserPostStateCopyWith<$Res> {
  factory $UserPostStateCopyWith(
          UserPostState value, $Res Function(UserPostState) then) =
      _$UserPostStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoadingPost,
      bool isPostLiked,
      bool isCurrentUserOwnerOfPost,
      bool isSpoiler,
      OurUserPost userPost,
      num numberOfLikes,
      num numberOfComments,
      String errorMessage,
      List<OurUser> postLikers,
      bool isLoadingPostLikers,
      Timestamp postLikersLastInListTimestamp,
      int nextPage,
      bool isThereMorePostLikersPageToLoad,
      bool isShowAllSpoilersInCommentsPressed,
      bool isUploadingComment,
      bool isLoadingPostComments,
      List<OurPostComment> postComments,
      List<OurUser> postCommentsUserProfiles,
      Timestamp postCommentLastInListTimestamp,
      num postCommentLastInListNumberOfLikes,
      bool isThereMorePostCommentsPageToLoad,
      Map<String, bool> postCommentsLikedByCurrentUser,
      List<OurUser> commentLikers,
      bool isLoadingCommentLikers,
      Timestamp commentLikersLastInListTimestamp,
      bool isThereMoreCommentLikersPageToLoad,
      Map<String, bool> isCommentRepliesShown,
      Map<String, bool> isLoadingCommentReplies,
      Map<String, List<OurPostComment>> commentReplies,
      Map<String, List<OurUser>> commentRepliesUserProfiles,
      Map<String, Timestamp> commentRepliesLastInListTimestamp,
      Map<String, bool> isThereMoreCommentRepliesPageToLoad,
      Map<String, bool> commentRepliesLikedByCurrentUser,
      List<OurUser> replyLikers,
      bool isLoadingReplyLikers,
      Timestamp replyLikersLastInListTimestamp,
      bool isThereMoreReplyLikersPageToLoad});
}

/// @nodoc
class _$UserPostStateCopyWithImpl<$Res>
    implements $UserPostStateCopyWith<$Res> {
  _$UserPostStateCopyWithImpl(this._value, this._then);

  final UserPostState _value;
  // ignore: unused_field
  final $Res Function(UserPostState) _then;

  @override
  $Res call({
    Object isLoadingPost = freezed,
    Object isPostLiked = freezed,
    Object isCurrentUserOwnerOfPost = freezed,
    Object isSpoiler = freezed,
    Object userPost = freezed,
    Object numberOfLikes = freezed,
    Object numberOfComments = freezed,
    Object errorMessage = freezed,
    Object postLikers = freezed,
    Object isLoadingPostLikers = freezed,
    Object postLikersLastInListTimestamp = freezed,
    Object nextPage = freezed,
    Object isThereMorePostLikersPageToLoad = freezed,
    Object isShowAllSpoilersInCommentsPressed = freezed,
    Object isUploadingComment = freezed,
    Object isLoadingPostComments = freezed,
    Object postComments = freezed,
    Object postCommentsUserProfiles = freezed,
    Object postCommentLastInListTimestamp = freezed,
    Object postCommentLastInListNumberOfLikes = freezed,
    Object isThereMorePostCommentsPageToLoad = freezed,
    Object postCommentsLikedByCurrentUser = freezed,
    Object commentLikers = freezed,
    Object isLoadingCommentLikers = freezed,
    Object commentLikersLastInListTimestamp = freezed,
    Object isThereMoreCommentLikersPageToLoad = freezed,
    Object isCommentRepliesShown = freezed,
    Object isLoadingCommentReplies = freezed,
    Object commentReplies = freezed,
    Object commentRepliesUserProfiles = freezed,
    Object commentRepliesLastInListTimestamp = freezed,
    Object isThereMoreCommentRepliesPageToLoad = freezed,
    Object commentRepliesLikedByCurrentUser = freezed,
    Object replyLikers = freezed,
    Object isLoadingReplyLikers = freezed,
    Object replyLikersLastInListTimestamp = freezed,
    Object isThereMoreReplyLikersPageToLoad = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingPost: isLoadingPost == freezed
          ? _value.isLoadingPost
          : isLoadingPost as bool,
      isPostLiked:
          isPostLiked == freezed ? _value.isPostLiked : isPostLiked as bool,
      isCurrentUserOwnerOfPost: isCurrentUserOwnerOfPost == freezed
          ? _value.isCurrentUserOwnerOfPost
          : isCurrentUserOwnerOfPost as bool,
      isSpoiler: isSpoiler == freezed ? _value.isSpoiler : isSpoiler as bool,
      userPost: userPost == freezed ? _value.userPost : userPost as OurUserPost,
      numberOfLikes: numberOfLikes == freezed
          ? _value.numberOfLikes
          : numberOfLikes as num,
      numberOfComments: numberOfComments == freezed
          ? _value.numberOfComments
          : numberOfComments as num,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      postLikers: postLikers == freezed
          ? _value.postLikers
          : postLikers as List<OurUser>,
      isLoadingPostLikers: isLoadingPostLikers == freezed
          ? _value.isLoadingPostLikers
          : isLoadingPostLikers as bool,
      postLikersLastInListTimestamp: postLikersLastInListTimestamp == freezed
          ? _value.postLikersLastInListTimestamp
          : postLikersLastInListTimestamp as Timestamp,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMorePostLikersPageToLoad:
          isThereMorePostLikersPageToLoad == freezed
              ? _value.isThereMorePostLikersPageToLoad
              : isThereMorePostLikersPageToLoad as bool,
      isShowAllSpoilersInCommentsPressed:
          isShowAllSpoilersInCommentsPressed == freezed
              ? _value.isShowAllSpoilersInCommentsPressed
              : isShowAllSpoilersInCommentsPressed as bool,
      isUploadingComment: isUploadingComment == freezed
          ? _value.isUploadingComment
          : isUploadingComment as bool,
      isLoadingPostComments: isLoadingPostComments == freezed
          ? _value.isLoadingPostComments
          : isLoadingPostComments as bool,
      postComments: postComments == freezed
          ? _value.postComments
          : postComments as List<OurPostComment>,
      postCommentsUserProfiles: postCommentsUserProfiles == freezed
          ? _value.postCommentsUserProfiles
          : postCommentsUserProfiles as List<OurUser>,
      postCommentLastInListTimestamp: postCommentLastInListTimestamp == freezed
          ? _value.postCommentLastInListTimestamp
          : postCommentLastInListTimestamp as Timestamp,
      postCommentLastInListNumberOfLikes:
          postCommentLastInListNumberOfLikes == freezed
              ? _value.postCommentLastInListNumberOfLikes
              : postCommentLastInListNumberOfLikes as num,
      isThereMorePostCommentsPageToLoad:
          isThereMorePostCommentsPageToLoad == freezed
              ? _value.isThereMorePostCommentsPageToLoad
              : isThereMorePostCommentsPageToLoad as bool,
      postCommentsLikedByCurrentUser: postCommentsLikedByCurrentUser == freezed
          ? _value.postCommentsLikedByCurrentUser
          : postCommentsLikedByCurrentUser as Map<String, bool>,
      commentLikers: commentLikers == freezed
          ? _value.commentLikers
          : commentLikers as List<OurUser>,
      isLoadingCommentLikers: isLoadingCommentLikers == freezed
          ? _value.isLoadingCommentLikers
          : isLoadingCommentLikers as bool,
      commentLikersLastInListTimestamp:
          commentLikersLastInListTimestamp == freezed
              ? _value.commentLikersLastInListTimestamp
              : commentLikersLastInListTimestamp as Timestamp,
      isThereMoreCommentLikersPageToLoad:
          isThereMoreCommentLikersPageToLoad == freezed
              ? _value.isThereMoreCommentLikersPageToLoad
              : isThereMoreCommentLikersPageToLoad as bool,
      isCommentRepliesShown: isCommentRepliesShown == freezed
          ? _value.isCommentRepliesShown
          : isCommentRepliesShown as Map<String, bool>,
      isLoadingCommentReplies: isLoadingCommentReplies == freezed
          ? _value.isLoadingCommentReplies
          : isLoadingCommentReplies as Map<String, bool>,
      commentReplies: commentReplies == freezed
          ? _value.commentReplies
          : commentReplies as Map<String, List<OurPostComment>>,
      commentRepliesUserProfiles: commentRepliesUserProfiles == freezed
          ? _value.commentRepliesUserProfiles
          : commentRepliesUserProfiles as Map<String, List<OurUser>>,
      commentRepliesLastInListTimestamp:
          commentRepliesLastInListTimestamp == freezed
              ? _value.commentRepliesLastInListTimestamp
              : commentRepliesLastInListTimestamp as Map<String, Timestamp>,
      isThereMoreCommentRepliesPageToLoad:
          isThereMoreCommentRepliesPageToLoad == freezed
              ? _value.isThereMoreCommentRepliesPageToLoad
              : isThereMoreCommentRepliesPageToLoad as Map<String, bool>,
      commentRepliesLikedByCurrentUser:
          commentRepliesLikedByCurrentUser == freezed
              ? _value.commentRepliesLikedByCurrentUser
              : commentRepliesLikedByCurrentUser as Map<String, bool>,
      replyLikers: replyLikers == freezed
          ? _value.replyLikers
          : replyLikers as List<OurUser>,
      isLoadingReplyLikers: isLoadingReplyLikers == freezed
          ? _value.isLoadingReplyLikers
          : isLoadingReplyLikers as bool,
      replyLikersLastInListTimestamp: replyLikersLastInListTimestamp == freezed
          ? _value.replyLikersLastInListTimestamp
          : replyLikersLastInListTimestamp as Timestamp,
      isThereMoreReplyLikersPageToLoad:
          isThereMoreReplyLikersPageToLoad == freezed
              ? _value.isThereMoreReplyLikersPageToLoad
              : isThereMoreReplyLikersPageToLoad as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserPostStateCopyWith<$Res>
    implements $UserPostStateCopyWith<$Res> {
  factory _$UserPostStateCopyWith(
          _UserPostState value, $Res Function(_UserPostState) then) =
      __$UserPostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoadingPost,
      bool isPostLiked,
      bool isCurrentUserOwnerOfPost,
      bool isSpoiler,
      OurUserPost userPost,
      num numberOfLikes,
      num numberOfComments,
      String errorMessage,
      List<OurUser> postLikers,
      bool isLoadingPostLikers,
      Timestamp postLikersLastInListTimestamp,
      int nextPage,
      bool isThereMorePostLikersPageToLoad,
      bool isShowAllSpoilersInCommentsPressed,
      bool isUploadingComment,
      bool isLoadingPostComments,
      List<OurPostComment> postComments,
      List<OurUser> postCommentsUserProfiles,
      Timestamp postCommentLastInListTimestamp,
      num postCommentLastInListNumberOfLikes,
      bool isThereMorePostCommentsPageToLoad,
      Map<String, bool> postCommentsLikedByCurrentUser,
      List<OurUser> commentLikers,
      bool isLoadingCommentLikers,
      Timestamp commentLikersLastInListTimestamp,
      bool isThereMoreCommentLikersPageToLoad,
      Map<String, bool> isCommentRepliesShown,
      Map<String, bool> isLoadingCommentReplies,
      Map<String, List<OurPostComment>> commentReplies,
      Map<String, List<OurUser>> commentRepliesUserProfiles,
      Map<String, Timestamp> commentRepliesLastInListTimestamp,
      Map<String, bool> isThereMoreCommentRepliesPageToLoad,
      Map<String, bool> commentRepliesLikedByCurrentUser,
      List<OurUser> replyLikers,
      bool isLoadingReplyLikers,
      Timestamp replyLikersLastInListTimestamp,
      bool isThereMoreReplyLikersPageToLoad});
}

/// @nodoc
class __$UserPostStateCopyWithImpl<$Res>
    extends _$UserPostStateCopyWithImpl<$Res>
    implements _$UserPostStateCopyWith<$Res> {
  __$UserPostStateCopyWithImpl(
      _UserPostState _value, $Res Function(_UserPostState) _then)
      : super(_value, (v) => _then(v as _UserPostState));

  @override
  _UserPostState get _value => super._value as _UserPostState;

  @override
  $Res call({
    Object isLoadingPost = freezed,
    Object isPostLiked = freezed,
    Object isCurrentUserOwnerOfPost = freezed,
    Object isSpoiler = freezed,
    Object userPost = freezed,
    Object numberOfLikes = freezed,
    Object numberOfComments = freezed,
    Object errorMessage = freezed,
    Object postLikers = freezed,
    Object isLoadingPostLikers = freezed,
    Object postLikersLastInListTimestamp = freezed,
    Object nextPage = freezed,
    Object isThereMorePostLikersPageToLoad = freezed,
    Object isShowAllSpoilersInCommentsPressed = freezed,
    Object isUploadingComment = freezed,
    Object isLoadingPostComments = freezed,
    Object postComments = freezed,
    Object postCommentsUserProfiles = freezed,
    Object postCommentLastInListTimestamp = freezed,
    Object postCommentLastInListNumberOfLikes = freezed,
    Object isThereMorePostCommentsPageToLoad = freezed,
    Object postCommentsLikedByCurrentUser = freezed,
    Object commentLikers = freezed,
    Object isLoadingCommentLikers = freezed,
    Object commentLikersLastInListTimestamp = freezed,
    Object isThereMoreCommentLikersPageToLoad = freezed,
    Object isCommentRepliesShown = freezed,
    Object isLoadingCommentReplies = freezed,
    Object commentReplies = freezed,
    Object commentRepliesUserProfiles = freezed,
    Object commentRepliesLastInListTimestamp = freezed,
    Object isThereMoreCommentRepliesPageToLoad = freezed,
    Object commentRepliesLikedByCurrentUser = freezed,
    Object replyLikers = freezed,
    Object isLoadingReplyLikers = freezed,
    Object replyLikersLastInListTimestamp = freezed,
    Object isThereMoreReplyLikersPageToLoad = freezed,
  }) {
    return _then(_UserPostState(
      isLoadingPost: isLoadingPost == freezed
          ? _value.isLoadingPost
          : isLoadingPost as bool,
      isPostLiked:
          isPostLiked == freezed ? _value.isPostLiked : isPostLiked as bool,
      isCurrentUserOwnerOfPost: isCurrentUserOwnerOfPost == freezed
          ? _value.isCurrentUserOwnerOfPost
          : isCurrentUserOwnerOfPost as bool,
      isSpoiler: isSpoiler == freezed ? _value.isSpoiler : isSpoiler as bool,
      userPost: userPost == freezed ? _value.userPost : userPost as OurUserPost,
      numberOfLikes: numberOfLikes == freezed
          ? _value.numberOfLikes
          : numberOfLikes as num,
      numberOfComments: numberOfComments == freezed
          ? _value.numberOfComments
          : numberOfComments as num,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      postLikers: postLikers == freezed
          ? _value.postLikers
          : postLikers as List<OurUser>,
      isLoadingPostLikers: isLoadingPostLikers == freezed
          ? _value.isLoadingPostLikers
          : isLoadingPostLikers as bool,
      postLikersLastInListTimestamp: postLikersLastInListTimestamp == freezed
          ? _value.postLikersLastInListTimestamp
          : postLikersLastInListTimestamp as Timestamp,
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
      isThereMorePostLikersPageToLoad:
          isThereMorePostLikersPageToLoad == freezed
              ? _value.isThereMorePostLikersPageToLoad
              : isThereMorePostLikersPageToLoad as bool,
      isShowAllSpoilersInCommentsPressed:
          isShowAllSpoilersInCommentsPressed == freezed
              ? _value.isShowAllSpoilersInCommentsPressed
              : isShowAllSpoilersInCommentsPressed as bool,
      isUploadingComment: isUploadingComment == freezed
          ? _value.isUploadingComment
          : isUploadingComment as bool,
      isLoadingPostComments: isLoadingPostComments == freezed
          ? _value.isLoadingPostComments
          : isLoadingPostComments as bool,
      postComments: postComments == freezed
          ? _value.postComments
          : postComments as List<OurPostComment>,
      postCommentsUserProfiles: postCommentsUserProfiles == freezed
          ? _value.postCommentsUserProfiles
          : postCommentsUserProfiles as List<OurUser>,
      postCommentLastInListTimestamp: postCommentLastInListTimestamp == freezed
          ? _value.postCommentLastInListTimestamp
          : postCommentLastInListTimestamp as Timestamp,
      postCommentLastInListNumberOfLikes:
          postCommentLastInListNumberOfLikes == freezed
              ? _value.postCommentLastInListNumberOfLikes
              : postCommentLastInListNumberOfLikes as num,
      isThereMorePostCommentsPageToLoad:
          isThereMorePostCommentsPageToLoad == freezed
              ? _value.isThereMorePostCommentsPageToLoad
              : isThereMorePostCommentsPageToLoad as bool,
      postCommentsLikedByCurrentUser: postCommentsLikedByCurrentUser == freezed
          ? _value.postCommentsLikedByCurrentUser
          : postCommentsLikedByCurrentUser as Map<String, bool>,
      commentLikers: commentLikers == freezed
          ? _value.commentLikers
          : commentLikers as List<OurUser>,
      isLoadingCommentLikers: isLoadingCommentLikers == freezed
          ? _value.isLoadingCommentLikers
          : isLoadingCommentLikers as bool,
      commentLikersLastInListTimestamp:
          commentLikersLastInListTimestamp == freezed
              ? _value.commentLikersLastInListTimestamp
              : commentLikersLastInListTimestamp as Timestamp,
      isThereMoreCommentLikersPageToLoad:
          isThereMoreCommentLikersPageToLoad == freezed
              ? _value.isThereMoreCommentLikersPageToLoad
              : isThereMoreCommentLikersPageToLoad as bool,
      isCommentRepliesShown: isCommentRepliesShown == freezed
          ? _value.isCommentRepliesShown
          : isCommentRepliesShown as Map<String, bool>,
      isLoadingCommentReplies: isLoadingCommentReplies == freezed
          ? _value.isLoadingCommentReplies
          : isLoadingCommentReplies as Map<String, bool>,
      commentReplies: commentReplies == freezed
          ? _value.commentReplies
          : commentReplies as Map<String, List<OurPostComment>>,
      commentRepliesUserProfiles: commentRepliesUserProfiles == freezed
          ? _value.commentRepliesUserProfiles
          : commentRepliesUserProfiles as Map<String, List<OurUser>>,
      commentRepliesLastInListTimestamp:
          commentRepliesLastInListTimestamp == freezed
              ? _value.commentRepliesLastInListTimestamp
              : commentRepliesLastInListTimestamp as Map<String, Timestamp>,
      isThereMoreCommentRepliesPageToLoad:
          isThereMoreCommentRepliesPageToLoad == freezed
              ? _value.isThereMoreCommentRepliesPageToLoad
              : isThereMoreCommentRepliesPageToLoad as Map<String, bool>,
      commentRepliesLikedByCurrentUser:
          commentRepliesLikedByCurrentUser == freezed
              ? _value.commentRepliesLikedByCurrentUser
              : commentRepliesLikedByCurrentUser as Map<String, bool>,
      replyLikers: replyLikers == freezed
          ? _value.replyLikers
          : replyLikers as List<OurUser>,
      isLoadingReplyLikers: isLoadingReplyLikers == freezed
          ? _value.isLoadingReplyLikers
          : isLoadingReplyLikers as bool,
      replyLikersLastInListTimestamp: replyLikersLastInListTimestamp == freezed
          ? _value.replyLikersLastInListTimestamp
          : replyLikersLastInListTimestamp as Timestamp,
      isThereMoreReplyLikersPageToLoad:
          isThereMoreReplyLikersPageToLoad == freezed
              ? _value.isThereMoreReplyLikersPageToLoad
              : isThereMoreReplyLikersPageToLoad as bool,
    ));
  }
}

/// @nodoc
class _$_UserPostState implements _UserPostState {
  const _$_UserPostState(
      {@required this.isLoadingPost,
      @required this.isPostLiked,
      @required this.isCurrentUserOwnerOfPost,
      @required this.isSpoiler,
      @required this.userPost,
      @required this.numberOfLikes,
      @required this.numberOfComments,
      @required this.errorMessage,
      @required this.postLikers,
      @required this.isLoadingPostLikers,
      @required this.postLikersLastInListTimestamp,
      @required this.nextPage,
      @required this.isThereMorePostLikersPageToLoad,
      @required this.isShowAllSpoilersInCommentsPressed,
      @required this.isUploadingComment,
      @required this.isLoadingPostComments,
      @required this.postComments,
      @required this.postCommentsUserProfiles,
      @required this.postCommentLastInListTimestamp,
      @required this.postCommentLastInListNumberOfLikes,
      @required this.isThereMorePostCommentsPageToLoad,
      @required this.postCommentsLikedByCurrentUser,
      @required this.commentLikers,
      @required this.isLoadingCommentLikers,
      @required this.commentLikersLastInListTimestamp,
      @required this.isThereMoreCommentLikersPageToLoad,
      @required this.isCommentRepliesShown,
      @required this.isLoadingCommentReplies,
      @required this.commentReplies,
      @required this.commentRepliesUserProfiles,
      @required this.commentRepliesLastInListTimestamp,
      @required this.isThereMoreCommentRepliesPageToLoad,
      @required this.commentRepliesLikedByCurrentUser,
      @required this.replyLikers,
      @required this.isLoadingReplyLikers,
      @required this.replyLikersLastInListTimestamp,
      @required this.isThereMoreReplyLikersPageToLoad})
      : assert(isLoadingPost != null),
        assert(isPostLiked != null),
        assert(isCurrentUserOwnerOfPost != null),
        assert(isSpoiler != null),
        assert(userPost != null),
        assert(numberOfLikes != null),
        assert(numberOfComments != null),
        assert(errorMessage != null),
        assert(postLikers != null),
        assert(isLoadingPostLikers != null),
        assert(postLikersLastInListTimestamp != null),
        assert(nextPage != null),
        assert(isThereMorePostLikersPageToLoad != null),
        assert(isShowAllSpoilersInCommentsPressed != null),
        assert(isUploadingComment != null),
        assert(isLoadingPostComments != null),
        assert(postComments != null),
        assert(postCommentsUserProfiles != null),
        assert(postCommentLastInListTimestamp != null),
        assert(postCommentLastInListNumberOfLikes != null),
        assert(isThereMorePostCommentsPageToLoad != null),
        assert(postCommentsLikedByCurrentUser != null),
        assert(commentLikers != null),
        assert(isLoadingCommentLikers != null),
        assert(commentLikersLastInListTimestamp != null),
        assert(isThereMoreCommentLikersPageToLoad != null),
        assert(isCommentRepliesShown != null),
        assert(isLoadingCommentReplies != null),
        assert(commentReplies != null),
        assert(commentRepliesUserProfiles != null),
        assert(commentRepliesLastInListTimestamp != null),
        assert(isThereMoreCommentRepliesPageToLoad != null),
        assert(commentRepliesLikedByCurrentUser != null),
        assert(replyLikers != null),
        assert(isLoadingReplyLikers != null),
        assert(replyLikersLastInListTimestamp != null),
        assert(isThereMoreReplyLikersPageToLoad != null);

  @override
  final bool isLoadingPost;
  @override
  final bool isPostLiked;
  @override
  final bool isCurrentUserOwnerOfPost;
  @override
  final bool isSpoiler;
  @override
  final OurUserPost userPost;
  @override //Added numberOfLikes and Comments as part of state, so that the UI updates when liked or commented
  final num numberOfLikes;
  @override
  final num numberOfComments;
  @override
  final String errorMessage;
  @override //post likers
  final List<OurUser> postLikers;
  @override
  final bool isLoadingPostLikers;
  @override //pagination
  final Timestamp postLikersLastInListTimestamp;
  @override
  final int nextPage;
  @override
  final bool isThereMorePostLikersPageToLoad;
  @override //post comments
  final bool isShowAllSpoilersInCommentsPressed;
  @override
  final bool isUploadingComment;
  @override
  final bool isLoadingPostComments;
  @override
  final List<OurPostComment> postComments;
  @override
  final List<OurUser> postCommentsUserProfiles;
  @override //pagination
  final Timestamp postCommentLastInListTimestamp;
  @override
  final num postCommentLastInListNumberOfLikes;
  @override
  final bool isThereMorePostCommentsPageToLoad;
  @override //like post comments
  final Map<String, bool> postCommentsLikedByCurrentUser;
  @override //comment likers
  final List<OurUser> commentLikers;
  @override
  final bool isLoadingCommentLikers;
  @override //pagination
  final Timestamp commentLikersLastInListTimestamp;
  @override
  final bool isThereMoreCommentLikersPageToLoad;
  @override //comment replies
  final Map<String, bool> isCommentRepliesShown;
  @override
  final Map<String, bool> isLoadingCommentReplies;
  @override
  final Map<String, List<OurPostComment>> commentReplies;
  @override
  final Map<String, List<OurUser>> commentRepliesUserProfiles;
  @override //pagination
  final Map<String, Timestamp> commentRepliesLastInListTimestamp;
  @override
  final Map<String, bool> isThereMoreCommentRepliesPageToLoad;
  @override //like reply
  final Map<String, bool> commentRepliesLikedByCurrentUser;
  @override //reply likers
  final List<OurUser> replyLikers;
  @override
  final bool isLoadingReplyLikers;
  @override //pagination
  final Timestamp replyLikersLastInListTimestamp;
  @override
  final bool isThereMoreReplyLikersPageToLoad;

  @override
  String toString() {
    return 'UserPostState(isLoadingPost: $isLoadingPost, isPostLiked: $isPostLiked, isCurrentUserOwnerOfPost: $isCurrentUserOwnerOfPost, isSpoiler: $isSpoiler, userPost: $userPost, numberOfLikes: $numberOfLikes, numberOfComments: $numberOfComments, errorMessage: $errorMessage, postLikers: $postLikers, isLoadingPostLikers: $isLoadingPostLikers, postLikersLastInListTimestamp: $postLikersLastInListTimestamp, nextPage: $nextPage, isThereMorePostLikersPageToLoad: $isThereMorePostLikersPageToLoad, isShowAllSpoilersInCommentsPressed: $isShowAllSpoilersInCommentsPressed, isUploadingComment: $isUploadingComment, isLoadingPostComments: $isLoadingPostComments, postComments: $postComments, postCommentsUserProfiles: $postCommentsUserProfiles, postCommentLastInListTimestamp: $postCommentLastInListTimestamp, postCommentLastInListNumberOfLikes: $postCommentLastInListNumberOfLikes, isThereMorePostCommentsPageToLoad: $isThereMorePostCommentsPageToLoad, postCommentsLikedByCurrentUser: $postCommentsLikedByCurrentUser, commentLikers: $commentLikers, isLoadingCommentLikers: $isLoadingCommentLikers, commentLikersLastInListTimestamp: $commentLikersLastInListTimestamp, isThereMoreCommentLikersPageToLoad: $isThereMoreCommentLikersPageToLoad, isCommentRepliesShown: $isCommentRepliesShown, isLoadingCommentReplies: $isLoadingCommentReplies, commentReplies: $commentReplies, commentRepliesUserProfiles: $commentRepliesUserProfiles, commentRepliesLastInListTimestamp: $commentRepliesLastInListTimestamp, isThereMoreCommentRepliesPageToLoad: $isThereMoreCommentRepliesPageToLoad, commentRepliesLikedByCurrentUser: $commentRepliesLikedByCurrentUser, replyLikers: $replyLikers, isLoadingReplyLikers: $isLoadingReplyLikers, replyLikersLastInListTimestamp: $replyLikersLastInListTimestamp, isThereMoreReplyLikersPageToLoad: $isThereMoreReplyLikersPageToLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPostState &&
            (identical(other.isLoadingPost, isLoadingPost) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingPost, isLoadingPost)) &&
            (identical(other.isPostLiked, isPostLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isPostLiked, isPostLiked)) &&
            (identical(other.isCurrentUserOwnerOfPost, isCurrentUserOwnerOfPost) ||
                const DeepCollectionEquality().equals(
                    other.isCurrentUserOwnerOfPost,
                    isCurrentUserOwnerOfPost)) &&
            (identical(other.isSpoiler, isSpoiler) ||
                const DeepCollectionEquality()
                    .equals(other.isSpoiler, isSpoiler)) &&
            (identical(other.userPost, userPost) ||
                const DeepCollectionEquality()
                    .equals(other.userPost, userPost)) &&
            (identical(other.numberOfLikes, numberOfLikes) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfLikes, numberOfLikes)) &&
            (identical(other.numberOfComments, numberOfComments) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfComments, numberOfComments)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.postLikers, postLikers) ||
                const DeepCollectionEquality()
                    .equals(other.postLikers, postLikers)) &&
            (identical(other.isLoadingPostLikers, isLoadingPostLikers) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingPostLikers, isLoadingPostLikers)) &&
            (identical(other.postLikersLastInListTimestamp, postLikersLastInListTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.postLikersLastInListTimestamp,
                    postLikersLastInListTimestamp)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(other.isThereMorePostLikersPageToLoad, isThereMorePostLikersPageToLoad) ||
                const DeepCollectionEquality().equals(
                    other.isThereMorePostLikersPageToLoad,
                    isThereMorePostLikersPageToLoad)) &&
            (identical(other.isShowAllSpoilersInCommentsPressed, isShowAllSpoilersInCommentsPressed) ||
                const DeepCollectionEquality().equals(
                    other.isShowAllSpoilersInCommentsPressed, isShowAllSpoilersInCommentsPressed)) &&
            (identical(other.isUploadingComment, isUploadingComment) || const DeepCollectionEquality().equals(other.isUploadingComment, isUploadingComment)) &&
            (identical(other.isLoadingPostComments, isLoadingPostComments) || const DeepCollectionEquality().equals(other.isLoadingPostComments, isLoadingPostComments)) &&
            (identical(other.postComments, postComments) || const DeepCollectionEquality().equals(other.postComments, postComments)) &&
            (identical(other.postCommentsUserProfiles, postCommentsUserProfiles) || const DeepCollectionEquality().equals(other.postCommentsUserProfiles, postCommentsUserProfiles)) &&
            (identical(other.postCommentLastInListTimestamp, postCommentLastInListTimestamp) || const DeepCollectionEquality().equals(other.postCommentLastInListTimestamp, postCommentLastInListTimestamp)) &&
            (identical(other.postCommentLastInListNumberOfLikes, postCommentLastInListNumberOfLikes) || const DeepCollectionEquality().equals(other.postCommentLastInListNumberOfLikes, postCommentLastInListNumberOfLikes)) &&
            (identical(other.isThereMorePostCommentsPageToLoad, isThereMorePostCommentsPageToLoad) || const DeepCollectionEquality().equals(other.isThereMorePostCommentsPageToLoad, isThereMorePostCommentsPageToLoad)) &&
            (identical(other.postCommentsLikedByCurrentUser, postCommentsLikedByCurrentUser) || const DeepCollectionEquality().equals(other.postCommentsLikedByCurrentUser, postCommentsLikedByCurrentUser)) &&
            (identical(other.commentLikers, commentLikers) || const DeepCollectionEquality().equals(other.commentLikers, commentLikers)) &&
            (identical(other.isLoadingCommentLikers, isLoadingCommentLikers) || const DeepCollectionEquality().equals(other.isLoadingCommentLikers, isLoadingCommentLikers)) &&
            (identical(other.commentLikersLastInListTimestamp, commentLikersLastInListTimestamp) || const DeepCollectionEquality().equals(other.commentLikersLastInListTimestamp, commentLikersLastInListTimestamp)) &&
            (identical(other.isThereMoreCommentLikersPageToLoad, isThereMoreCommentLikersPageToLoad) || const DeepCollectionEquality().equals(other.isThereMoreCommentLikersPageToLoad, isThereMoreCommentLikersPageToLoad)) &&
            (identical(other.isCommentRepliesShown, isCommentRepliesShown) || const DeepCollectionEquality().equals(other.isCommentRepliesShown, isCommentRepliesShown)) &&
            (identical(other.isLoadingCommentReplies, isLoadingCommentReplies) || const DeepCollectionEquality().equals(other.isLoadingCommentReplies, isLoadingCommentReplies)) &&
            (identical(other.commentReplies, commentReplies) || const DeepCollectionEquality().equals(other.commentReplies, commentReplies)) &&
            (identical(other.commentRepliesUserProfiles, commentRepliesUserProfiles) || const DeepCollectionEquality().equals(other.commentRepliesUserProfiles, commentRepliesUserProfiles)) &&
            (identical(other.commentRepliesLastInListTimestamp, commentRepliesLastInListTimestamp) || const DeepCollectionEquality().equals(other.commentRepliesLastInListTimestamp, commentRepliesLastInListTimestamp)) &&
            (identical(other.isThereMoreCommentRepliesPageToLoad, isThereMoreCommentRepliesPageToLoad) || const DeepCollectionEquality().equals(other.isThereMoreCommentRepliesPageToLoad, isThereMoreCommentRepliesPageToLoad)) &&
            (identical(other.commentRepliesLikedByCurrentUser, commentRepliesLikedByCurrentUser) || const DeepCollectionEquality().equals(other.commentRepliesLikedByCurrentUser, commentRepliesLikedByCurrentUser)) &&
            (identical(other.replyLikers, replyLikers) || const DeepCollectionEquality().equals(other.replyLikers, replyLikers)) &&
            (identical(other.isLoadingReplyLikers, isLoadingReplyLikers) || const DeepCollectionEquality().equals(other.isLoadingReplyLikers, isLoadingReplyLikers)) &&
            (identical(other.replyLikersLastInListTimestamp, replyLikersLastInListTimestamp) || const DeepCollectionEquality().equals(other.replyLikersLastInListTimestamp, replyLikersLastInListTimestamp)) &&
            (identical(other.isThereMoreReplyLikersPageToLoad, isThereMoreReplyLikersPageToLoad) || const DeepCollectionEquality().equals(other.isThereMoreReplyLikersPageToLoad, isThereMoreReplyLikersPageToLoad)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoadingPost) ^
      const DeepCollectionEquality().hash(isPostLiked) ^
      const DeepCollectionEquality().hash(isCurrentUserOwnerOfPost) ^
      const DeepCollectionEquality().hash(isSpoiler) ^
      const DeepCollectionEquality().hash(userPost) ^
      const DeepCollectionEquality().hash(numberOfLikes) ^
      const DeepCollectionEquality().hash(numberOfComments) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(postLikers) ^
      const DeepCollectionEquality().hash(isLoadingPostLikers) ^
      const DeepCollectionEquality().hash(postLikersLastInListTimestamp) ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(isThereMorePostLikersPageToLoad) ^
      const DeepCollectionEquality().hash(isShowAllSpoilersInCommentsPressed) ^
      const DeepCollectionEquality().hash(isUploadingComment) ^
      const DeepCollectionEquality().hash(isLoadingPostComments) ^
      const DeepCollectionEquality().hash(postComments) ^
      const DeepCollectionEquality().hash(postCommentsUserProfiles) ^
      const DeepCollectionEquality().hash(postCommentLastInListTimestamp) ^
      const DeepCollectionEquality().hash(postCommentLastInListNumberOfLikes) ^
      const DeepCollectionEquality().hash(isThereMorePostCommentsPageToLoad) ^
      const DeepCollectionEquality().hash(postCommentsLikedByCurrentUser) ^
      const DeepCollectionEquality().hash(commentLikers) ^
      const DeepCollectionEquality().hash(isLoadingCommentLikers) ^
      const DeepCollectionEquality().hash(commentLikersLastInListTimestamp) ^
      const DeepCollectionEquality().hash(isThereMoreCommentLikersPageToLoad) ^
      const DeepCollectionEquality().hash(isCommentRepliesShown) ^
      const DeepCollectionEquality().hash(isLoadingCommentReplies) ^
      const DeepCollectionEquality().hash(commentReplies) ^
      const DeepCollectionEquality().hash(commentRepliesUserProfiles) ^
      const DeepCollectionEquality().hash(commentRepliesLastInListTimestamp) ^
      const DeepCollectionEquality().hash(isThereMoreCommentRepliesPageToLoad) ^
      const DeepCollectionEquality().hash(commentRepliesLikedByCurrentUser) ^
      const DeepCollectionEquality().hash(replyLikers) ^
      const DeepCollectionEquality().hash(isLoadingReplyLikers) ^
      const DeepCollectionEquality().hash(replyLikersLastInListTimestamp) ^
      const DeepCollectionEquality().hash(isThereMoreReplyLikersPageToLoad);

  @JsonKey(ignore: true)
  @override
  _$UserPostStateCopyWith<_UserPostState> get copyWith =>
      __$UserPostStateCopyWithImpl<_UserPostState>(this, _$identity);
}

abstract class _UserPostState implements UserPostState {
  const factory _UserPostState(
      {@required bool isLoadingPost,
      @required bool isPostLiked,
      @required bool isCurrentUserOwnerOfPost,
      @required bool isSpoiler,
      @required OurUserPost userPost,
      @required num numberOfLikes,
      @required num numberOfComments,
      @required String errorMessage,
      @required List<OurUser> postLikers,
      @required bool isLoadingPostLikers,
      @required Timestamp postLikersLastInListTimestamp,
      @required int nextPage,
      @required bool isThereMorePostLikersPageToLoad,
      @required bool isShowAllSpoilersInCommentsPressed,
      @required bool isUploadingComment,
      @required bool isLoadingPostComments,
      @required List<OurPostComment> postComments,
      @required List<OurUser> postCommentsUserProfiles,
      @required Timestamp postCommentLastInListTimestamp,
      @required num postCommentLastInListNumberOfLikes,
      @required bool isThereMorePostCommentsPageToLoad,
      @required Map<String, bool> postCommentsLikedByCurrentUser,
      @required List<OurUser> commentLikers,
      @required bool isLoadingCommentLikers,
      @required Timestamp commentLikersLastInListTimestamp,
      @required bool isThereMoreCommentLikersPageToLoad,
      @required Map<String, bool> isCommentRepliesShown,
      @required Map<String, bool> isLoadingCommentReplies,
      @required Map<String, List<OurPostComment>> commentReplies,
      @required Map<String, List<OurUser>> commentRepliesUserProfiles,
      @required Map<String, Timestamp> commentRepliesLastInListTimestamp,
      @required Map<String, bool> isThereMoreCommentRepliesPageToLoad,
      @required Map<String, bool> commentRepliesLikedByCurrentUser,
      @required List<OurUser> replyLikers,
      @required bool isLoadingReplyLikers,
      @required Timestamp replyLikersLastInListTimestamp,
      @required bool isThereMoreReplyLikersPageToLoad}) = _$_UserPostState;

  @override
  bool get isLoadingPost;
  @override
  bool get isPostLiked;
  @override
  bool get isCurrentUserOwnerOfPost;
  @override
  bool get isSpoiler;
  @override
  OurUserPost get userPost;
  @override //Added numberOfLikes and Comments as part of state, so that the UI updates when liked or commented
  num get numberOfLikes;
  @override
  num get numberOfComments;
  @override
  String get errorMessage;
  @override //post likers
  List<OurUser> get postLikers;
  @override
  bool get isLoadingPostLikers;
  @override //pagination
  Timestamp get postLikersLastInListTimestamp;
  @override
  int get nextPage;
  @override
  bool get isThereMorePostLikersPageToLoad;
  @override //post comments
  bool get isShowAllSpoilersInCommentsPressed;
  @override
  bool get isUploadingComment;
  @override
  bool get isLoadingPostComments;
  @override
  List<OurPostComment> get postComments;
  @override
  List<OurUser> get postCommentsUserProfiles;
  @override //pagination
  Timestamp get postCommentLastInListTimestamp;
  @override
  num get postCommentLastInListNumberOfLikes;
  @override
  bool get isThereMorePostCommentsPageToLoad;
  @override //like post comments
  Map<String, bool> get postCommentsLikedByCurrentUser;
  @override //comment likers
  List<OurUser> get commentLikers;
  @override
  bool get isLoadingCommentLikers;
  @override //pagination
  Timestamp get commentLikersLastInListTimestamp;
  @override
  bool get isThereMoreCommentLikersPageToLoad;
  @override //comment replies
  Map<String, bool> get isCommentRepliesShown;
  @override
  Map<String, bool> get isLoadingCommentReplies;
  @override
  Map<String, List<OurPostComment>> get commentReplies;
  @override
  Map<String, List<OurUser>> get commentRepliesUserProfiles;
  @override //pagination
  Map<String, Timestamp> get commentRepliesLastInListTimestamp;
  @override
  Map<String, bool> get isThereMoreCommentRepliesPageToLoad;
  @override //like reply
  Map<String, bool> get commentRepliesLikedByCurrentUser;
  @override //reply likers
  List<OurUser> get replyLikers;
  @override
  bool get isLoadingReplyLikers;
  @override //pagination
  Timestamp get replyLikersLastInListTimestamp;
  @override
  bool get isThereMoreReplyLikersPageToLoad;
  @override
  @JsonKey(ignore: true)
  _$UserPostStateCopyWith<_UserPostState> get copyWith;
}
