import 'package:books_store/UI/screens/home/widgets_home/header_home_hor.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_app.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // myDrower,
        Expanded(
          child: Column(
            children: [
              Expanded(child: Container(color: bgColor)),
            ],
          ),
        ),
        //middel part with box widget
        Expanded(
          flex: 5,
          child: ListView(
            children: const [
              //HeaderHome(),
              //4box in thr top
              // AspectRatio(
              //   aspectRatio: 4,
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: GridView.builder(
              //       itemCount: 10,
              //       gridDelegate:
              //           const SliverGridDelegateWithFixedCrossAxisCount(
              //               crossAxisCount: 4),
              //       itemBuilder: (context, index) {
              //         return MyBox;
              //       },
              //     ),
              //   ),
              // ),
              //title
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: 20,
              //     itemBuilder: (context, index) {
              //       return MyTitle;
              //     },
              //   ),
              // ),
              Expanded(
                child: HeaderHome(
                  isHor: true,
                ),
              ),
              Expanded(
                child: HeaderHome(
                  isHor: true,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Container(color: bgColor)),
            ],
          ),
        )
      ],
    );
  }
}
