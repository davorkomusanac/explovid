import 'package:explovid/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          if (state.snackBarMessageForPasswordReset.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.snackBarMessageForPasswordReset),
                duration: Duration(seconds: 3),
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  autocorrect: false,
                  decoration: const InputDecoration(
                      counter: Offstage(),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.tealAccent,
                      ),
                      labelText: 'Email',
                      hintText: 'Type your email here'),
                ),
              ),
              Spacer(),
              if (state.isSubmitting)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: kNotWatchedButton,
                  onPressed: () {
                    context.read<SignInFormBloc>().add(
                          SignInFormEvent.resetPasswordPressed(_controller.text),
                        );
                  },
                  child: Text("Request Password Reset"),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
