import 'package:cached_network_image/cached_network_image.dart';
import 'package:explovid/application/search/tv_show_search/tv_show_details/tv_show_details_bloc.dart';
import 'package:explovid/application/user_post/reviews_posts/reviews_posts_bloc.dart';
import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_information_bloc.dart';
import 'package:explovid/data/models/tv_show_details/tv_show_details.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_details_page.dart';
import 'package:explovid/presentation/pages/reviews/current_user_review.dart';
import 'package:explovid/presentation/pages/reviews/other_user_review.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/full_tv_show_cast_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class TvShowDetailsPage extends StatefulWidget {
  final int tvShowId;
  final String tvShowName;

  TvShowDetailsPage({
    @required this.tvShowId,
    @required this.tvShowName,
  });

  @override
  _TvShowDetailsPageState createState() => _TvShowDetailsPageState();
}

class _TvShowDetailsPageState extends State<TvShowDetailsPage> {
  bool isOverviewExpanded = false;
  UserActionsRepository _userActionsRepository;
  OtherUserProfileRepository _otherUserProfileRepository;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _userActionsRepository = UserActionsRepository();
    _otherUserProfileRepository = OtherUserProfileRepository();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    context.read<TvShowDetailsBloc>().add(
          TvShowDetailsEvent.tvShowDetailsPressed(widget.tvShowId),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadReviewsPressed(
            isOfTypeMovie: false,
            title: widget.tvShowName,
            tmdbId: widget.tvShowId,
          ),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadCurrentUserReviewPressed(
            isOfTypeMovie: false,
            title: widget.tvShowName,
            tmdbId: widget.tvShowId,
          ),
        );
    super.didChangeDependencies();
  }

  //Method to call, when Navigator.pop is called, to update the TvShowDetails page
  void sendEvent() {
    context.read<TvShowDetailsBloc>().add(
          TvShowDetailsEvent.tvShowDetailsPressed(widget.tvShowId),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadReviewsPressed(
            isOfTypeMovie: false,
            title: widget.tvShowName,
            tmdbId: widget.tvShowId,
          ),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadCurrentUserReviewPressed(
            isOfTypeMovie: false,
            title: widget.tvShowName,
            tmdbId: widget.tvShowId,
          ),
        );
  }

  void _launchTrailer(BuildContext context, TvVideos videos) async {
    String trailerKey = '';
    for (var video in videos.results)
      if (video.type == "Trailer") {
        trailerKey = video.key;
        break;
      }
    String videoUrl = "https://www.youtube.com/watch?v=" + trailerKey;
    try {
      if (await canLaunch(videoUrl)) {
        await launch(videoUrl);
      } else {
        throw 'Could not launch trailer link';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  //If at end of the Listview, search for more reviews
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next tv show reviews");
      context.read<ReviewsPostsBloc>().add(
            ReviewsPostsEvent.loadReviewsPressedNextPage(
              isOfTypeMovie: false,
              title: widget.tvShowName,
              tmdbId: widget.tvShowId,
            ),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: BlocBuilder<TvShowDetailsBloc, TvShowDetailsState>(
          builder: (context, state) {
            return Column(
              children: [
                if (state.isSearching) BuildSearchProgressIndicator(),
                if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
                if (state.errorMessage.isEmpty && !state.isSearching)
                  Expanded(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView(
                        children: [
                          Material(
                            elevation: 10,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.35,
                                child: CachedNetworkImage(
                                  imageUrl: "https://image.tmdb.org/t/p/w780/${state.tvShowDetails.backdropPath}",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Container(
                                    color: Colors.green,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) {
                                    return Container(
                                      color: Colors.black,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text('😢'),
                                          const SizedBox(height: 5),
                                          const Text(
                                            'No image available',
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 16.0,
                                      right: 16.0,
                                    ),
                                    child: Text(
                                      state.tvShowDetails.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                  right: 20.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.tealAccent[200],
                                  ),
                                  onPressed: state.isTrailerAvailable
                                      ? () {
                                          _launchTrailer(context, state.tvShowDetails.videos);
                                        }
                                      : null,
                                  child: Text(
                                    state.isTrailerAvailable ? "TRAILER" : "NO TRAILER",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    top: 8.0,
                                    right: 8.0,
                                    bottom: 8.0,
                                  ),
                                  child: Text(
                                    state.tvShowDetails.status == "Returning Series"
                                        ? convertReleaseDate(state.tvShowDetails.firstAirDate) + "—"
                                        : convertReleaseDate(state.tvShowDetails.firstAirDate) +
                                            "—" +
                                            convertToReleaseYear(state.tvShowDetails.lastAirDate),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Text(
                                    state.tvShowDetails.voteAverage != 0 && state.tvShowDetails.voteCount > 100
                                        ? "⭐ " + state.tvShowDetails.voteAverage.toString() + " / 10"
                                        : "⭐ No rating",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          BlocConsumer<TvShowListsUserProfileBloc, TvShowListsUserProfileState>(
                            listener: (context, tvShowListState) {
                              if (tvShowListState.errorMessage.isNotEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(tvShowListState.errorMessage),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              }
                            },
                            builder: (context, tvShowListState) {
                              //Check if tvShow is watchList so that buttons can be updated correctly
                              bool isInWatchlist = false;
                              bool isInWatched = false;
                              String compare = state.tvShowDetails.name + "_" + state.tvShowDetails.id.toString();
                              for (var tvShow in tvShowListState.tvShowWatchlistArrayTitlesOnly) {
                                if (tvShow == compare) {
                                  isInWatchlist = true;
                                }
                              }
                              for (var tvShow in tvShowListState.tvShowWatchedArrayTitlesOnly) {
                                if (tvShow == compare) {
                                  isInWatched = true;
                                }
                              }
                              return Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                      child: tvShowListState.isSubmittingWatchlist
                                          ? Center(child: CircularProgressIndicator())
                                          : ElevatedButton(
                                              style: isInWatchlist ? kWatchedButton : kNotWatchedButton,
                                              onPressed: () {
                                                if (isInWatchlist) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return TvShowRemoveWatchlistDialog(tvShowDetails: state.tvShowDetails);
                                                    },
                                                  );
                                                } else {
                                                  context.read<TvShowListsUserProfileBloc>().add(
                                                        TvShowListsUserProfileEvent.addTvShowToWatchlistPressed(
                                                            state.tvShowDetails),
                                                      );
                                                }
                                              },
                                              child: Text(isInWatchlist ? "✅ In Watchlist" : "Add to Watchlist"),
                                            ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                      child: tvShowListState.isSubmittingWatched
                                          ? Center(child: CircularProgressIndicator())
                                          : ElevatedButton(
                                              style: isInWatched ? kWatchedButton : kNotWatchedButton,
                                              onPressed: () {
                                                if (isInWatched) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return TvShowRemoveReviewDialog(tvShowDetails: state.tvShowDetails);
                                                    },
                                                  );
                                                } else {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return TvShowReviewDialog(
                                                        tvShowDetails: state.tvShowDetails,
                                                        isInWatchlist: isInWatchlist,
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                              child: Text(isInWatched ? "✅ Watched" : "Rate it"),
                                            ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                            builder: (context, userReviewState) {
                              if (!userReviewState.isLoadingCurrentUserReview) {
                                if (userReviewState.currentUserReview.postOwnerUid.isNotEmpty) {
                                  return BlocProvider(
                                    create: (context) => UserPostBloc(
                                      _userActionsRepository,
                                    ),
                                    child: BlocProvider(
                                      create: (context) => OtherUserProfileInformationBloc(
                                        _otherUserProfileRepository,
                                      ),
                                      child: CurrentUserReview(
                                        postOwnerUid: userReviewState.currentUserReview.postOwnerUid,
                                        postUid: userReviewState.currentUserReview.postUid,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Offstage();
                                }
                              } else {
                                return Offstage();
                              }
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: Text(
                                  state.tvShowDetails.tagline.isNotEmpty ? state.tvShowDetails.tagline : "Overview",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isOverviewExpanded = !isOverviewExpanded;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        state.tvShowDetails.overview,
                                        style: TextStyle(fontSize: 16),
                                        maxLines: isOverviewExpanded ? 30 : 5,
                                        overflow: TextOverflow.fade,
                                      ),
                                      if (!isOverviewExpanded && state.tvShowDetails.overview.length > 250)
                                        const Icon(Icons.more_horiz),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: const Text(
                                  "Cast & Crew",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  // top: 10.0,
                                  right: 8.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.tealAccent[200],
                                  ),
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: false)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => FullTvShowCastPage(
                                              credits: state.tvShowDetails.aggregateCredits,
                                              name: state.tvShowDetails.name,
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
                                  child: Text("SEE ALL"),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 230,
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: state.tvShowDetails.aggregateCredits.cast.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: false)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => ActorDetailsPage(
                                                state.tvShowDetails.aggregateCredits.cast[index].id,
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
                                    child: Container(
                                      width: 90,
                                      child: Column(
                                        children: [
                                          BuildPosterImage(
                                            height: 135,
                                            width: 90,
                                            imagePath: state.tvShowDetails.aggregateCredits.cast[index].profilePath,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                            child: Text(
                                              state.tvShowDetails.aggregateCredits.cast[index].name,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              state.tvShowDetails.aggregateCredits.cast[index].roles.isNotEmpty
                                                  ? state.tvShowDetails.aggregateCredits.cast[index].roles[0].character
                                                  : "",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: const Text(
                              "Similar TV shows",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: 220,
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: state.tvShowDetails.tvShowSearchResults.tvShowSummaries.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    bottom: 8.0,
                                    right: 8.0,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      //Had to add .then and call setState, so that the first page is refreshed if it is popped back, from the second page where the Navigator
                                      //is going to push right now (otherwise each page will have the identical TvShowDetails)
                                      Navigator.of(context, rootNavigator: false)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => TvShowDetailsPage(
                                                tvShowName: state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].name,
                                                tvShowId: state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].id,
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
                                    child: Container(
                                      width: 90,
                                      child: Column(
                                        children: [
                                          BuildPosterImage(
                                            height: 135,
                                            width: 90,
                                            imagePath: state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].posterPath,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 4.0,
                                              ),
                                              child: Text(
                                                state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].voteAverage != 0 &&
                                                        state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].voteCount >
                                                            100
                                                    ? "⭐" +
                                                        state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].voteAverage
                                                            .toString() +
                                                        " " +
                                                        state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].name
                                                    : "⭐ N/A " +
                                                        state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].name,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                          /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          /// OTHER USERS REVIEWS ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                            builder: (context, state) {
                              if (state.reviews.length > 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Container(
                                    color: Colors.tealAccent[700],
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                                            child: Text(
                                              "Other User's reviews below!\nMight contain spoilers!",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                return Offstage();
                              }
                            },
                          ),
                          BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                            builder: (context, state) {
                              return state.isLoadingReviews
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : NotificationListener<ScrollNotification>(
                                      onNotification: _handleScrollNotification,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        controller: _scrollController,
                                        itemCount: _calculateOtherUsersReviewsListLength(state),
                                        itemBuilder: (context, index) {
                                          if (index >= state.reviews.length) {
                                            return BuildLoaderNextPage();
                                          } else {
                                            String postOwnerUid = state.reviews[index].postOwnerUid;
                                            String postUid = state.reviews[index].postUid;
                                            //Have to give a new BlocProvider instance to each item since each items needs its own state
                                            return BlocProvider(
                                              create: (context) => UserPostBloc(
                                                _userActionsRepository,
                                              ),
                                              child: BlocProvider(
                                                create: (context) => OtherUserProfileInformationBloc(
                                                  _otherUserProfileRepository,
                                                ),
                                                child: OtherUserReview(
                                                  postOwnerUid: postOwnerUid,
                                                  postUid: postUid,
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  int _calculateOtherUsersReviewsListLength(ReviewsPostsState state) {
    if (state.isThereMoreReviewsToLoad) {
      return state.reviews.length + 1;
    } else {
      return state.reviews.length;
    }
  }
}

class TvShowRemoveWatchlistDialog extends StatefulWidget {
  final TvShowDetails tvShowDetails;

  TvShowRemoveWatchlistDialog({this.tvShowDetails});

  @override
  _TvShowRemoveWatchlistDialogState createState() => _TvShowRemoveWatchlistDialogState();
}

class _TvShowRemoveWatchlistDialogState extends State<TvShowRemoveWatchlistDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm if you want to remove from Watchlist"),
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
            context.read<TvShowListsUserProfileBloc>().add(
                  TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed(widget.tvShowDetails),
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
}

class TvShowRemoveReviewDialog extends StatefulWidget {
  final TvShowDetails tvShowDetails;

  TvShowRemoveReviewDialog({this.tvShowDetails});

  @override
  _TvShowRemoveReviewDialogState createState() => _TvShowRemoveReviewDialogState();
}

class _TvShowRemoveReviewDialogState extends State<TvShowRemoveReviewDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm if you want to remove from Watched"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Note: this action cannot be undone, your rating and review will be lost."),
        ],
      ),
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
            context.read<TvShowListsUserProfileBloc>().add(
                  TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed(
                    tvShowTitle: widget.tvShowDetails.name,
                    tvShowId: widget.tvShowDetails.id,
                  ),
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
}

class TvShowReviewDialog extends StatefulWidget {
  final TvShowDetails tvShowDetails;
  final bool isInWatchlist;

  TvShowReviewDialog({this.tvShowDetails, this.isInWatchlist});

  @override
  _TvShowReviewDialogState createState() => _TvShowReviewDialogState();
}

class _TvShowReviewDialogState extends State<TvShowReviewDialog> {
  double rating = 6.0;
  bool isSpoiler = false;
  TextEditingController _tvShowReviewController;
  @override
  void initState() {
    super.initState();
    _tvShowReviewController = TextEditingController();
  }

  @override
  void dispose() {
    _tvShowReviewController.dispose();
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
        insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        //title: Text("Rate the tv show and write a review"),
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
                  controller: _tvShowReviewController,
                  maxLines: 80,
                  maxLength: 1000,
                  decoration: InputDecoration(
                    hintText: 'Type your review here...',
                    //alignLabelWithHint: true,
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
              context.read<TvShowListsUserProfileBloc>().add(
                    TvShowListsUserProfileEvent.addTvShowToWatchedPressed(
                        widget.tvShowDetails, _tvShowReviewController.text, rating, isSpoiler),
                  );
              if (widget.isInWatchlist)
                context.read<TvShowListsUserProfileBloc>().add(
                      TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed(widget.tvShowDetails),
                    );
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
