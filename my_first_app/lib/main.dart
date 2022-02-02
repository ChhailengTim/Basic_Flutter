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
        ),
      ),
    );
    throw UnimplementedError();
  }
}
