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
          title: const Text("Page View Demo"),
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
          },
          children: [
            Image.network(
                "https://i.annihil.us/u/prod/marvel/images/OpenGraph-TW-1200x630.jpg"),
            Image.network(
                "https://image.kkday.com/v2/image/get/s1.kkday.com/product_19604/20180705081431_UxgDg/jpg"),
            Image.network(
                "https://www.wallpapertip.com/wmimgs/35-354301_marvel-super-war-ios.jpg"),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
