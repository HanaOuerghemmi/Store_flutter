import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants/color_app.dart';

class ItemAppBar extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const ItemAppBar({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: itemAppBar,
      ),
    );
  }
}
