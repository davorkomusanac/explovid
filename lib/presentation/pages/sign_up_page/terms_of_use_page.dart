import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms Of Use"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text("TERMS OF USE GO HERE"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
