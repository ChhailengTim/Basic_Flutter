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
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              child: const Center(
                                child: Icon(Icons.face),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.orange[700],
                              child: const Center(
                                child: Icon(Icons.category_sharp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(children: [
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            child: const Center(
                              child: Icon(Icons.wifi),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.yellow,
                                        child: const Center(
                                          child: Icon(Icons.cast),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.deepOrange,
                                        child: const Center(
                                          child: Icon(Icons.bluetooth),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.brown,
                                        child: const Center(
                                          child: Icon(Icons.flag),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.deepPurpleAccent[400],
                                        child: const Center(
                                          child: Icon(Icons.select_all),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.pink,
                      child: const Center(
                        child: Icon(Icons.battery_charging_full),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: const Center(
                        child: Icon(Icons.tv),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Icon(Icons.radio),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget myContainer(Color mycol, IconData myIcon) {
  //   return Expanded(
  //     child: Container(
  //       color: mycol,
  //       child: Center(
  //         child: Icon(myIcon),
  //       ),
  //     ),
  //   );
  // }
}
