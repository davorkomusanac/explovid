import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateUsernamePage extends StatefulWidget {
  @override
  _CreateUsernamePageState createState() => _CreateUsernamePageState();
}

class _CreateUsernamePageState extends State<CreateUsernamePage> {
  final _debouncer = Debouncer(milliseconds: 500);
  bool isLoading = false;

  Widget getUsernameStatusIcon(SignInFormState state) {
    //Todo update to not let user click register until checkmark is there
    if (state.isUserTypingUsername) {
      return Icon(null);
    } else {
      return state.isUsernameAvailable
          ? Icon(
              Icons.check,
              color: Colors.tealAccent,
            )
          : Icon(
              Icons.clear,
              color: Colors.red,
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
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
        title: Text("Choose username"),
      ),
      body: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          if (state.usernameErrorMessage == "Success") {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SplashPage(),
              ),
            );
          }
          if (state.usernameErrorMessage != "Success" &&
              state.usernameErrorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.usernameErrorMessage),
                duration: Duration(seconds: 3),
              ),
            );
            setState(() {
              isLoading = false;
            });
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 125),
                child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp("[0-9a-zA-Z]"),
                      ),
                      LengthLimitingTextInputFormatter(30),
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.tealAccent,
                      ),
                      labelText: 'Username',
                      suffixIcon: getUsernameStatusIcon(state),
                    ),
                    onChanged: (value) {
                      context.read<SignInFormBloc>().add(
                            SignInFormEvent.usernameChanged(),
                          );
                      _debouncer.run(() {
                        context.read<SignInFormBloc>().add(
                              SignInFormEvent.usernameBeingChecked(value),
                            );
                      });
                    }),
              ),
              if (isLoading)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: LinearProgressIndicator(),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 80, top: 80),
                child: ElevatedButton(
                  style: kNotWatchedButton,
                  onPressed: () async {
                    if (state.isUsernameAvailable) {
                      setState(() {
                        isLoading = true;
                      });
                      context.read<SignInFormBloc>().add(
                            SignInFormEvent.registerUsernamePressed(),
                          );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Invalid username, try a different one'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: Text("Create username"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
