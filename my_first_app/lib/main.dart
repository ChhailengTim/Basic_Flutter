import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Column(
          children: const [
            Icon(
              Icons.camera,
              size: 200,
            ),
            Icon(
              Icons.account_box,
              size: 230.0,
            ),
            Icon(
              Icons.place,
              size: 200.0,
            ),
            Icon(
              Icons.info,
              size: 250.0,
            ),
          ],
        ),
      ),
    );
  }
}
