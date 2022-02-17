// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Fruit {
  String? title;
  String? imageUrl;
  Fruit({this.title, this.imageUrl});
}

List<Fruit> fruits = [
  Fruit(title: "Coconut", imageUrl: "images/apple.jpg"),
  Fruit(title: "Apple", imageUrl: "images/coconut.jpg")
];

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
        body: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset(
                        fruits[index].imageUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        fruits[index].title!,
                        style: const TextStyle(fontSize: 22.0),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
