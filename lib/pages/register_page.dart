import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // You can add more complex email validation logic here
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/logo.png',
                height: 100,
                width: 100,
              ), // placeholder for icon

              // message
              const Text(
                'Create an Account',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orangeAccent,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // email
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false,
                validator: _validateEmail,
              ),

              const SizedBox(height: 15),

              // password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsecureText: true,
                validator: _validatePassword,
              ),

              const SizedBox(height: 15),

              // confirm password
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obsecureText: true,
                validator: _validateConfirmPassword,
              ),

              const SizedBox(height: 25),

              // sign-up button
              MyButton(
                text: 'Sign Up',
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Sign up succesfully'),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('Please sign in with your new account'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Confirm'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSigin()));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),

              const SizedBox(height: 20),

              // login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
