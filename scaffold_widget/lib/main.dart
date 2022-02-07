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
          title: const Text("RUPP Application"),
        ),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.place),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Image.network("http://bit.ly/2IGluzb"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              )
            ],
          ),
        ),
      ),
    );
  }
}
