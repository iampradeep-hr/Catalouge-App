import 'package:catalogue_app/widgets/pages/homepage.dart';
import 'package:catalogue_app/widgets/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  double days = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routes: {"/": (context) => LoginPage(),
       "/home": (context) => HomePage()
       },
    );
  }
}
