import 'package:books_store/providers/app_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<AppProvider>();
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          ListTile(
            onTap: () {
              provider.goHome();
            },
            title: const Text('H O M E'),
          ),
          ListTile(
            onTap: () {
              provider.goAbout();
            },
            title: const Text('A B O U T'),
          ),
          ListTile(
            onTap: () {
              provider.goCategoires();
            },
            title: const Text('C A T E G O I R E S'),
          ),
          ListTile(
            onTap: () {
              provider.goContactUs();
            },
            title: const Text('C O N T A C T   U S'),
          ),
        ],
      ),
    );
  }
}
