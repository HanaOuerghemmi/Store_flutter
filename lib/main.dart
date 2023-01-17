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
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
        ),

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: LoginOrRegisterPage(),
      // const ResponsiveLayout(
      //   mobileBody: MobileScaffold(),
      //   tabletBody: TabletScaffold(),
      //   desktopBody: DescktopScaffold(),
      // ),
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
