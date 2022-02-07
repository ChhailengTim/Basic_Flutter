import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          title: const Text("Hello Flutter App"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            )
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Well, it is cool, right?",
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
