import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
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
                Text("Register so that you can find your friends"),
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    style: TextStyle(color: Colors.blue),
                    decoration: const InputDecoration(
                      focusColor: Colors.yellow,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.green,
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.green,
                      ),
                      labelText: 'Confirm your password...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
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
        ),
      ),
    );
  }
}
