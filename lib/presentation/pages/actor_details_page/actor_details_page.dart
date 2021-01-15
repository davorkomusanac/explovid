import 'package:explovid/application/actor_search/actor_details/actor_details_bloc.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_biography_page.dart';
import 'package:explovid/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:explovid/presentation/pages/tv_show_details_page/tv_show_details_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActorDetailsPage extends StatefulWidget {
  final int actorId;

  ActorDetailsPage(this.actorId);

  @override
  _ActorDetailsPageState createState() => _ActorDetailsPageState();
}

class _ActorDetailsPageState extends State<ActorDetailsPage> {
  @override
  void didChangeDependencies() {
    context.read<ActorDetailsBloc>().add(
          ActorDetailsEvent.actorDetailsPressed(widget.actorId),
        );
    super.didChangeDependencies();
  }

  //Method to call, when Navigator.pop is called, to update the movieDetails page
  void sendEvent() {
    context.read<ActorDetailsBloc>().add(
          ActorDetailsEvent.actorDetailsPressed(widget.actorId),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ActorDetailsBloc, ActorDetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey[900],
              title: Text(
                state.errorMessage.isEmpty && !state.isSearching ? state.actorDetails.name : "Loading",
              ),
            ),
            body: Column(
              children: [
                if (state.isSearching) BuildSearchProgressIndicator(),
                if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
                if (state.errorMessage.isEmpty && !state.isSearching)
                  Expanded(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BuildPosterImage(height: 190, width: 132, imagePath: state.actorDetails.profilePath),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 16.0,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context, rootNavigator: false).push(
                                              MaterialPageRoute(
                                                builder: (context) => ActorBiographyPage(state.actorDetails.biography),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            state.actorDetails.biography,
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Text("Born: " + convertReleaseDate(state.actorDetails.birthday)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 4.0),
                                          child: Text(
                                            state.actorDetails.deathday.isEmpty
                                                ? ""
                                                : "Died: " + convertReleaseDate(state.actorDetails.deathday),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ///MOVIES
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Movies",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                  ),
                                  FlatButton(
                                      onPressed: () {
                                        //state.actorDetails.movieCredits.
                                      },
                                      child: Text(
                                        "SEE ALL",
                                        style: TextStyle(color: Colors.blue),
                                      )),
                                ],
                              ),
                            ),
                            if (state.actorDetails.movieCredits.cast.isNotEmpty)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Cast",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                            if (state.actorDetails.movieCredits.cast.isNotEmpty)
                              Container(
                                height: 190,
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.actorDetails.movieCredits.cast.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        left: index > 0 ? 8.0 : 0.0,
                                        bottom: 8.0,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          //Had to add .then and call setState, so that the first page is refreshed if it is popped back, from the second page where the Navigator
                                          //is going to push right now (otherwise each page will have the identical MovieDetails)
                                          Navigator.of(context, rootNavigator: false)
                                              .push(
                                                MaterialPageRoute(
                                                  builder: (context) => MovieDetailsPage(
                                                      state.actorDetails.movieCredits.cast[index].movieSummary.id),
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
                                                imagePath: state.actorDetails.movieCredits.cast[index].movieSummary.posterPath,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                                  child: Text(
                                                    state.actorDetails.movieCredits.cast[index].character,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
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

                            if (state.actorDetails.movieCredits.crew.isNotEmpty)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Crew",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                            if (state.actorDetails.movieCredits.crew.isNotEmpty)
                              Container(
                                height: 190,
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.actorDetails.movieCredits.crew.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        left: index > 0 ? 8.0 : 0.0,
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
                                                      state.actorDetails.movieCredits.crew[index].movieSummary.id),
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
                                                imagePath: state.actorDetails.movieCredits.crew[index].movieSummary.posterPath,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                                  child: Text(
                                                    state.actorDetails.movieCredits.crew[index].job,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
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

                            ///TV SHOWS
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "TV Shows",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                  ),
                                  FlatButton(
                                      onPressed: () {
                                        //state.actorDetails.movieCredits.
                                      },
                                      child: Text(
                                        "SEE ALL",
                                        style: TextStyle(color: Colors.blue),
                                      )),
                                ],
                              ),
                            ),
                            if (state.actorDetails.tvCredits.cast.isNotEmpty)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Cast",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                            if (state.actorDetails.tvCredits.cast.isNotEmpty)
                              Container(
                                height: 190,
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.actorDetails.tvCredits.cast.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        left: index > 0 ? 8.0 : 0.0,
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
                                                      state.actorDetails.tvCredits.cast[index].tvShowSummary.id),
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
                                                imagePath: state.actorDetails.tvCredits.cast[index].tvShowSummary.posterPath,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                                  child: Text(
                                                    state.actorDetails.tvCredits.cast[index].character,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
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
                            if (state.actorDetails.tvCredits.crew.isNotEmpty)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Crew",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                            if (state.actorDetails.tvCredits.crew.isNotEmpty)
                              Container(
                                height: 190,
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.actorDetails.tvCredits.crew.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        left: index > 0 ? 8.0 : 0.0,
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
                                                      state.actorDetails.tvCredits.crew[index].tvShowSummary.id),
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
                                                imagePath: state.actorDetails.tvCredits.crew[index].tvShowSummary.posterPath,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                                  child: Text(
                                                    state.actorDetails.tvCredits.crew[index].job,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
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
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
