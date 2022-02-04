import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RUPP Studdent Application',
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('RUPP Student Application'),
              backgroundColor: Colors.green,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    DebugPrint("Icon Search");
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                    DebugPrint("Icon More");
                  },
                ),
              ],
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(text: "Tab 1", icon: Icon(Icons.flight)),
                  Tab(
                    text: "Tab 2",
                    icon: Icon(Icons.face),
                  ),
                  Tab(
                    text: "Tab 3",
                    icon: Icon(Icons.run_circle),
                  ),
                  Tab(
                    text: "Tab 4",
                    icon: Icon(Icons.work),
                  ),
                ],
              ),
            ),
            body: const TabBarView(children: <Widget>[
              Text("This is body tab 1"),
              Text("This is body tab 2"),
              Text("This is body tab 3"),
              Text("This is body tab 4"),
            ]),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                DebugPrint('This is floatingbutton');
              },
              backgroundColor: Colors.blueGrey,
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.people),
                    onPressed: () {
                      DebugPrint("Icon Press");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera),
                    onPressed: () {
                      DebugPrint("Icon Press");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      DebugPrint("Icon Press");
                    },
                  )
                ],
              ),
            ),
            persistentFooterButtons: <Widget>[
              IconButton(
                icon: const Icon(Icons.accessible),
                onPressed: () {
                  DebugPrint("Icon Press");
                },
              ),
              IconButton(
                icon: const Icon(Icons.adjust),
                onPressed: () {
                  DebugPrint("Icon Press");
                },
              ),
              IconButton(
                icon: const Icon(Icons.archive),
                onPressed: () {
                  DebugPrint("Icon Press");
                },
              )
            ],
          ),
        ));
    //throw UnimplementedError();
  }

  // ignore: non_constant_identifier_names
  void DebugPrint(String s) {}
}
