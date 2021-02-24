import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'userinfo_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserinfoPage(),
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Vx.red600,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
