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
            body: Row(
              children: <Widget>[myButton(), myButton2()],
            )));
  }
}

Widget myButton() {
  return RaisedButton(
    child: const Text("Click me!"),
    elevation: 10.0,
    color: Colors.red,
    splashColor: Colors.yellow,
    onPressed: () {
      debugPrint("Click me!");
    },
  );
}

Widget myButton2() {
  return FlatButton(
    child: const Text("Click me!"),
    color: Colors.yellow,
    splashColor: Colors.yellow,
    onPressed: () {
      debugPrint("Click me!");
    },
  );
}
