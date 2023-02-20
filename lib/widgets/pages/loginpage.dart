import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:catalogue_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(32),
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
          ),

          AnimatedTextKit(repeatForever: true, animatedTexts: [
            TypewriterAnimatedText("Welcome",
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
          ]),

          // const SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
            ]),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          //   style: TextButton.styleFrom(minimumSize: const Size(100, 40)),
          //   child: const Text(
          //     "Login",
          //     style: TextStyle(fontSize: 18),
          //   ),
          // )

          InkWell(
            onTap: () async {
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              await Navigator.of(context).pushNamed(MyRoutes.homeRoute);
              setState(() {
                changeButton = false;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changeButton ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
              child: changeButton
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : const Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          )
        ]),
      ),
    );
  }
}
