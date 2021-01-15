import 'package:explovid/application/actor_search/actor_details/actor_details_bloc.dart';
import 'package:explovid/application/actor_search/actor_search_bloc.dart';
import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/application/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/application/tv_show_search/tv_show_details/tv_show_details_bloc.dart';
import 'package:explovid/application/tv_show_search/tv_show_search_bloc.dart';
import 'package:explovid/domain/actor_db/actor_repository.dart';
import 'package:explovid/domain/auth/auth_repository.dart';
import 'package:explovid/domain/movie_db/movie_repository.dart';
import 'package:explovid/domain/tv_show_db/tv_show_repository.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
  http.Client client;

  @override
  void initState() {
    super.initState();
    client = http.Client();
    _authRepository = AuthRepository();
    _movieRepository = MovieRepository(client);
    _tvShowRepository = TvShowRepository(client);
    _actorRepository = ActorRepository(client);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCheckBloc(
            _authRepository,
          )..add(
              AuthCheckEvent.authCheckRequested(),
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
        BlocProvider(
          create: (context) => MovieDetailsBloc(
            _movieRepository,
          ),
        ),
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
      ],
      child: MaterialApp(
        title: 'Explovid',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          //scaffoldBackgroundColor: Color.fromRGBO(20, 24, 28, 1),
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
