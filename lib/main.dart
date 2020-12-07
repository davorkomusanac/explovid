import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/domain/auth/auth_repository.dart';
import 'package:explovid/presentation/pages/home_page/home_page.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/pages/welcome_page/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authRepository = AuthRepository();
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
      ],
      child: MaterialApp(
        title: 'Explovid',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color.fromRGBO(255, 241, 238, 1),
          //primaryColor: Colors.redAccent[700],
          //accentColor: Colors.amber[800],
          inputDecorationTheme: InputDecorationTheme(
            //focusedBorder: ,
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
