import 'package:catalog_flutter_application/pages/home_page.dart';
import 'package:catalog_flutter_application/pages/login_page.dart';
import 'package:flutter/material.dart';

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
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: ('/'),
      routes: {
        '/': (context) => LoginPage(),
        'loginPage': (context) => LoginPage()
      },
    );
  }
}
