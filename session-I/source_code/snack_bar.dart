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
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            title: const Text("Hello Flutter."),
          ),
          body: SnackBar(
            content: const Text("Gesture Tapped"),
            duration: const Duration(milliseconds: 500),
            action: SnackBarAction(
                label: "Undo", onPressed: () => debugPrint("Undo Click")),
          )),
    );
  }
}
