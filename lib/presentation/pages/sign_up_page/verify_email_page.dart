import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {
                      context.read<AuthCheckBloc>().add(
                            AuthCheckEvent.signOutPressed(),
                          );
                      Navigator.of(context, rootNavigator: true).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SplashPage(),
                        ),
                      );
                    },
                  ),
                  Text(
                    "Go Back",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Material(
                elevation: 10,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Container(
                    width: 300,
                    color: Colors.tealAccent[700],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                          child: Text(
                            "Please verify your email before continuing. A link has been sent to your email.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: ElevatedButton(
                style: kNotWatchedButton,
                onPressed: () async {
                  await FirebaseAuth.instance.currentUser.reload();
                  final isUserVerified = FirebaseAuth.instance.currentUser.emailVerified;
                  if (isUserVerified) {
                    Navigator.of(context, rootNavigator: true).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SplashPage(),
                      ),
                    );
                  }
                },
                child: Text("I completed the verification."),
              ),
            ),
            ElevatedButton(
              style: kWatchedButton,
              onPressed: () async {
                await FirebaseAuth.instance.currentUser.sendEmailVerification();
              },
              child: Text("Send the verification link to email again."),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
