import 'package:books_store/UI/screens/about/about_screen.dart';
import 'package:books_store/UI/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../UI/screens/categories/categories_screen.dart';
import '../UI/screens/contact/contact_screen.dart';
import '../UI/widgets/appbar_desktop/appBar_desktop.dart';
import '../constants/color_app.dart';

import '../providers/app_provider.dart';

class DescktopScaffold extends StatelessWidget {
  const DescktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<AppProvider>();

    return Scaffold(
      backgroundColor: defaultBg,
      appBar: const AppBarDesktop(
        height: 60,
      ),
      body: provider.listScreen[provider.index],
    );
  }
}
