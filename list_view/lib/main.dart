import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('RUPP'),
            ),
            body: SafeArea(
                child: ListView(
              children: <Widget>[
                myList(),
                myList(),
              ],
            ))));
  }
}

Widget myList() {
  return ListTile(
    leading: Image.asset('images/flutter.png'),
    title: const Text("Natural Song"),
    trailing: const Icon(Icons.play_arrow),
  );
}
