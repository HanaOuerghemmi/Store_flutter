import 'package:flutter/material.dart';

const Color bgColor = Color(0xFFE5E5E5);
const Color lightBrown = Color(0xFF4D2900);
const Color orangeColor = Color(0xFFE16A00);
const Color darkBrown = Color(0xFF241400);
const Color blackColor = Color(0xFF000000);
const Color whiteColor = Color(0xFFFFFFFF);

TextStyle headerStyle = const TextStyle(
    fontSize: 40, color: blackColor, fontWeight: FontWeight.bold);
TextStyle paragStyle = const TextStyle(
    fontSize: 24, color: blackColor, fontWeight: FontWeight.normal);
TextStyle itemAppBar = const TextStyle(color: blackColor, fontSize: 18);

var defaultBg = Colors.grey[300];
var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

// var myDrower = Drawer(
//   backgroundColor: Colors.grey[300],
//   child: Column(
//     children: [
//       DrawerHeader(child: Icon(Icons.favorite)),
//       ListTile(
//         leading: Icon(Icons.home),
//         title: Text('D A S H B O A R D'),
//       ),
//       ListTile(
//         leading: Icon(Icons.chat),
//         title: Text('M E S S A G E'),
//       ),
//       ListTile(
//         leading: Icon(Icons.settings),
//         title: Text('S E T T I N G S'),
//       ),
//       ListTile(
//         leading: Icon(Icons.logout),
//         title: Text('L O G O U T'),
//       ),
//     ],
//   ),
// );
Widget MyTitle = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    color: Colors.green,
    height: 80,
  ),
);

Widget MyBox = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    height: 500,
    width: 500,
    color: Colors.blue,
  ),
);
