import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/books.png',
      height: 500,
      width: MediaQuery.of(context).size.width * 0.5,
    );
  }
}
