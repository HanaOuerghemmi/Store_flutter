import 'package:books_store/constants/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DescHeader extends StatelessWidget {
  const DescHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Ebook store',
          style: headerStyle.copyWith(color: whiteColor),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Text(
              '''Lorem Ipsum is simply dummy\n text of the printing and\n typesetting industry. .''',
              overflow: TextOverflow.ellipsis,
              style: paragStyle,
            ),
          ),
        )
      ],
    );
  }
}
