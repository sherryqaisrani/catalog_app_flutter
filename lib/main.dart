import 'package:catalog_flutter_application/pages/home_page.dart';
import 'package:catalog_flutter_application/pages/login_page.dart';
import 'package:catalog_flutter_application/utils/routes.dart';
import 'package:catalog_flutter_application/widgets/Themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomeThemes.lightTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        Routes.HOME: (context) => HomePage(),
        Routes.LOGINPAGE: (context) => LoginPage()
      },
    );
  }
}
