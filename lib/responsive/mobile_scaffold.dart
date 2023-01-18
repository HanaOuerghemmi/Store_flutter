import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../UI/widgets/my_drawer.dart';
import '../constants/color_app.dart';
import '../providers/app_provider.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<AppProvider>();
    return Scaffold(
      appBar: myAppBar,
      drawer: MyDrawer(),
      backgroundColor: defaultBg,
      // body of mobile screen with 4 box on the top

      body: provider.listScreen[provider.index],
      // body: Column(
      //   children: [
      //     //4box in thr top
      //     AspectRatio(
      //       aspectRatio: 1,
      //       child: SizedBox(
      //         width: double.infinity,
      //         child: GridView.builder(
      //           itemCount: 4,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2),
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
