import 'package:explovid/application/user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Username HERE",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Text(
                      "USER PHOTO",
                      textAlign: TextAlign.center,
                    ),
                    radius: 40,
                  ),
                  Column(
                    children: [
                      Text("0"),
                      Text("Posts"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("100"),
                      Text("Followers"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("200"),
                      Text("Following"),
                    ],
                  ),
                ],
              ),
            ),
            Text("NAME"),
            Text(
              "Short bio goes here... two or three lines of text max? ",
              maxLines: 3,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Edit Profile?"),
            ),
            Container(
              //color: Colors.red,
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _WatchedStatsCard(category: "Movies Watched", quantity: 33),
                  _WatchedStatsCard(category: "Movies In Watchlist", quantity: 80),
                  _WatchedStatsCard(category: "Tv Shows Watched", quantity: 15),
                  _WatchedStatsCard(category: "Tv Shows In Watchlist", quantity: 28),
                ],
              ),
            ),
            Text("Gridviews here"),
            BlocBuilder<MovieListsUserProfileBloc, MovieListsUserProfileState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return CircularProgressIndicator();
                } else {
                  final movies = state.movieWatchlist;
                  final moviesWatched = state.movieWatched;
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: movies.length,
                              itemBuilder: (context, index) {
                                final movie = movies[index];
                                return Container(
                                  height: 100,
                                  color: Colors.red,
                                  child: Text(movie.title),
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: moviesWatched.length,
                              itemBuilder: (context, index) {
                                final movie = moviesWatched[index];
                                return Container(
                                  height: 100,
                                  color: Colors.red,
                                  child: Text(movie.title),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            // Container(height: 100, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class _WatchedStatsCard extends StatelessWidget {
  final String category;
  final int quantity;

  const _WatchedStatsCard({
    Key key,
    this.category,
    this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: Container(
            width: 150,
            color: Colors.tealAccent[700],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(category, overflow: TextOverflow.ellipsis),
                Text(quantity.toString(), overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
