import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/presentation/pages/home_page/home_page.dart';
import 'package:explovid/presentation/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  duration: Duration(seconds: 1),
                ),
              );
            }
            if (state.isAuthStateChanged) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
              //Add email verification? Show snackbar, asking to verify email, so that they can log in?
              //Send back to WelcomeScreen, or send back to a temp screen where it waits for email verification?
              context.read<AuthCheckBloc>().add(
                    const AuthCheckEvent.authCheckRequested(),
                  );
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 30),
                      child: Image.asset(
                        "assets/logo.PNG",
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                    ),
                    Text("Register for Free so that you can find your friends"),
                    state.isSubmitting ? LinearProgressIndicator(value: null) : Text(""),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextFormField(
                        style: TextStyle(color: Colors.blue),
                        decoration: const InputDecoration(
                          focusColor: Colors.yellow,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
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
                        autocorrect: false,
                        style: TextStyle(color: Colors.blue),
                        decoration: const InputDecoration(
                          focusColor: Colors.yellow,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.green,
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
                            color: Colors.green,
                          ),
                          labelText: 'Password (at least 6 characters)',
                        ),
                        onChanged: (value) => context.read<SignInFormBloc>().add(
                              SignInFormEvent.passwordChanged(value),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 15),
                      child: TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.green,
                          ),
                          labelText: 'Confirm your password...',
                        ),
                        onChanged: (value) => context.read<SignInFormBloc>().add(
                              SignInFormEvent.passwordConfirmationChanged(value),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                SignInFormEvent.registerPressed(),
                              );
                        },
                        child: Text("Register"),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: MediaQuery.of(context).size.width * 0.1,
                      endIndent: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                4.0,
                                4.0,
                              ),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Already have an account?"),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sign in "),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "here.",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Terms of Use"),
                          Text("Privacy"),
                        ],
                      ),
                    )
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
