import 'package:books_store/constants/color_app.dart';
import 'package:flutter/material.dart';

class DescFooter extends StatelessWidget {
  const DescFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
              ),
              Text('contact'),
              Text('menu'),
            ],
          ),
        ),
      ),
      color: darkBrown,
    );
  }
}
