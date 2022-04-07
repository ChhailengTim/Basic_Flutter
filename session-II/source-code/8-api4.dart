import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:basic_flutter/7-api3.json';

void main() {
  runApp(const MyApp());
}
List<User> parseUser(String jsonString){
  List list = json.decode(jsonString);
  List<User> userList = list.map((x) => User.fromMap(x)).toList();
  return userList;
}

Future<List<User>> fetchUserList(http.Client client) async{
  http.Response response = 
  await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts?userId=5"));
  return compute(parseUser,response.body);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
