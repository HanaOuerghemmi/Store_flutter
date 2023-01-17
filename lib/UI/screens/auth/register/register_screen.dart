import 'package:books_store/UI/screens/auth/widget_auth%20/footer_auth.dart';
import 'package:books_store/UI/screens/auth/widget_auth%20/header_auth.dart';
import 'package:books_store/constants/color_app.dart';
import 'package:books_store/constants/paddings.dart';
import 'package:flutter/material.dart';

import '../widget_auth /my_button.dart';
import '../widget_auth /my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign user up method
  // void signUserUp() async {
  //   // show loading circle
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     },
  //   );

  //   // try creating the user
  //   try {
  //     // check if password is confirmed
  //     if (passwordController.text == confirmPasswordController.text) {
  //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text,
  //         password: passwordController.text,
  //       );
  //     } else {
  //       // show error message, passwords don't match
  //       showErrorMessage("Passwords don't match!");
  //     }
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
                      text: "Let\'s create an account for you!",
                      icon: Icons.lock),
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

                  // confirm password textfield
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  mediumPaddingVertical,

                  // sign in button
                  MyButton(
                    text: "Sign Up",
                    onTap: () {},
                  ),

                  largePaddingVertical,

                  // not a member? register now

                  FooterAuth(
                    text: "Already have an account?",
                    textFlatButton: "login now",
                    onTap: widget.onTap,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
