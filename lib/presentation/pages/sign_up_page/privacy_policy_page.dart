import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text("Privacy Policy GOES HERE"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
