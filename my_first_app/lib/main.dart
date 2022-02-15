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
        appBar: AppBar(title: const Text("Keybord Input")),
        body: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.pink.withOpacity(0.5),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
              hintText: "Enter your email",
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.white54),
              labelText: "Email",
              border: InputBorder.none,
            ),
            obscureText: false,
          ),
        ),
      ),
    );
  }
}
