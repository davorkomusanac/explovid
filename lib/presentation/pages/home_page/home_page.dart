import 'package:community_material_icon/community_material_icon.dart';
import 'package:explovid/application/search/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/search/user_search/user_search_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_information_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_watchlist_watched/movie_lists/other_user_profile_movie_lists_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_watchlist_watched/tv_show_lists/other_user_profile_tv_show_lists_bloc.dart';
import 'package:explovid/data/search_db/movie_db/movie_repository.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:explovid/presentation/pages/feedback_page/feedback_page.dart';
import 'package:explovid/presentation/pages/home_page/four.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/profile_page/profile_page.dart';
import 'package:explovid/presentation/pages/search_page/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  http.Client client;
  MovieRepository _movieRepository;
  UserActionsRepository _userActionsRepository;
  OtherUserProfileRepository _otherUserProfileRepository;

  final List<GlobalKey<NavigatorState>> tabNavKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  CupertinoTabController _tabController;
  //CurrentIndex needs to be equal to initialIndex so that an exception is not thrown
  int currentIndex = 4;

  @override
  void initState() {
    super.initState();
    //Put the Search page as the starting one? For the time being until the app is populated
    _tabController = CupertinoTabController(initialIndex: 4);
    client = http.Client();
    _movieRepository = MovieRepository(client);
    _userActionsRepository = UserActionsRepository();
    _otherUserProfileRepository = OtherUserProfileRepository();
    //Calling events here, since if they are called with BlocProvider initialization they don't get updated when the user logs out
    context.read<MovieListsUserProfileBloc>().add(
          MovieListsUserProfileEvent.loadMovieToListInitial(),
        );
    context.read<TvShowListsUserProfileBloc>().add(
          TvShowListsUserProfileEvent.loadTvShowToListInitial(),
        );
    context.read<CurrentUserProfileInformationBloc>().add(CurrentUserProfileInformationEvent.loadCurrentUserProfilePressed());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !await tabNavKeys[_tabController.index].currentState.maybePop();
      },
      child: CupertinoTabScaffold(
        controller: _tabController,
        tabBar: CupertinoTabBar(
          activeColor: Colors.tealAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.help)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
          onTap: (index) {
            if (currentIndex == index) {
              switch (index) {
                case 0:
                  tabNavKeys[0].currentState.popUntil((route) => route.isFirst);
                  break;
                case 1:
                  tabNavKeys[1].currentState.popUntil((route) => route.isFirst);
                  break;
                case 2:
                  BlocProvider.of<MovieSearchBloc>(context, listen: false).add(MovieSearchEvent.searchPageDoublePressed());
                  tabNavKeys[2].currentState.popUntil((route) => route.isFirst);
                  break;
                case 3:
                  tabNavKeys[3].currentState.popUntil((route) => route.isFirst);
                  break;
                case 4:
                  tabNavKeys[4].currentState.popUntil((route) => route.isFirst);
                  break;
                default:
              }
            }
            currentIndex = index;
          },
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[0],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: OnePage(),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[1],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: FeedbackPage(),
                  );
                },
              );
            case 2:
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => UserSearchBloc(
                      _userActionsRepository,
                    ),
                  ),
                  BlocProvider(
                    create: (context) => MovieDetailsBloc(
                      _movieRepository,
                    ),
                  ),
                  BlocProvider(
                    create: (context) => OtherUserProfileMovieListsBloc(
                      _otherUserProfileRepository,
                    ),
                  ),
                  BlocProvider(
                    create: (context) => OtherUserProfileTvShowListsBloc(
                      _otherUserProfileRepository,
                    ),
                  ),
                ],
                child: CupertinoTabView(
                  navigatorKey: tabNavKeys[2],
                  builder: (context) {
                    return CupertinoPageScaffold(
                      child: SearchPage(),
                    );
                  },
                ),
              );
            case 3:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[3],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: FourPage(),
                  );
                },
              );
            case 4:
              return BlocProvider(
                create: (context) => MovieDetailsBloc(
                  _movieRepository,
                ),
                child: CupertinoTabView(
                  navigatorKey: tabNavKeys[4],
                  builder: (context) {
                    return CupertinoPageScaffold(
                      child: ProfilePage(),
                    );
                  },
                ),
              );
            default:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[0],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: OnePage(),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
