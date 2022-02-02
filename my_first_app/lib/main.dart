import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SETEC Studdent Application',
      home: Scaffold(
          appBar: AppBar(
            title: Text('RUPP Student Application'),
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: Text(
              "This is no schedule.",
              style: TextStyle(
                  fontSize: 50, color: Colors.blue, fontFamily: 'Verdana'),
            ),
          )),
    );
    //throw UnimplementedError();
  }
}
