import 'package:flutter/material.dart';
import 'package:flutter_drawer/components/drawer_template.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Counter"), centerTitle: true),
      drawer: DrawerTemplate(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome!", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text("Counter: $_counter", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Text("+"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_counter > 0) {
                        _counter--;
                      }
                    });
                  },
                  child: Text("-"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
