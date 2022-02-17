// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:ffi';

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
          title: const Text("ListView Example"),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text("Sunny"),
              subtitle: Text("The sun is shinning"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.wb_cloudy),
              title: Text("Cloudy"),
              subtitle: Text("The sky is cloudy"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
