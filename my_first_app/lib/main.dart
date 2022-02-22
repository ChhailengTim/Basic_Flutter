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
  final _listWidget = [
    Image.network(
        "https://nie.res.netease.com/r/pic/20190527/3abb27b4-0506-4961-981c-94b029157ce2.jpg"),
    Image.network(
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/marvel-cinematic-universe-order-1601976266.jpg"),
    Image.network(
        "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DA2E198288BFCA56AB53340211B38DE7134E40E4521EDCAFE6FFB8CD69250DE9/scale?width=2880&aspectRatio=1.78&format=jpeg"),
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
                      duration: const Duration(microseconds: 250),
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
            pageChange = index;
          },
          children: _listWidget,
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
