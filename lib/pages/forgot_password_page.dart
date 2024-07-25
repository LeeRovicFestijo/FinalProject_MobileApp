import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/text_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  void sendPasswordResetEmail(BuildContext context) {
    String email = emailController.text.trim();
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password reset email sent')),
    );

    Navigator.pop(context); // Go back to the login page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Forgot Password'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your email to reset your password',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false,
              ),
              const SizedBox(height: 20),
              MyButton(
                text: 'Send Reset Email',
                onTap: () => sendPasswordResetEmail(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
