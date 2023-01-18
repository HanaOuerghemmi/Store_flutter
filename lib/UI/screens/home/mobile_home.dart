import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_app.dart';
import 'widgets_home/header_home_hor.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: HeaderHome(
            isHor: false,
          ),
        ),
        //4box in thr top
        // AspectRatio(
        //   aspectRatio: 1,
        //   child: SizedBox(
        //     width: double.infinity,
        //     child: GridView.builder(
        //       itemCount: 4,
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2),
        //       itemBuilder: (context, index) {
        //         return MyBox;
        //       },
        //     ),
        //   ),
        // ),
        //title
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
