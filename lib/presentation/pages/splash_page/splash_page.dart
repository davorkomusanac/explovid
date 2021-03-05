import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/presentation/pages/home_page/home_page.dart';
import 'package:explovid/presentation/pages/sign_up_page/verify_email_page.dart';
import 'package:explovid/presentation/pages/welcome_page/create_username_page.dart';
import 'package:explovid/presentation/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthCheckBloc>().add(
          const AuthCheckEvent.authCheckRequested(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          usernameNotGiven: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => CreateUsernamePage(),
              ),
            );
          },
          emailNotVerified: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => VerifyEmailPage(),
              ),
            );
          },
          unauthenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    "assets/logo.PNG",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: const Text("Loading..."),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
