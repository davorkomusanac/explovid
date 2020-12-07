import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ),
                  );
                  context.read<AuthCheckBloc>().add(
                        AuthCheckEvent.signOutPressed(),
                      );
                },
                child: Text("Sign Out"),
              ),
            );
          },
        ),
      ),
    );
  }
}
