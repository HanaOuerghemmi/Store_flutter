import 'package:flutter/material.dart';

import 'package:books_store/constants/color_app.dart';

class HeaderHome extends StatelessWidget {
  final bool isHor;
  const HeaderHome({
    Key? key,
    required this.isHor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHor
        ? Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/books.png',
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "asfgkhjsdafgskjh",
                      style: headerStyle,
                    ),
                    Text(
                      'dshfgbahgfjdhsagfkdsahgfhjasaghsdfa',
                      style: paragStyle,
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/books.png',
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "asfgkhjsdafgskjh",
                      style: headerStyle,
                    ),
                    Text(
                      'dshfgbahgfjdhsagfkdsahgfhjasaghsdfa',
                      style: paragStyle,
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
