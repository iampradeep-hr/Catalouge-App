import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            padding: EdgeInsets.all(32),
            child: Card(
              child: Image.asset("assets/images/login.png"),
            )),
        const Text(
          "Login",
          style: TextStyle(
              fontSize: 30,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
