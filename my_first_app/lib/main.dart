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
          slivers: [
            SliverAppBar(
              leading: const Icon(Icons.face),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.people),
                ),
              ],
              title: const Text("Sliver AppBar Example"),
              pinned: false,
              floating: true,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pink,
                      Colors.indigo,
                    ],
                  ),
                ),
              ),
              expandedHeight: 80,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.face),
                      title: Text("Item #$index"),
                      subtitle: Text("Awsome item $index"),
                      trailing: const Icon(Icons.navigate_next),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
