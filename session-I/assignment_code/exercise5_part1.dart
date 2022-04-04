import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Facebook",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            backgroundColor: Colors.white,
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Icon(
                Icons.chat,
                color: Colors.black,
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.tv,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shop,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.flag,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.tv,
                color: Colors.black,
              ),
              Icon(
                Icons.shop,
                color: Colors.black,
              ),
              Icon(
                Icons.flag,
                color: Colors.black,
              ),
              Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
              Icon(
                Icons.list,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
