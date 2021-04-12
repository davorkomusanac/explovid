import 'dart:core';

import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_information_bloc.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:explovid/presentation/pages/profile_page/other_user_page/other_user_profile_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_comments_page.dart';
import 'package:explovid/presentation/pages/profile_page/post_page/post_likers_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/tv_show_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatefulWidget {
  final String postOwnerUid;
  final String postUid;

  PostPage({@required this.postOwnerUid, @required this.postUid});

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> with TickerProviderStateMixin {
  bool isReviewExpanded = false;
  bool toggleHeartIconAnimation = false;

  @override
  void initState() {
    super.initState();
    context.read<UserPostBloc>().add(
          UserPostEvent.loadPostPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
    context.read<OtherUserProfileInformationBloc>().add(
          OtherUserProfileInformationEvent.otherUserProfileLoaded(
            otherUserUid: widget.postOwnerUid,
          ),
        );
  }

  //Method to call when Navigator.pop is called, to update the page
  void sendEvent() {
    context.read<UserPostBloc>().add(
          UserPostEvent.loadPostPressed(
            postOwnerUid: widget.postOwnerUid,
            postUid: widget.postUid,
          ),
        );
    context.read<OtherUserProfileInformationBloc>().add(
          OtherUserProfileInformationEvent.otherUserProfileLoaded(
            otherUserUid: widget.postOwnerUid,
          ),
        );
  }

  void updateHeartIconAnimation() {
    setState(() {
      toggleHeartIconAnimation = !toggleHeartIconAnimation;
    });
  }

  Widget _buildConfirmUnlikeDialog({@required UserPostBloc bloc}) {
    return AlertDialog(
      title: Text("Are you sure you want to unlike this post?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            bloc.add(
              UserPostEvent.unlikePostPressed(postOwnerUid: widget.postOwnerUid, postUid: widget.postUid),
            );
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }

  Widget _buildEditPostActionsDialog({
    UserPostBloc userPostBloc,
    MovieListsUserProfileBloc movieListsUserProfileBloc,
    TvShowListsUserProfileBloc tvShowListsUserProfileBloc,
    @required UserPostState state,
  }) {
    return SimpleDialog(
      children: [
        SimpleDialogOption(
          padding: EdgeInsets.all(16),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _BuildUpdateReviewDialog(
                  state: state,
                  movieListsBloc: movieListsUserProfileBloc,
                  tvShowListsUserProfileBloc: tvShowListsUserProfileBloc,
                );
              },
            ).then((value) {
              userPostBloc.add(
                UserPostEvent.loadPostPressed(
                  postOwnerUid: widget.postOwnerUid,
                  postUid: widget.postUid,
                ),
              );
            });
          },
          child: Text(
            "Edit Review",
            textAlign: TextAlign.center,
          ),
        ),
        SimpleDialogOption(
          padding: EdgeInsets.all(16),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _buildConfirmDeletePostDialog(
                  state: state,
                  movieListsBloc: movieListsUserProfileBloc,
                  tvShowListsUserProfileBloc: tvShowListsUserProfileBloc,
                );
              },
            );
          },
          child: Text(
            "Delete Review",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmDeletePostDialog({
    MovieListsUserProfileBloc movieListsBloc,
    TvShowListsUserProfileBloc tvShowListsUserProfileBloc,
    @required UserPostState state,
  }) {
    return AlertDialog(
      title:
          Text("Are you sure you want to delete this post?\nAll the comments will be deleted and this action cannot be undone."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            state.userPost.isOfTypeMovie
                ? movieListsBloc.add(
                    MovieListsUserProfileEvent.removeMovieFromWatchedPressed(
                      movieTitle: state.userPost.title,
                      movieId: state.userPost.tmdbId,
                    ),
                  )
                : tvShowListsUserProfileBloc.add(
                    TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed(
                      tvShowTitle: state.userPost.title,
                      tvShowId: state.userPost.tmdbId,
                    ),
                  );
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: false).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: SafeArea(
        child: BlocBuilder<OtherUserProfileInformationBloc, OtherUserProfileInformationState>(
          builder: (context, userState) {
            return BlocConsumer<UserPostBloc, UserPostState>(
              listener: (context, state) {
                if (state.errorMessage.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMessage),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return state.isLoadingPost || userState.isSearching
                    ? Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => OtherUserProfilePage(otherUserUid: widget.postOwnerUid),
                                            ),
                                          )
                                          .then(
                                            (value) => setState(
                                              () {
                                                sendEvent();
                                              },
                                            ),
                                          );
                                    },
                                    child: Row(
                                      children: [
                                        Material(
                                          elevation: 20,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                          child: BuildProfilePhotoAvatar(
                                              profilePhotoUrl: userState.ourUser.profilePhotoUrl, radius: 20),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12.0),
                                          child: Text(
                                            userState.ourUser.username,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (state.isCurrentUserOwnerOfPost)
                                  IconButton(
                                      icon: Icon(Icons.more_vert),
                                      onPressed: () {
                                        // ignore: close_sinks
                                        final movieBloc = BlocProvider.of<MovieListsUserProfileBloc>(context, listen: false);
                                        // ignore: close_sinks
                                        final tvShowBloc = BlocProvider.of<TvShowListsUserProfileBloc>(context, listen: false);
                                        // ignore: close_sinks
                                        final userPostBloc = BlocProvider.of<UserPostBloc>(context, listen: false);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return _buildEditPostActionsDialog(
                                              userPostBloc: userPostBloc,
                                              movieListsUserProfileBloc: movieBloc,
                                              tvShowListsUserProfileBloc: tvShowBloc,
                                              state: state,
                                            );
                                          },
                                        );
                                      }),
                              ],
                            ),
                            GestureDetector(
                              onDoubleTap: () {
                                updateHeartIconAnimation();
                                Future.delayed(Duration(milliseconds: 1000), () {
                                  updateHeartIconAnimation();
                                });
                                if (!state.isPostLiked)
                                  context.read<UserPostBloc>().add(
                                        UserPostEvent.likePostPressed(postOwnerUid: widget.postOwnerUid, postUid: widget.postUid),
                                      );
                              },
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  BuildPosterImage(
                                    resolution: "w500",
                                    height: MediaQuery.of(context).size.width * 0.7 * 1.5,
                                    width: MediaQuery.of(context).size.width * 0.7,
                                    imagePath: state.userPost.posterPath,
                                  ),
                                  AnimatedSizeAndFade.showHide(
                                    show: toggleHeartIconAnimation,
                                    vsync: this,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: MediaQuery.of(context).size.width * 0.25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        padding: EdgeInsets.only(),
                                        icon: state.isPostLiked
                                            ? Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              )
                                            : Icon(
                                                Icons.favorite_border,
                                                //color: Colors.black,
                                              ),
                                        onPressed: () {
                                          // ignore: close_sinks
                                          final bloc = BlocProvider.of<UserPostBloc>(context, listen: false);
                                          state.isPostLiked
                                              ? showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return _buildConfirmUnlikeDialog(bloc: bloc);
                                                  },
                                                )
                                              : context.read<UserPostBloc>().add(
                                                    UserPostEvent.likePostPressed(
                                                        postOwnerUid: widget.postOwnerUid, postUid: widget.postUid),
                                                  );
                                        },
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(
                                                MaterialPageRoute(
                                                  builder: (context) => PostLikersPage(
                                                    postOwnerUid: widget.postOwnerUid,
                                                    postUid: widget.postUid,
                                                  ),
                                                ),
                                              )
                                              .then(
                                                (value) => setState(
                                                  () {
                                                    sendEvent();
                                                  },
                                                ),
                                              );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 8.0,
                                            bottom: 8.0,
                                            top: 8.0,
                                          ),
                                          child: Text(
                                            convertNumberOfLikesAndComments(state.numberOfLikes),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.only(),
                                        icon: Icon(
                                          CommunityMaterialIcons.chat_outline,
                                          //color: Colors.black,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(
                                                MaterialPageRoute(
                                                  builder: (context) => PostCommentsPage(
                                                    postOwnerUid: widget.postOwnerUid,
                                                    postUid: widget.postUid,
                                                    postOwnerUsername: userState.ourUser.username,
                                                    postOwnerProfilePhoto: userState.ourUser.profilePhotoUrl,
                                                    postOwnerRating: state.userPost.rating,
                                                    postOwnerReview: state.userPost.review,
                                                    isPostSpoiler: state.isSpoiler,
                                                    postCreationDate: state.userPost.postCreationDate,
                                                    isKeyboardFocused: true,
                                                  ),
                                                ),
                                              )
                                              .then(
                                                (value) => setState(
                                                  () {
                                                    sendEvent();
                                                  },
                                                ),
                                              );
                                        },
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(
                                                MaterialPageRoute(
                                                  builder: (context) => PostCommentsPage(
                                                    postOwnerUid: widget.postOwnerUid,
                                                    postUid: widget.postUid,
                                                    postOwnerUsername: userState.ourUser.username,
                                                    postOwnerProfilePhoto: userState.ourUser.profilePhotoUrl,
                                                    postOwnerRating: state.userPost.rating,
                                                    postOwnerReview: state.userPost.review,
                                                    isPostSpoiler: state.isSpoiler,
                                                    postCreationDate: state.userPost.postCreationDate,
                                                    isKeyboardFocused: false,
                                                  ),
                                                ),
                                              )
                                              .then(
                                                (value) => setState(
                                                  () {
                                                    sendEvent();
                                                  },
                                                ),
                                              );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 8.0,
                                            bottom: 8.0,
                                            top: 8.0,
                                          ),
                                          child: Text(
                                            convertNumberOfLikesAndComments(state.numberOfComments),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.tealAccent[200],
                                    ),
                                    onPressed: () {
                                      state.userPost.isOfTypeMovie
                                          ? Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) => MovieDetailsPage(
                                                  movieId: state.userPost.tmdbId,
                                                  movieTitle: state.userPost.title,
                                                ),
                                              ),
                                            )
                                          : Navigator.of(context)
                                              .push(
                                                MaterialPageRoute(
                                                  builder: (context) => TvShowDetailsPage(
                                                    tvShowName: state.userPost.title,
                                                    tvShowId: state.userPost.tmdbId,
                                                  ),
                                                ),
                                              )
                                              .then(
                                                (value) => setState(
                                                  () {
                                                    sendEvent();
                                                  },
                                                ),
                                              );
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          state.userPost.title,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  maxLines: 2,
                                  text: TextSpan(
                                    text: userState.ourUser.username,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context)
                                            .push(
                                              MaterialPageRoute(
                                                builder: (context) => OtherUserProfilePage(otherUserUid: widget.postOwnerUid),
                                              ),
                                            )
                                            .then(
                                              (value) => setState(
                                                () {
                                                  sendEvent();
                                                },
                                              ),
                                            );
                                      },
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "  rated it ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ⭐ ",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: state.userPost.rating.toInt().toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.yellow,
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " / 10",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            state.isSpoiler
                                ? OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.tealAccent[700],
                                    ),
                                    onPressed: () {
                                      context.read<UserPostBloc>().add(
                                            UserPostEvent.showSpoilerPressed(),
                                          );
                                    },
                                    child: Text("This review contains spoilers, press to see"),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isReviewExpanded = !isReviewExpanded;
                                          });
                                        },
                                        child: ExpandableText(
                                          state.userPost.review,
                                          expandText: "more",
                                          collapseText: "...collapse",
                                          maxLines: 3,
                                          expanded: isReviewExpanded,
                                          key: UniqueKey(),
                                        ),
                                      ),
                                    ),
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  convertPostCreationDate(state.userPost.postCreationDate),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
              },
            );
          },
        ),
      ),
    );
  }
}

class _BuildUpdateReviewDialog extends StatefulWidget {
  final MovieListsUserProfileBloc movieListsBloc;
  final TvShowListsUserProfileBloc tvShowListsUserProfileBloc;
  final UserPostState state;

  _BuildUpdateReviewDialog({
    this.movieListsBloc,
    this.tvShowListsUserProfileBloc,
    this.state,
  });

  @override
  __BuildUpdateReviewDialogState createState() => __BuildUpdateReviewDialogState();
}

class __BuildUpdateReviewDialogState extends State<_BuildUpdateReviewDialog> {
  double rating;
  bool isSpoiler;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    rating = widget.state.userPost.rating;
    isSpoiler = widget.state.userPost.isSpoiler;
    _controller = TextEditingController(text: widget.state.userPost.review);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        actionsPadding: EdgeInsets.only(right: 12),
        contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
        insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "⭐ ${rating.toInt().toString()}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Slider(
                  min: 1.0,
                  max: 10.0,
                  divisions: 9,
                  value: rating,
                  activeColor: Colors.tealAccent[700],
                  onChanged: (double value) {
                    setState(() {
                      rating = value;
                    });
                  }),
              Expanded(
                child: TextField(
                  controller: _controller,
                  maxLines: 80,
                  maxLength: 1000,
                  decoration: InputDecoration(
                    counter: Offstage(),
                  ),
                ),
              ),
              CheckboxListTile(
                activeColor: Colors.tealAccent[700],
                value: isSpoiler,
                title: Text("Contains spoilers"),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {
                  setState(() {
                    isSpoiler = value;
                  });
                },
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: TextButton.styleFrom(
              primary: Colors.tealAccent[200],
            ),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              widget.state.userPost.isOfTypeMovie
                  ? widget.movieListsBloc.add(
                      MovieListsUserProfileEvent.updateMovieWatchedReviewPressed(
                        movieTitle: widget.state.userPost.title,
                        movieId: widget.state.userPost.tmdbId,
                        review: _controller.text,
                        rating: rating,
                        isSpoiler: isSpoiler,
                      ),
                    )
                  : widget.tvShowListsUserProfileBloc.add(
                      TvShowListsUserProfileEvent.updateTvShowWatchedReviewPressed(
                        tvShowTitle: widget.state.userPost.title,
                        tvShowId: widget.state.userPost.tmdbId,
                        review: _controller.text,
                        rating: rating,
                        isSpoiler: isSpoiler,
                      ),
                    );
              Navigator.of(context, rootNavigator: true).pop();
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.tealAccent[700],
            ),
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
