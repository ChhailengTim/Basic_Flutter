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
              child: Row(
                children: <Widget>[
                  myContainer(Colors.pink, Icons.alarm),
                  //myContainer(Colors.blueGrey, Icons.play_arrow)
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      myContainer(Colors.blue, Icons.play_arrow),
                      myContainer(Colors.green, Icons.help),
                    ],
                  ))
                ],
              ),
            )));
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
