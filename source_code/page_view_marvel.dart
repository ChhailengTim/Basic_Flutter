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
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Marvel_Logo.svg/1200px-Marvel_Logo.svg.png"),
    Image.network(
        "https://m.media-amazon.com/images/M/MV5BODlhOGM4MGMtYjBjMi00MWQ2LTk4OWUtYzQ2YzE0NWZkODlkXkEyXkFqcGdeQW1yb3NzZXI@._V1_.jpg"),
    Image.network(
        "https://static1.colliderimages.com/wordpress/wp-content/uploads/2020/05/Iron-Man-2-How-It-Was-Made.png?q=50\u0026fit=contain\u0026w=750\u0026h=375\u0026dpr=1.5"),
    Image.network(
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/thor-ragnarok-hulk-scar-1572267017.jpg?crop=1.00xw:0.892xh;0,0&resize=1200:*"),
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
                  debugPrint(pageChange.toString());
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
          pageSnapping: false,
          controller: pageController,
          onPageChanged: (index) {
            setState(
              () {
                pageChange = index;
              },
            );
          },
          children: _listWidget,
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
