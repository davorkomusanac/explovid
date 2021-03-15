import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.clear,
                        size: 32,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.check,
                          size: 32,
                        ),
                        onPressed: () {
                          //TODO Update profile with it.
                        }),
                  ],
                ),
              ),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
