import 'package:flutter/material.dart';
import 'package:my_first_app/HomePage/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "facebook",
            style: TextStyle(color: Colors.blue),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.black,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: const Home(),
      ),
    );
  }
}
