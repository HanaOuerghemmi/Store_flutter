import 'package:books_store/UI/widgets/headeer_home/desc_header.dart';

import 'package:flutter/material.dart';

import 'image_header.dart';

class HeaderHomeTabletMobile extends StatelessWidget {
  const HeaderHomeTabletMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ImageHeader(),
          DescHeader(),
        ],
      ),
    );
  }
}
