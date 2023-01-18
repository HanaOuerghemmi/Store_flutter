import 'package:books_store/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../UI/widgets/my_drawer.dart';
import '../constants/color_app.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<AppProvider>();
    return Scaffold(
      appBar: myAppBar,
      drawer: MyDrawer(),
      backgroundColor: defaultBg,
      body: provider.listScreen[provider.index],
    );
  }
}
