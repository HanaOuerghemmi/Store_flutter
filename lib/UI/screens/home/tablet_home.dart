import 'package:books_store/UI/screens/home/widgets_home/header_home_hor.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_app.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //4box in thr top
        // AspectRatio(
        //   aspectRatio: 4,
        //   child: SizedBox(
        //     width: double.infinity,
        //     child: GridView.builder(
        //       itemCount: 4,
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 4),
        //       itemBuilder: (context, index) {
        //         return MyBox;
        //       },
        //     ),
        //   ),
        // ),

        //title
        const Expanded(
          child: HeaderHome(
            isHor: false,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return MyTitle;
            },
          ),
        )
      ],
    );
  }
}
