import 'package:explovid/application/feedback/feedback_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  TextEditingController _feedbackController;

  @override
  void initState() {
    super.initState();
    _feedbackController = TextEditingController();
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<FeedbackBloc, FeedbackState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  duration: Duration(seconds: 1),
                ),
              );
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: const Text(
                          "Improve the app by giving feedback",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 16.0),
                        child: const Text(
                          "You can help improve the app, by simply writing what you would like to have in the app, or if something is not working correctly. Thank You 🙂",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      //const Text("Please check what type of feedback you are sending"),
                      CheckboxListTile(
                        activeColor: Colors.tealAccent[700],
                        value: state.isFeedbackTypeFeature,
                        title: const Text("A new feature (Something you would like to improve or have in the app)."),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          if (!state.isFeedbackTypeFeature) {
                            context.read<FeedbackBloc>().add(
                                  const FeedbackEvent.feedbackTypeChanged(),
                                );
                          }
                        },
                      ),
                      CheckboxListTile(
                        activeColor: Colors.tealAccent[700],
                        value: !state.isFeedbackTypeFeature,
                        title: const Text("A bug (Something doesn't work right)."),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          if (state.isFeedbackTypeFeature) {
                            context.read<FeedbackBloc>().add(
                                  const FeedbackEvent.feedbackTypeChanged(),
                                );
                          }
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                          child: TextField(
                            controller: _feedbackController,
                            maxLines: 80,
                            maxLength: 1000,
                            decoration: const InputDecoration(
                              hintText: 'Type your feedback here...',
                              counter: Offstage(),
                            ),
                            onChanged: (value) {
                              context.read<FeedbackBloc>().add(
                                    FeedbackEvent.feedbackMessageChanged(value),
                                  );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ElevatedButton(
                          onPressed: state.feedbackMessage.isEmpty
                              ? null
                              : () {
                                  FocusScope.of(context).unfocus();
                                  context.read<FeedbackBloc>().add(
                                        FeedbackEvent.submitPressed(),
                                      );
                                  setState(() {
                                    _feedbackController.clear();
                                  });
                                },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[700],
                          ),
                          child: const Text("Submit"),
                        ),
                      ),
                    ],
                  ),
                  if (state.isSubmitting)
                    Container(
                      color: Colors.grey[900].withOpacity(0.7),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
