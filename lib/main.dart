import 'package:catalogue_app/widgets/pages/homepage.dart';
import 'package:catalogue_app/widgets/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalogue_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  double days = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            fontFamily: GoogleFonts.lexend().fontFamily),
        darkTheme: ThemeData.dark(),
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute:(context) => LoginPage()
        });
  }
}
