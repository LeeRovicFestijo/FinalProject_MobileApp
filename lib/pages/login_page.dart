import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Image.asset('asset/Cookie.png'),
          // message
          const Text(
            'chowbite', 
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepOrangeAccent),
            ),
          
          const SizedBox(height: 25),
          // email text field
          MyTextField(
            controller: emailController, 
            hintText: 'Email', 
            obsecureText: false
          ),

          const SizedBox(height: 10),

          // password text field
          MyTextField(
            controller: passwordController, 
            hintText: 'Password', 
            obsecureText: true
          ),

          const SizedBox(height: 10),

          // sign in button
          MyButton(
            text: 'Sign In', 
            onTap: () {},
          ),
          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not a member?",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}