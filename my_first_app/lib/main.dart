// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Fruit {
  String title;
  String imageUrl;

  Fruit({required this.title, required this.imageUrl});
}

List<Fruit> fruits = [
  Fruit(title: "Coconut", imageUrl: "images/coconut.jpg"),
  Fruit(title: "Apple", imageUrl: "image/apple.jpg")
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
              color: Colors.grey[200],
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          child: Image.asset(
                            fruits[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
