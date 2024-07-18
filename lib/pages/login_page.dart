import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navigation.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login () {
    // authenctication 

    // home page
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context) => const BottomNavigation(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var widget;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Image.asset('asset/logo.png', height: 100, width: 100,), // placeholder for icon
            
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
              onTap: login,
            ),

            const SizedBox(height: 20),

            // register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'No account?', 
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Register now', 
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
    );
  }
}