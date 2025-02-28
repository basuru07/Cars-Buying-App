import 'package:carbuy_app/widgets/BrandNameRow.dart';
import 'package:carbuy_app/widgets/DrawerMenu.dart';
import 'package:carbuy_app/widgets/homenamebar.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  // GlobalKey to control the Scaffold and open the drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, // Add the key to Scaffold
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset("assets/Frame.png"), // Menu Image
            iconSize: 30,
            onPressed: () {},
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.share)),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset("assets/mu 1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                "Ford Mustang GT",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            
          ],
        ));
  }
}
