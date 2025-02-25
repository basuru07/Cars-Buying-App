import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Drawer Menu
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height: 150),
          ListTile(
            leading: Image.asset("assets/Vector.png"),
            title: Text(
              'New Cars',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: Image.asset("assets/system-uicons_reuse.png"),
            title: Text(
              'Used Cars',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: Image.asset("assets/tabler_coin-rupee.png"),
            title: Text(
              'Sell Cars',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: Image.asset("assets/mdi_set-top-box.png"),
            title: Text(
              'Car Accessories',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: Image.asset("assets/tabler_credit-card.png"),
            title: Text(
              'Car Loan',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: Image.asset("assets/tabler_language.png"),
            title: Text(
              'Languages',
              style: TextStyle(fontSize: 28),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/ic_baseline-facebook.png"),
              SizedBox(width: 40),
              Image.asset("assets/mdi_twitter.png"),
              SizedBox(width: 40),
              Image.asset("assets/ph_instagram-logo-bold.png"),
            ],
          ),
        ],
      ),
    );
  }
}
