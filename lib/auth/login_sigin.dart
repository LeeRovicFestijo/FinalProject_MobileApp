import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class LoginSigin extends StatefulWidget {
  const LoginSigin({super.key});

  @override
  State<LoginSigin> createState() => _LoginSiginState();
}

class _LoginSiginState extends State<LoginSigin> {
  bool showLoginPage = true;

  void togglePages () {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}