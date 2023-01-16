import 'package:books_store/UI/widgets/appbar_desktop/item_appbar.dart';
import 'package:books_store/constants/color_app.dart';
import 'package:books_store/constants/paddings.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../providers/app_provider.dart';

class AppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const AppBarDesktop({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.read<AppProvider>();
    return AppBar(
      leading: Image.asset("assets/images/logo.png"),
      backgroundColor: bgColor,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.heart_broken),
              ),
              ItemAppBar(onTap: () {}, text: 'Sign Up'),
              smallPaddingHorzintal,
              ItemAppBar(onTap: () {}, text: 'Sign In'),
            ],
          ),
        ),
      ],
      title: SizedBox(
        width: 500,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ItemAppBar(
                onTap: () {
                  provider.goHome();
                },
                text: 'Home'),
            ItemAppBar(
                onTap: () {
                  provider.goAbout();
                },
                text: 'About'),
            ItemAppBar(
                onTap: () {
                  provider.goCategoires();
                },
                text: 'Categoires'),
            ItemAppBar(
                onTap: () {
                  provider.goContactUs();
                },
                text: 'Contact Us'),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
