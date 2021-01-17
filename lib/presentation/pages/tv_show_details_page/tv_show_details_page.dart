import 'package:explovid/application/tv_show_search/tv_show_details/tv_show_details_bloc.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_details_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/full_tv_show_cast_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TvShowDetailsPage extends StatefulWidget {
  final int tvShowId;

  TvShowDetailsPage(this.tvShowId);

  @override
  _TvShowDetailsPageState createState() => _TvShowDetailsPageState();
}

class _TvShowDetailsPageState extends State<TvShowDetailsPage> {
  bool isOverviewExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<TvShowDetailsBloc>().add(
          TvShowDetailsEvent.tvShowDetailsPressed(widget.tvShowId),
        );
    super.didChangeDependencies();
  }

  //Method to call, when Navigator.pop is called, to update the movieDetails page
  void sendEvent() {
    context.read<TvShowDetailsBloc>().add(
          TvShowDetailsEvent.tvShowDetailsPressed(widget.tvShowId),
        );
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
                                child: Image.network(
                                  "https://image.tmdb.org/t/p/w780/${state.tvShowDetails.backdropPath}",
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Container(
                                      color: Colors.green[900],
                                      width: 132,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress.expectedTotalBytes != null
                                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                              : null,
                                        ),
                                      ),
                                    );
                                  },
                                  errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                                    return Container(
                                      color: Colors.yellow,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text('😢'),
                                          const Text('No image available'),
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
                                  onPressed: () {},
                                  child: Text("TRAILER"),
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
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.tealAccent[700],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text("Add to Watchlist"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.tealAccent[700],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text("I Watched It"),
                                  ),
                                ),
                              ),
                            ],
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
                                      //is going to push right now (otherwise each page will have the identical MovieDetails)
                                      Navigator.of(context, rootNavigator: false)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) => TvShowDetailsPage(
                                                  state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].id),
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
                                                    : state.tvShowDetails.tvShowSearchResults.tvShowSummaries[index].name,
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
}
