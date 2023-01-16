import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../UI/screens/about/about_screen.dart';
import '../UI/screens/categories/categories_screen.dart';
import '../UI/screens/contact/contact_screen.dart';
import '../UI/screens/home/home_screen.dart';

class AppProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _index = 0;

  int get index => _index;
  List<Widget> listScreen = [
    const HomeScreen(),
    const AboutScreen(),
    const CategoriesScreen(),
    const ContactScreen(),
  ];

  // void goHome() {

  // }
  void Function()? goHome() {
    _index = 0;
    notifyListeners();
  }

  void Function()? goAbout() {
    _index = 1;
    notifyListeners();
  }

  void Function()? goContactUs() {
    _index = 2;
    notifyListeners();
  }

  void Function()? goCategoires() {
    _index = 3;
    notifyListeners();
  }
}
