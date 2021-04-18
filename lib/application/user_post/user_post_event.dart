part of 'user_post_bloc.dart';

@freezed
abstract class UserPostEvent with _$UserPostEvent {
  const factory UserPostEvent.loadPostPressed({@required String postOwnerUid, @required String postUid}) = _LoadPostPressed;
  const factory UserPostEvent.showSpoilerPressed() = _ShowSpoilerPressed;
  //like
  const factory UserPostEvent.likePostPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String postPhotoUrl,
  }) = _LikePostPressed;
  const factory UserPostEvent.unlikePostPressed({@required String postOwnerUid, @required String postUid}) = _UnlikePostPressed;
  //show likers page
  const factory UserPostEvent.showPostLikersPressed({@required String postOwnerUid, @required String postUid}) =
      _ShowPostLikersPressed;
  const factory UserPostEvent.nextPageShowPostLikersPressed({@required String postOwnerUid, @required String postUid}) =
      _NextPageShowPostLikersPressed;
  //comment
  const factory UserPostEvent.commentPostPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentText,
    @required bool isCommentSpoiler,
    @required String postPhotoUrl,
  }) = _CommentPostPressed;
  const factory UserPostEvent.deleteCommentPostPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) = _DeleteCommentPostPressed;
  //show comments
  const factory UserPostEvent.showPostCommentsPressed({@required String postOwnerUid, @required String postUid}) =
      _ShowPostCommentsPressed;
  const factory UserPostEvent.nextPageShowPostCommentsPressed({@required String postOwnerUid, @required String postUid}) =
      _NextPageShowPostCommentsPressed;
  //Show spoilers for whole comment page
  const factory UserPostEvent.showAllSpoilersInCommentsPressed() = _ShowSpoilersPressed;
  //Like comments
  const factory UserPostEvent.likePostCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String commentText,
    @required String postPhotoUrl,
  }) = _LikePostCommentPressed;
  const factory UserPostEvent.unlikePostCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) = _UnlikePostCommentPressed;
  //show comment likers
  const factory UserPostEvent.showCommentLikersPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
  }) = _ShowCommentLikersPressed;
  const factory UserPostEvent.nextPageShowCommentLikersPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
  }) = _NextPageShowCommentLikersPressed;
  //reply to parent comment
  const factory UserPostEvent.replyToCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentText,
    @required bool isCommentSpoiler,
    @required String postPhotoUrl,
    @required String uidOfTheCommentOwnerBeingRepliedTo,
  }) = _ReplyToCommentPressed;
  const factory UserPostEvent.deleteReplyToCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String parentCommentOwnerUid,
  }) = _DeleteReplyToCommentPressed;
  //show comment replies
  const factory UserPostEvent.showCommentRepliesPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
  }) = _ShowCommentRepliesPressed;
  const factory UserPostEvent.nextPageShowCommentRepliesPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
  }) = _NextPageShowCommentRepliesPressed;
  const factory UserPostEvent.hideCommentRepliesPressed({@required String parentCommentUid}) = _HideCommentRepliesPressed;
  const factory UserPostEvent.unHideCommentRepliesPressed({@required String parentCommentUid}) = _UnHideCommentRepliesPressed;
  //like replies
  const factory UserPostEvent.likeReplyToCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String commentText,
    @required String postPhotoUrl,
  }) = _LikeReplyToCommentPressed;
  const factory UserPostEvent.unlikeReplyToCommentPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) = _UnlikeReplyToCommentPressed;
  //show reply likers
  const factory UserPostEvent.showReplyLikersPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
  }) = _ShowReplyLikersPressed;
  const factory UserPostEvent.nextPageShowReplyLikersPressed({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
  }) = _NextPageShowReplyLikersPressed;
}
