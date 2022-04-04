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
            return ListTile(
              title: Text(fruits[index].title!),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailPage()));
              },
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const DetailPage(),
        "/nextpage": (context) => const DetailPage(),
      },
    );
  }
}
