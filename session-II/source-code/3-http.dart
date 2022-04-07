import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future readData() async{
    http.Response data=await http.get("https://google.com");
    print(data.body);
  }
  readData();

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
