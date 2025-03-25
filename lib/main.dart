import 'package:flutter/material.dart';
import 'package:flutter_drawer/pages/home_page.dart';
import 'package:flutter_drawer/pages/counter_page.dart';
import 'package:flutter_drawer/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: HomePage(),
      routes: {
        'homepage': (context) => HomePage(),
        'counterpage': (context) => CounterPage(),
        'settingspage': (context) => SettingsPage(),
      },
    );
  }
}
