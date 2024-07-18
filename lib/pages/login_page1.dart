import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_field.dart';

class LoginPage1 extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage1({super.key, required this.onTap});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var widget;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Image.asset('asset/Cookie.png', height: 100, width: 100,), // placeholder for icon
            
            // messsage
            const Text(
              'chowbite', 
              style: TextStyle(
                fontSize: 40,
                color: Colors.orangeAccent),
              ),
            
            const SizedBox(height: 20),
              
            // email
            MyTextField(
              controller: emailController, 
              hintText: 'Email', 
              obsecureText: false
            ),

            const SizedBox(height: 15),
              
            // // password
            MyTextField(
              controller: passwordController, 
              hintText: 'Password', 
              obsecureText: true,
            ),

            const SizedBox(height: 25),
            // sigin button
            MyButton(
              text: 'Sign In', 
              onTap: () {},
            ),

            const SizedBox(height: 20),

            // register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'No account?', 
                  style: TextStyle(
                    color: Colors.black),),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}