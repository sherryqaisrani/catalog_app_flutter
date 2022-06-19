import 'package:catalog_flutter_application/pages/cart_page.dart';
import 'package:catalog_flutter_application/pages/home_page.dart';
import 'package:catalog_flutter_application/pages/login_page.dart';
import 'package:catalog_flutter_application/utils/routes.dart';
import 'package:catalog_flutter_application/widgets/themes.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CustomeThemes.lightTheme(context),
      darkTheme: CustomeThemes.dartTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        Routes.HOME: (context) => HomePage(),
        Routes.LOGINPAGE: (context) => LoginPage(),
        Routes.CARTROUTE: (context) => CartPage(),
      },
    );
  }
}
