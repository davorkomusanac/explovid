import 'package:explovid/application/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsPage extends StatefulWidget {
  final int movieId;

  MovieDetailsPage(this.movieId);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  bool isOverviewExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<MovieDetailsBloc>().add(
          MovieDetailsEvent.movieDetailsPressed(widget.movieId),
        );
    super.didChangeDependencies();
  }

  //Method to call, when Navigator.pop is called, to update the movieDetails page
  void sendEvent() {
    context.read<MovieDetailsBloc>().add(
          MovieDetailsEvent.movieDetailsPressed(widget.movieId),
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
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
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
                                  "https://image.tmdb.org/t/p/w780/${state.movieDetails.backdropPath}",
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
                                      state.movieDetails.title,
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
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 8.0, bottom: 8.0),
                                  child: Text(
                                    convertReleaseDate(state.movieDetails.releaseDate),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    convertRuntime(state.movieDetails.runtime),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Text(
                                    "⭐" + state.movieDetails.voteAverage.toString() + "/10",
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
                                    onPressed: () {},
                                    child: const Text("Add to Watchlist"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                  child: ElevatedButton(
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
                                  state.movieDetails.tagline.isNotEmpty ? state.movieDetails.tagline : "Overview",
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
                                        state.movieDetails.overview,
                                        style: TextStyle(fontSize: 16),
                                        maxLines: isOverviewExpanded ? 30 : 5,
                                        overflow: TextOverflow.fade,
                                      ),
                                      if (!isOverviewExpanded && state.movieDetails.overview.length > 250)
                                        const Icon(Icons.more_horiz),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                          Container(
                            height: 230,
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: state.movieDetails.credits.cast.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: false).push(
                                        MaterialPageRoute(
                                          builder: (context) => ActorDetailsPage(state.movieDetails.credits.cast[index].id),
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
                                            imagePath: state.movieDetails.credits.cast[index].profilePath,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                            child: Text(
                                              state.movieDetails.credits.cast[index].name,
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
                                              state.movieDetails.credits.cast[index].character,
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
                              "Similar movies",
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
                              itemCount: state.movieDetails.movieSearchResults.movieSummaries.length,
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
                                              builder: (context) => MovieDetailsPage(
                                                  state.movieDetails.movieSearchResults.movieSummaries[index].id),
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
                                            imagePath: state.movieDetails.movieSearchResults.movieSummaries[index].posterPath,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 4.0,
                                              ),
                                              child: Text(
                                                state.movieDetails.movieSearchResults.movieSummaries[index].title,
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
