import 'package:flutter/material.dart';

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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    myContainer(Colors.green, Icons.category),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    myContainer(Colors.orange, Icons.headphones),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    myContainer(Colors.pink, Icons.museum),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(Color mycol, IconData myIcon) {
    return Expanded(
      child: Container(
        color: mycol,
        child: Center(
          child: Icon(myIcon),
        ),
      ),
    );
  }
}
