import 'package:catalog_flutter_application/pages/home_page.dart';
import 'package:catalog_flutter_application/pages/login_page.dart';
import 'package:catalog_flutter_application/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        Routes.HOME: (context) => HomePage(),
        Routes.LOGINPAGE: (context) => LoginPage()
      },
    );
  }
}
