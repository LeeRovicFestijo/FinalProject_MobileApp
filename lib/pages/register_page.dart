import 'package:flutter/material.dart';
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
            
            // messsage
            const Text(
              'Create an Account', 
              style: TextStyle(
                fontSize: 30,
                color: Colors.orangeAccent,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold
                ),
              ),
            
            const SizedBox(height: 20),
              
            // email
            MyTextField(
              controller: emailController, 
              hintText: 'Email', 
              obsecureText: false
            ),

            const SizedBox(height: 15),
              
            // password
            MyTextField(
              controller: passwordController, 
              hintText: 'Password', 
              obsecureText: true,
            ),

            const SizedBox(height: 15),

            // confirm password
            MyTextField(
              controller: confirmPasswordController, 
              hintText: 'Confirm Password', 
              obsecureText: true,
            ),

            const SizedBox(height: 25),
            
            // sigin button
            MyButton(
              text: 'Sign Up', 
              onTap: () {},
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
                const SizedBox(width: 4,),
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
    );
  }
}