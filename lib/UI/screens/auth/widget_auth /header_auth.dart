import 'package:books_store/constants/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../constants/paddings.dart';

class HeaderAuth extends StatelessWidget {
  final String text;
  final IconData icon;
  const HeaderAuth({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        largePaddingVertical,

        // logo
        Icon(
          icon,
          size: 150,
          color: Colors.grey.shade400,
        ),

        mediumPaddingVertical,

        // welcome back, you've been missed!
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
