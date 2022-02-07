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
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.play_circle_filled)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
          ),
        ),
      ),
    );
  }
}
