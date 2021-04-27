import 'package:flutter/material.dart';

class CreditsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Credits"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              "assets/tmdb_logo.png",
              width: MediaQuery.of(context).size.width * 0.15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("This product uses the TMDb API but is not endorsed or certified by TMDb."),
          ),
        ],
      ),
    );
  }
}
