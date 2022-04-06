import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetchNetworkdata(5),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text(
            'There was an error',
            style: Theme.of(context).textTheme.headline1,
          );
        }else if (snapshot.hasData){
          return Text(
            json.decode(snapshot.data)["delay_was"],
            style: Theme.of(context).textTheme.headline1,
          );
        }
      }
      );
  }
}

// Future sayHello(String name) async {
//   print("Hello $name");
// }

// Future<String>getOnlyDate(DateTime now){
//   int year=now.year;
//   int month=now.month;
//   int day=now.day;
//   return Future.value("$year/$month/$day");
// }