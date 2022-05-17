import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeThemes {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData dartTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        textTheme: Theme.of(context).textTheme,
      );
}
