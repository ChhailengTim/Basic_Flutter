// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("RUPP"),
      ),
      body: myButton(),
    ));
  }
}

Widget myButton() {
  return RaisedButton(
    child: const Text("Click me!"),
    elevation: 10.0,
    color: Colors.red,
    onPressed: () {},
  );
}
