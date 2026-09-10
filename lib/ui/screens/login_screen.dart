import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Get Started With'),
            TextFormField(),
            TextFormField(),
            FilledButton(
              onPressed: () {},
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            TextButton(onPressed: () {}, child: Text('Forgot Password?')),
            RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(color: Colors.black),
                children: [TextSpan(text: 'Sign up')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
