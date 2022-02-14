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
          title: const Text('សួស្តី!'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            "ភាសាខ្មែរ",
            style: TextStyle(
                fontSize: 50.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }
}
