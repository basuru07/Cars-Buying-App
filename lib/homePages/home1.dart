import 'package:carbuy_app/homePages/home2.dart';
import 'package:carbuy_app/widgets/BrandNameRow.dart';
import 'package:carbuy_app/widgets/DrawerMenu.dart';
import 'package:carbuy_app/widgets/homenamebar.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0; // Add this for BottomNavigationBar

  static List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Notification Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/heroicons-outline_menu-alt-2.png"),
          iconSize: 30,
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Row(
          children: [
            SizedBox(width: 22),
            Icon(Icons.location_on, color: Colors.black, size: 20),
            Text(
              "Colombo, Sri Lanka",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black, size: 24),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Ellipse 1.png'),
            ),
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "The best & favourite car",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            homenamebar(), // Fixed naming
            SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage2()), // Navigate to Home2
                );
              },
              child: Image.asset("assets/Group 68.png"),
            ),
            BrandNameRow(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/Group 79.png"),
                Image.asset("assets/Group 80.png"),
                Image.asset("assets/Group 81.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/Group 79 (1).png"),
                Image.asset("assets/Group 80 (1).png"),
                Image.asset("assets/Group 81 (1).png"),
              ],
            ),
            SizedBox(height: 25),
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
                    fit: BoxFit.fill,
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
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 91, 91, 91),
          onTap: _onItemTapped,
          backgroundColor: const Color.fromARGB(255, 245, 244, 244),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
