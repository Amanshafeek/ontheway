import 'package:floatingnavbar/floating_navbar.dart';
import 'package:floatingnavbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'firstpage/Firstpageadmin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Colors.blueGrey,
        items: [
          FloatingNavBarItem(
            iconData: Icons.home,
            title: 'Home',
            page: MyApp(),
          ),
          FloatingNavBarItem(
            iconData: Icons.account_circle,
            title: 'Account',
            page: MyApp(),
          )
        ],
        selectedIconColor: Colors.white,
        hapticFeedback: true,
        horizontalPadding: 40,
      ),
    );
  }
}
