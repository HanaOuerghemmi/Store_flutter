import 'package:books_store/constants/color_app.dart';
import 'package:flutter/material.dart';

import 'package:books_store/UI/screens/auth/widget_auth%20/my_button.dart';

import '../../../../constants/paddings.dart';

class FooterAuth extends StatelessWidget {
  final void Function()? onTap;

  final String text;
  final String textFlatButton;

  const FooterAuth({
    Key? key,
    required this.text,
    required this.textFlatButton,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // not a member? register now
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.grey[700]),
            ),
            smallPaddingHorzintal,
            GestureDetector(
              onTap: onTap, // widget.onTap,
              child: Text(
                textFlatButton,
                style: const TextStyle(
                  color: lightBrown,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
