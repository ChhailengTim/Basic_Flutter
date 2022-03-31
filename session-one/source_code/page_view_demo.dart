// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //get child => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("PageView Demo"),
          ),
          body: PageView.builder(
            itemBuilder: (context, position) {
              return Container(
                color: position % 2 == 0 ? Colors.pink : Colors.cyan,
              );
            },
          )),
    );
  }
}
