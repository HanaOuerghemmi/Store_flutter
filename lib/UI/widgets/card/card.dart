import 'package:books_store/UI/screens/auth/widget_auth%20/my_button.dart';
import 'package:books_store/constants/color_app.dart';
import 'package:books_store/constants/paddings.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String assetPath;
  final bookPrice, bookName, bookWriter;
  MyCard(
      {required this.assetPath,
      required this.bookPrice,
      required this.bookName,
      required this.bookWriter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 20),
      height: 220,
      width: 220,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //book image
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  assetPath,
                  width: 130,
                  height: 220,
                )),
            //book prise
            Text(
              bookPrice,
              style: itemCAardTitle,
            ),
            // book name
            smallPaddingVertical,
            Text(
              bookName,
              style: itemCAardTitle,
            ),
            // book writter
            Text(
              bookWriter,
              style: itemCAardText,
            ),
            //button
            mediumPaddingVertical,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyButton(
                  onTap: () {},
                  text: "ADD TO CART",
                ),
                Icon(
                  Icons.favorite_border,
                  color: orangeColor,
                  size: 48,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
