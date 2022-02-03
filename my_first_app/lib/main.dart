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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // ignore: avoid_print
                print("Icon Press");
              },
            ),
            // ignore: avoid_print
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                // ignore: avoid_print
                print("Icon Press");
              },
            ),
          ],
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
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: avoid_print
              IconButton(
                icon: const Icon(Icons.people),
                onPressed: () {
                  // ignore: avoid_print
                  print("Icon Press");
                },
              ),
              // ignore: avoid_print
              IconButton(
                icon: const Icon(Icons.camera),
                onPressed: () {
                  // ignore: avoid_print
                  print("Icon Press");
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // ignore: avoid_print
                  print("Icon Press");
                },
              )
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: const Icon(Icons.accessible),
            onPressed: () {
              // ignore: avoid_print
              print("Icon Press");
            },
          ),
          // ignore: avoid_print
          IconButton(
            icon: const Icon(Icons.adjust),
            onPressed: () {
              // ignore: avoid_print
              print("Icon Press");
            },
          ),
          IconButton(
            icon: const Icon(Icons.archive),
            onPressed: () {
              // ignore: avoid_print
              print("Icon Press");
            },
          )
        ],
      ),
    );
    //throw UnimplementedError();
  }
}
