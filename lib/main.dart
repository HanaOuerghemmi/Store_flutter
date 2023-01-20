import 'package:books_store/UI/screens/about/about_screen.dart';
import 'package:books_store/UI/screens/auth/login/login_screen.dart';
import 'package:books_store/UI/screens/auth/login_or_register/login_or_register.dart';
import 'package:books_store/UI/screens/home/home_screen.dart';
import 'package:books_store/providers/app_provider.dart';
import 'package:books_store/responsive/desktop_scaffold.dart';
import 'package:books_store/responsive/mobile_scaffold.dart';
import 'package:books_store/responsive/table_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'responsive/responsive_layout.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Define the default brightness and colors.
          ),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DescktopScaffold(),
      ),
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
