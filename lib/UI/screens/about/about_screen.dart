import 'package:books_store/UI/widgets/card/card.dart';
import 'package:books_store/constants/color_app.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MyCard(
                  assetPath: 'assets/images/book2.jpg',
                  bookPrice: '\$400',
                  bookName: 'book name0',
                  bookWriter: 'book writer',
                ),
                MyCard(
                  assetPath: 'assets/images/book2.jpg',
                  bookPrice: '\$300',
                  bookName: 'book name1',
                  bookWriter: 'book writer',
                ),
                MyCard(
                  assetPath: 'assets/images/book2.jpg',
                  bookPrice: '\$200',
                  bookName: 'book name2',
                  bookWriter: 'book writer',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
