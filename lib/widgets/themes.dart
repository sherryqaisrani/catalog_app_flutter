import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomeThemes {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        canvasColor: creemcolor,
        buttonColor: darkbluishColor,
        accentColor: darkbluishColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData dartTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        buttonColor: lightBluishColor,
        accentColor: Colors.white,
        cardColor: Colors.black,
        canvasColor: darkCreemColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(headline6: const TextStyle(color: Colors.white)),
      );

  static Color creemcolor = const Color(0xfff5f5f5);
  static Color darkbluishColor = const Color(0xff403b58);
  static Color darkCreemColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo600;
}
