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
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Home page item
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text(
              "HOME",
              style: TextStyle(letterSpacing: 2),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Home page
            },
          ),

          // About page item
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              "ABOUT DRAWER",
              style: TextStyle(letterSpacing: 2),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to the About page
            },
          ),

          // Settings page item
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "SETTINGS",
              style: TextStyle(letterSpacing: 2),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to the Settings page
            },
          ),
        ],
      ),
    );
  }
}