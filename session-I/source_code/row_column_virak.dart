import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          title: const Text("Hello Flutter App"),
        ),
        body: Column(
          children: [
            ///box1
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              child:
                                  const Center(child: Icon(Icons.app_blocking)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              child: const Center(
                                  child: Icon(Icons.sentiment_neutral)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blueAccent,
                            child:
                                const Center(child: Icon(Icons.app_blocking)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: Colors.orange[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.brown,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.indigo[900],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            ///box2
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Icon(Icons.app_blocking)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            ///box3
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
