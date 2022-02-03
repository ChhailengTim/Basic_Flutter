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
          title: const Text('RUPP Student Application'),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Text(
            "This is no schedule.",
            style: TextStyle(
                fontSize: 50, color: Colors.blue, fontFamily: 'Verdana'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // ignore: avoid_print
            print('This is floatingbutton');
          },
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
    //throw UnimplementedError();
  }
}
