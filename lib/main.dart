import 'package:explovid/application/search/actor_search/actor_details/actor_details_bloc.dart';
import 'package:explovid/application/search/actor_search/actor_search_bloc.dart';
import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/application/feedback/feedback_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/search/tv_show_search/tv_show_details/tv_show_details_bloc.dart';
import 'package:explovid/application/search/tv_show_search/tv_show_search_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_information_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/data/search_db/actor_db/actor_repository.dart';
import 'package:explovid/data/auth/auth_repository.dart';
import 'package:explovid/data/search_db/movie_db/movie_repository.dart';
import 'package:explovid/data/search_db/tv_show_db/tv_show_repository.dart';

import 'package:explovid/data/user_profile_db/current_user_profile_db/user_feedback_repository.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_profile_repository.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    //DeviceOrientation.landscapeRight,
    //DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthRepository _authRepository;
  MovieRepository _movieRepository;
  TvShowRepository _tvShowRepository;
  ActorRepository _actorRepository;
  UserProfileRepository _userProfileRepository;
  UserFeedbackRepository _userFeedbackRepository;
  http.Client client;

  @override
  void initState() {
    super.initState();
    client = http.Client();
    _authRepository = AuthRepository();
    _movieRepository = MovieRepository(client);
    _tvShowRepository = TvShowRepository(client);
    _actorRepository = ActorRepository(client);
    _userProfileRepository = UserProfileRepository();
    _userFeedbackRepository = UserFeedbackRepository();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCheckBloc(
            _authRepository,
          ),
        ),
        BlocProvider(
          create: (context) => SignInFormBloc(
            _authRepository,
          ),
        ),
        BlocProvider(
          create: (context) => MovieSearchBloc(
            _movieRepository,
          ),
        ),
        // BlocProvider(
        //   create: (context) => MovieDetailsBloc(
        //     _movieRepository,
        //   ),
        // ),
        BlocProvider(
          create: (context) => TvShowSearchBloc(
            _tvShowRepository,
          ),
        ),
        BlocProvider(
          create: (context) => TvShowDetailsBloc(
            _tvShowRepository,
          ),
        ),
        BlocProvider(
          create: (context) => ActorSearchBloc(
            _actorRepository,
          ),
        ),
        BlocProvider(
          create: (context) => ActorDetailsBloc(
            _actorRepository,
          ),
        ),
        BlocProvider(
          create: (context) => MovieListsUserProfileBloc(
            _userProfileRepository,
          )..add(
              MovieListsUserProfileEvent.loadMovieToListInitial(),
            ),
        ),
        BlocProvider(
          create: (context) => TvShowListsUserProfileBloc(
            _userProfileRepository,
          )..add(
              TvShowListsUserProfileEvent.loadTvShowToListInitial(),
            ),
        ),
        BlocProvider(
          create: (context) => FeedbackBloc(
            _userFeedbackRepository,
          ),
        ),
        BlocProvider(
          create: (context) => CurrentUserProfileInformationBloc(
            _userProfileRepository,
          )..add(
              CurrentUserProfileInformationEvent.loadCurrentUserProfilePressed(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Explovid',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.blueGrey[900],
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        home: SplashPage(),
      ),
    );
  }
}
