import 'package:flutter/material.dart';
import 'package:login_ui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              // Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Welcome back, you've been missed
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController, 
                hintText: 'Username', 
                obscuretext: false,
              ),

              const SizedBox(height: 10),

              // password text field
              MyTextField(
                controller: passwordController, 
                hintText: 'Password', 
                obscuretext: true,
              )
              // forgot password?
              // sign in button
              // or continue with
              // social signin buttons
              // not a member? register now
            ],
          ),
          ) 
          ),
    );
  }
}