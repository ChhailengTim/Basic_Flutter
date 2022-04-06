import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<String> someFutureFunction() {
    Future<String> data = Future.delayed(
      Duration(seconds: 2),
      () => "Latest News",
    );
    return data;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: someFutureFunction(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: Text(snapshot.data),
              );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        );
  }
}
