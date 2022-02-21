// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  PageController pageController = PageController(
    initialPage: 0,
  );
  int pageChange = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
          actions: [
            IconButton(
              onPressed: () {
                pageController.animateToPage(pageChange--,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () {
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        body: PageView(
          pageSnapping: true,
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              pageChange = index;
            });
            print(pageChange);
          },
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
