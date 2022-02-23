import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: const Text("SliverAppBar at the Top"),
              pinned: false,
              floating: true,
              flexibleSpace: Container(color: Colors.pink),
              expandedHeight: 70,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.face),
                      title: Text("Item #$index"),
                      subtitle: Text("Awesome item $index"),
                      trailing: const Icon(Icons.navigate_next),
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.pink[100 * (index % 9)],
                    child: Text("grid item $index"),
                  );
                },
                childCount: 15,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
            ),
            SliverAppBar(
              title: const Text("SliverAppBar at the button"),
              pinned: false,
              floating: true,
              flexibleSpace: Container(
                color: Colors.indigo,
              ),
              expandedHeight: 80,
            ),
          ],
        ),
      ),
    );
  }
}
