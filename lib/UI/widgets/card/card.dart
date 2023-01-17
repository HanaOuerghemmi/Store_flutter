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
    return
        //Scaffold(
        // appBar: AppBar(backgroundColor: whiteColor, centerTitle: true, leading: IconButton(icon: Icon(Icons.favorite, color: orangeColor,)),),
        // body: ListView(
        //  children: [
        //   child:

        // Text(bookName),
        // Hero(tag: assetPath, child: Image.asset(assetPath,),
        // fit: BoxFit.conatin),

        //   ],
        //  ),
        // );

        Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 20),
      height: 380,
      width: 190,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: orangeColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
