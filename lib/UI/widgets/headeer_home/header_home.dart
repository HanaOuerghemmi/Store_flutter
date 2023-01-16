import 'package:books_store/UI/widgets/headeer_home/header_home_desktop.dart';
import 'package:books_store/UI/widgets/headeer_home/header_home_tablet_mobile.dart';
import 'package:books_store/responsive/responsive_layout.dart';

import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: HeaderHomeTabletMobile(),
      tabletBody: HeaderHomeTabletMobile(),
      desktopBody: HeaderHomeDesktop(),
    );
  }
}
