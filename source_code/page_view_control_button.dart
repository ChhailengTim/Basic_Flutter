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
  final _listWidget = <Widget>[
    const Center(child: Text('1')),
    const Center(child: Text('2')),
    const Center(child: Text('3')),
    const Center(child: Text('4')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Page View Demo"),
          actions: [
            IconButton(
              onPressed: () {
                if (pageChange >= 1) {
                  debugPrint(pageChange.toString());
                  pageController.animateToPage(pageChange -= 1,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                }
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () {
                if (pageChange < _listWidget.length - 1) {
                  pageController.animateToPage(pageChange += 1,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                }
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
          },
          children: _listWidget,
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}