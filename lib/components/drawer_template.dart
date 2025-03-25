import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  const DrawerTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer header
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Home page item
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("HOME", style: TextStyle(letterSpacing: 2)),
            onTap: () {
              Navigator.pushNamed(context, 'homepage');
            },
          ),

          // About page item
          ListTile(
            leading: Icon(Icons.plus_one),
            title: Text("COUNTER PAGE", style: TextStyle(letterSpacing: 2)),
            onTap: () {
              Navigator.pushNamed(context, 'counterpage');
            },
          ),

          // Settings page item
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("SETTINGS", style: TextStyle(letterSpacing: 2)),
            onTap: () {
              Navigator.pushNamed(context, 'settingspage');
            },
          ),
        ],
      ),
    );
  }
}
