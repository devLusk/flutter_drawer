import 'package:flutter/material.dart';
import 'package:flutter_drawer/components/drawer_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),
      drawer: DrawerTemplate(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 50, color: Colors.blue),
            SizedBox(height: 20),
            Column(
              children: [
                Text("Welcome to Home Page!", style: TextStyle(fontSize: 20)),
                Text(
                  "Thats a simple usage of Drawer in Flutter.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text("Developer: Lucas Silva", style: TextStyle(fontSize: 16)),
                Text("Tecnology: Flutter", style: TextStyle(fontSize: 16)),
                Text("Date: 25 Mar", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("V1.0"),
                    backgroundColor: Colors.blueAccent,
                  ),
                );
              },
              child: Text("Version"),
            ),
          ],
        ),
      ),
    );
  }
}
