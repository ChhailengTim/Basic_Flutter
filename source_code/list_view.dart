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
                child: GridView.extent(
              maxCrossAxisExtent: 100.0,
              children: <Widget>[
                Image.asset(
                  'images/flutter.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'images/flutter.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'images/flutter.png',
                  fit: BoxFit.fill,
                ),
                Image.asset('images/flutter.png'),
              ],
            ))));
  }

  Widget myContainer(Color mycol, IconData myIcon) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: mycol,
              child: Center(
                child: Icon(myIcon),
              ),
            )));
  }
}
