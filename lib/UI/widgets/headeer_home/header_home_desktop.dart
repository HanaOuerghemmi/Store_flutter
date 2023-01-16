import 'package:books_store/UI/widgets/headeer_home/desc_header.dart';

import 'package:flutter/material.dart';

import 'image_header.dart';

class HeaderHomeDesktop extends StatelessWidget {
  const HeaderHomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Row(
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
