import 'package:carbuy_app/homePages/home.dart';
import 'package:carbuy_app/homePages/home1.dart';
import 'package:carbuy_app/homePages/home2.dart';
import 'package:carbuy_app/readyPages/loginPage.dart';
import 'package:carbuy_app/readyPages/readyPage.dart';
import 'package:carbuy_app/readyPages/signUpPage.dart';
import 'package:carbuy_app/widgets/DrawerMenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
