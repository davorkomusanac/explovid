import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/delete_account/delete_account_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/edit_profile/edit_profile_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/application/feedback/feedback_bloc.dart';
import 'package:explovid/application/search/actor_search/actor_search_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/search/tv_show_search/tv_show_search_bloc.dart';
import 'package:explovid/application/search/user_search/user_search_bloc.dart';
import 'package:explovid/application/user_interactions/notifications/notifications_bloc.dart';
import 'package:explovid/application/user_post/global_news_feed/global_news_feed_bloc.dart';
import 'package:explovid/application/user_post/user_news_feed/user_news_feed_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_information_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/tv_show_lists/tv_show_lists_user_profile_bloc.dart';
import 'package:explovid/data/auth/auth_repository.dart';
import 'package:explovid/data/search_db/actor_db/actor_repository.dart';
import 'package:explovid/data/search_db/movie_db/movie_repository.dart';
import 'package:explovid/data/search_db/tv_show_db/tv_show_repository.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_feedback_repository.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_profile_repository.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
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
  UserProfileRepository _userProfileRepository;
  UserFeedbackRepository _userFeedbackRepository;
  MovieRepository _movieRepository;
  TvShowRepository _tvShowRepository;
  ActorRepository _actorRepository;
  UserActionsRepository _userActionsRepository;
  http.Client client;

  @override
  void initState() {
    super.initState();
    client = http.Client();
    _authRepository = AuthRepository();
    _userProfileRepository = UserProfileRepository();
    _userFeedbackRepository = UserFeedbackRepository();
    _movieRepository = MovieRepository(client);
    _tvShowRepository = TvShowRepository(client);
    _actorRepository = ActorRepository(client);
    _userActionsRepository = UserActionsRepository();
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

        ///Search
        BlocProvider(
          create: (context) => MovieSearchBloc(
            _movieRepository,
          ),
        ),
        BlocProvider(
          create: (context) => TvShowSearchBloc(
            _tvShowRepository,
          ),
        ),
        BlocProvider(
          create: (context) => ActorSearchBloc(
            _actorRepository,
          ),
        ),
        BlocProvider(
          create: (context) => UserSearchBloc(
            _userActionsRepository,
          ),
        ),

        ///Current user info blocs
        BlocProvider(
            create: (context) => MovieListsUserProfileBloc(
                  _userProfileRepository,
                )),
        BlocProvider(
            create: (context) => TvShowListsUserProfileBloc(
                  _userProfileRepository,
                )),
        BlocProvider(
          create: (context) => FeedbackBloc(
            _userFeedbackRepository,
          ),
        ),
        BlocProvider(
          create: (context) => CurrentUserProfileInformationBloc(
            _userProfileRepository,
          ),
        ),
        BlocProvider(
          create: (context) => DeleteAccountBloc(
            _authRepository,
          ),
        ),
        BlocProvider(
          create: (context) => EditProfileBloc(
            _authRepository,
          ),
        ),
        BlocProvider(
          create: (context) => NotificationsBloc(
            _userActionsRepository,
          ),
        ),

        ///Global news feed
        BlocProvider(
          create: (context) => GlobalNewsFeedBloc(
            _userActionsRepository,
          ),
        ),

        ///User News feed
        BlocProvider(
          create: (context) => UserNewsFeedBloc(
            _userActionsRepository,
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
