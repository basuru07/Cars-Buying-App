import 'package:carbuy_app/widgets/BrandNameRow.dart';
import 'package:carbuy_app/widgets/DrawerMenu.dart';
import 'package:carbuy_app/widgets/homenamebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKey to control the Scaffold and open the drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add the key to Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(
              "assets/heroicons-outline_menu-alt-2.png"), // Menu Image
          iconSize: 30,
          onPressed: () {
            _scaffoldKey.currentState
                ?.openDrawer(); // Open Drawer on Image Click
          },
        ),
        title: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.black, size: 20),
              Text(
                "Colombo, Sri Lanka", // Change location text
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.black, size: 24),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/Ellipse 1.png'), // Add your image
            ),
          ),
        ],
      ),
      drawer: DrawerMenu(), // Use the separate DrawerMenu widget
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              homenamebar(),
              BrandNameRow(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/Group 79.png"),
                  Image.asset("assets/Group 80.png"),
                  Image.asset("assets/Group 81.png")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/Group 79 (1).png"),
                  Image.asset("assets/Group 80 (1).png"),
                  Image.asset("assets/Group 81 (1).png")
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF6F8F8),
                    image: DecorationImage(
                      image: AssetImage("assets/Group 129.png"),
                      fit: BoxFit.fill
                          , // Keeps the image within the container
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF6F8F8),
                    image: DecorationImage(
                      image: AssetImage("assets/Group 128.png"),
                      fit: BoxFit.fill
                          , // Keeps the image within the container
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
