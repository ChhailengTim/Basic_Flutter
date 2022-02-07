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
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.network("http://bit.ly/2IGluzb")),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Contact: 012 33 25 38",
                    style: TextStyle(fontSize: 20.0, color: Colors.red),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text(
                    "https://www.youtube.com",
                    style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
