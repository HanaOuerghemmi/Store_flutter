import 'package:books_store/UI/screens/auth/widget_auth%20/footer_auth.dart';
import 'package:books_store/UI/screens/auth/widget_auth%20/header_auth.dart';
import 'package:books_store/constants/color_app.dart';
import 'package:books_store/constants/paddings.dart';
import 'package:flutter/material.dart';

import '../widget_auth /my_button.dart';
import '../widget_auth /my_textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  // void signUserIn() async {
  //   // show loading circle
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     },
  //   );

  //   // try sign in
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     // pop the loading circle
  //     Navigator.pop(context);
  //   } on FirebaseAuthException catch (e) {
  //     // pop the loading circle
  //     Navigator.pop(context);
  //     // show error message
  //     showErrorMessage(e.code);
  //   }
  // }

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderAuth(
                    icon: Icons.lock,
                    text: "Welcome back you\'ve been missed!",
                  ),

                  mediumPaddingVertical,

                  // email textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  smallPaddingVertical,

                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  smallPaddingVertical,

                  // forgot password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: lightBrown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  mediumPaddingVertical,

                  // sign in button
                  mediumPaddingVertical,

                  // sign in button
                  MyButton(
                    text: "Sign Up",
                    onTap: () {},
                  ),

                  largePaddingVertical,

                  FooterAuth(
                    text: 'Not a member?',
                    textFlatButton: 'Register now',
                    onTap: widget.onTap,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
