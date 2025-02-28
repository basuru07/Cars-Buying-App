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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/mu 1.png"),
              ),
              Text(
                "Ford Mustang GT",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  SizedBox(width: 4),
                  Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "(80 review)",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Description
              Text(
                "Mustang is a sports car with very few flaws of one."
                "Sure it is not perfect, but with that price tag, you"
                "get a lot of the American muscle for your money",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              // Read More
              GestureDetector(
                onTap: () {
                  // Navigate or expand text on tap
                },
                child: Text(
                  "Read more....",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Image.asset("assets/Group 107.png"),
              ),

              SizedBox(height: 60.0),
              Center(
                child: Image.asset("assets/Group 109.png"),
              ),
               SizedBox(height: 40),
              Center(child: Image.asset("assets/Group 105.png"))
            ],
          ),
        ));
  }
}
