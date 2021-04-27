import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isAgreed = false;
  final _debouncer = Debouncer(milliseconds: 500);

  Widget getUsernameStatusIcon(SignInFormState state) {
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

  void _launchWebPage(BuildContext context) async {
    try {
      if (await canLaunch("https://www.explovid.com/")) {
        await launch("https://www.explovid.com/");
      } else {
        throw 'Could not launch web page';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  duration: Duration(seconds: 1),
                ),
              );
            }
            if (state.isAuthStateChanged) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SplashPage(),
                ),
              );
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                      child: Text(
                        "Explovid",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.tealAccent[400],
                        ),
                      ),
                    ),
                    Text("Register for free so that you can find your friends"),
                    state.isSubmitting ? LinearProgressIndicator(value: null) : Text(""),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.tealAccent,
                          ),
                          labelText: 'Full Name',
                        ),
                        onChanged: (value) => context.read<SignInFormBloc>().add(
                              SignInFormEvent.fullNameChanged(value),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextFormField(
                        autocorrect: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.tealAccent,
                          ),
                          labelText: 'Email',
                        ),
                        onChanged: (value) => context.read<SignInFormBloc>().add(
                              SignInFormEvent.emailChanged(value),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.tealAccent,
                          ),
                          labelText: 'Password (at least 6 characters)',
                        ),
                        onChanged: (value) => context.read<SignInFormBloc>().add(
                              SignInFormEvent.passwordChanged(value),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ListTile(
                        leading: Checkbox(
                          activeColor: Colors.tealAccent[700],
                          value: isAgreed,
                          onChanged: (bool value) {
                            setState(() {
                              isAgreed = value;
                            });
                          },
                        ),
                        title: RichText(
                          text: TextSpan(
                            text: "I confirm that I am over 18 and I agree to the ",
                            style: TextStyle(color: Colors.grey[300]),
                            children: [
                              TextSpan(
                                text: "Terms of Use",
                                style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[50]),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchWebPage(context);
                                  },
                              ),
                              TextSpan(text: " and ", style: TextStyle()),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[50]),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchWebPage(context);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                      child: ElevatedButton(
                        style: kNotWatchedButton,
                        onPressed: () {
                          !isAgreed
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("You need to check the checkbox before continuing"),
                                    duration: Duration(seconds: 1),
                                  ),
                                )
                              : context.read<SignInFormBloc>().add(
                                    SignInFormEvent.registerPressed(),
                                  );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Register"),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                      indent: MediaQuery.of(context).size.width * 0.1,
                      endIndent: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                      child: ElevatedButton(
                        style: kAlreadyHaveAccountButton,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Already have an account?",
                              style: TextStyle(color: Colors.grey[300]),
                              children: [
                                TextSpan(
                                  text: "\n Sign in Here.",
                                  style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[50]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
