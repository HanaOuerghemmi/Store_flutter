import 'package:books_store/UI/screens/home/desktop_home.dart';
import 'package:books_store/UI/screens/home/mobile_home.dart';
import 'package:books_store/UI/screens/home/tablet_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../responsive/responsive_layout.dart';
import '../../widgets/headeer_home/header_home.dart';
import '../../widgets/headeer_home/header_home_desktop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileHome(),
      tabletBody: TabletHome(),
      desktopBody: DesktopHome(),
    );
  }
}
