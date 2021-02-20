import 'dart:async';

import 'package:flutter/material.dart';

String convertToReleaseYear(String text) {
  String returnString = text;
  if (text.isEmpty) return "Date unknown";
  if (text != 'Release date unknown' && text != 'Air Date unknown' && text.isNotEmpty) {
    var time = DateTime.parse(text);
    returnString = time.year.toString();
  }
  return returnString;
}

String convertReleaseDate(String text) {
  String returnString = text;
  if (text.isEmpty) return "Release date unknown";
  if (text != 'Release date unknown' && text != 'Air Date unknown' && text.isNotEmpty) {
    var time = DateTime.parse(text);
    String month = "";
    switch (time.month) {
      case (1):
        month = "Jan";
        break;
      case (2):
        month = "Feb";
        break;
      case (3):
        month = "Mar";
        break;
      case (4):
        month = "Apr";
        break;
      case (5):
        month = "May";
        break;
      case (6):
        month = "June";
        break;
      case (7):
        month = "Jul";
        break;
      case (8):
        month = "Aug";
        break;
      case (9):
        month = "Sep";
        break;
      case (10):
        month = "Oct";
        break;
      case (11):
        month = "Nov";
        break;
      case (12):
        month = "Dec";
        break;
      default:
    }
    returnString = month + " " + time.day.toString() + ", " + time.year.toString();
  }
  return returnString;
}

String convertBirthDeathDate(String text) {
  String returnString = text;
  if (text.isEmpty) return "No information";
  if (text != 'Release date unknown' && text != 'Air Date unknown' && text.isNotEmpty) {
    var time = DateTime.parse(text);
    String month = "";
    switch (time.month) {
      case (1):
        month = "Jan";
        break;
      case (2):
        month = "Feb";
        break;
      case (3):
        month = "Mar";
        break;
      case (4):
        month = "Apr";
        break;
      case (5):
        month = "May";
        break;
      case (6):
        month = "June";
        break;
      case (7):
        month = "Jul";
        break;
      case (8):
        month = "Aug";
        break;
      case (9):
        month = "Sep";
        break;
      case (10):
        month = "Oct";
        break;
      case (11):
        month = "Nov";
        break;
      case (12):
        month = "Dec";
        break;
      default:
    }
    returnString = month + " " + time.day.toString() + ", " + time.year.toString();
  }
  return returnString;
}

String convertRuntime(int runtimeInMin) {
  if (runtimeInMin < 1) {
    return "Unknown length";
  }
  int hour = runtimeInMin ~/ 60;
  int minutes = runtimeInMin % 60;
  if (hour > 0) {
    return hour.toString() + "h " + minutes.toString() + "m";
  } else {
    return minutes.toString() + "m";
  }
}

//Debouncer to stop making unnecessary network calls
class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class BuildLoaderNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class BuildSearchProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class BuildSearchErrorMessage extends StatelessWidget {
  final String errorMessage;

  BuildSearchErrorMessage(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "☹",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Try again.",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildPosterImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  BuildPosterImage({this.imagePath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: height,
          width: width,
          child: Image.network(
            "https://image.tmdb.org/t/p/w185/$imagePath",
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: height,
                color: Colors.green,
                width: width,
                child: Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                ),
              );
            },
            errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
              return Container(
                height: height,
                width: width,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('😢'),
                    const SizedBox(height: 5),
                    const Text(
                      'No image available',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

var kWatchedButton = ElevatedButton.styleFrom(
  primary: Colors.blueGrey[800],
  onPrimary: Colors.tealAccent[700],
  side: BorderSide(
    width: 3,
    color: Colors.tealAccent[700],
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

var kNotWatchedButton = ElevatedButton.styleFrom(
  primary: Colors.tealAccent[700],
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);
