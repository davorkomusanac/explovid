import 'package:explovid/application/auth/auth_check/auth_check_bloc.dart';
import 'package:explovid/application/auth/sign_in_form/delete_account/delete_account_bloc.dart';
import 'package:explovid/constants.dart';
import 'package:explovid/presentation/pages/profile_page/current_user_page/credits_page.dart';
import 'package:explovid/presentation/pages/splash_page/splash_page.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class UserSettingsPage extends StatefulWidget {
  @override
  _UserSettingsPageState createState() => _UserSettingsPageState();
}

class _UserSettingsPageState extends State<UserSettingsPage> {
  @override
  void initState() {
    super.initState();

    context.read<DeleteAccountBloc>().add(
          DeleteAccountEvent.checkAuthProvider(),
        );
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
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: BlocConsumer<DeleteAccountBloc, DeleteAccountState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty && state.errorMessage != kSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                duration: Duration(seconds: 2),
              ),
            );
          }
          if (state.snackBarPasswordResetResult.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.snackBarPasswordResetResult),
                duration: Duration(seconds: 2),
              ),
            );
          }
          if (state.errorMessage == kSuccess) {
            Navigator.of(context, rootNavigator: true).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SplashPage(),
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  _launchWebPage(context);
                },
                style: TextButton.styleFrom(primary: Colors.tealAccent[700]),
                child: Text("Privacy Policy"),
              ),
              TextButton(
                onPressed: () {
                  _launchWebPage(context);
                },
                style: TextButton.styleFrom(primary: Colors.tealAccent[700]),
                child: Text("Terms of Use"),
              ),
              if (state.isRegisteredWithEmailAndPassword)
                TextButton(
                  onPressed: () {
                    context.read<DeleteAccountBloc>().add(
                          DeleteAccountEvent.resetPasswordPressed(),
                        );
                  },
                  style: TextButton.styleFrom(primary: Colors.tealAccent[700]),
                  child: Text("Reset Password"),
                ),
              TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (context) => CreditsPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(primary: Colors.tealAccent[700]),
                child: Text("Credits"),
              ),
              if (state.isSubmitting) LinearProgressIndicator(),
              Spacer(),
              Center(
                child: ElevatedButton(
                  style: kNotWatchedButton,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return LogOutDialog();
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text("Log Out"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  style: kWatchedButton,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return DeleteAccountDialog(state.isRegisteredWithEmailAndPassword);
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Delete Account"),
                  ),
                ),
              ),
              Spacer(flex: 6),
            ],
          );
        },
      ),
    );
  }
}

class LogOutDialog extends StatefulWidget {
  @override
  _LogOutDialogState createState() => _LogOutDialogState();
}

class _LogOutDialogState extends State<LogOutDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm if you want to log out of your account"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
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
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}

class DeleteAccountDialog extends StatefulWidget {
  final bool isRegisteredWithEmailAndPassword;

  DeleteAccountDialog(this.isRegisteredWithEmailAndPassword);

  @override
  _DeleteAccountDialogState createState() => _DeleteAccountDialogState();
}

class _DeleteAccountDialogState extends State<DeleteAccountDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure you want to delete your account? This action is irreversible."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            if (widget.isRegisteredWithEmailAndPassword) {
              showDialog(
                context: context,
                builder: (context) {
                  return ConfirmPasswordDialog();
                },
              );
            } else {
              context.read<DeleteAccountBloc>().add(
                    DeleteAccountEvent.deleteAccountPressed(),
                  );
              Navigator.of(context, rootNavigator: true).pop();
            }
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}

class ConfirmPasswordDialog extends StatefulWidget {
  @override
  _ConfirmPasswordDialogState createState() => _ConfirmPasswordDialogState();
}

class _ConfirmPasswordDialogState extends State<ConfirmPasswordDialog> {
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
    return AlertDialog(
      title: Text("Confirm your password if you wish to delete your account"),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextField(
          obscureText: true,
          controller: _controller,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: 'Type your password here...',
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            context.read<DeleteAccountBloc>().add(
                  DeleteAccountEvent.deleteAccountPressed(password: _controller.text),
                );
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}
