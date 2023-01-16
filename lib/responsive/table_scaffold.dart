import 'package:books_store/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/color_app.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<AppProvider>();
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrower,
      backgroundColor: defaultBg,
      body: provider.listScreen[provider.index],
      // body: Column(
      //   children: [
      //     //4box in thr top
      //     AspectRatio(
      //       aspectRatio: 4,
      //       child: SizedBox(
      //         width: double.infinity,
      //         child: GridView.builder(
      //           itemCount: 4,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 4),
      //           itemBuilder: (context, index) {
      //             return MyBox;
      //           },
      //         ),
      //       ),
      //     ),
      //     //title
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: 5,
      //         itemBuilder: (context, index) {
      //           return MyTitle;
      //         },
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
