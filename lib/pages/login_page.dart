import 'package:catalog_flutter_application/pages/home_page.dart';
import 'package:catalog_flutter_application/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isButton = false;
  final _validationKey = GlobalKey<FormState>();

  void moveToHome(BuildContext context) async {
    if (_validationKey.currentState!.validate()) {
      setState(() {
        isButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, Routes.HOME);
      setState(() {
        isButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Form(
              key: _validationKey,
              child: Column(
                children: [
                  Container(
                    child: const Image(
                      image: AssetImage('assets/images/loginpage.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email Cannot be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Email',
                              label: const Text('Email'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password Cannot be empty';
                            } else if (value.length < 6) {
                              return 'Password length 6';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Enter Password',
                              label: const Text('Password'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 50,
                      width: isButton ? 50 : 150,
                      child: isButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(isButton ? 50 : 8),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
