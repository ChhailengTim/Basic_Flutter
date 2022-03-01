import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;
  var color = Colors.blue;
  late TabController myControler;
  var like1 = Colors.black;
  var like2 = Colors.black;
  var likeComment = Colors.black;
  var likenumber1 = 45;
  var likenumber2 = 100;
  var likegroups = 10;

  List Story = [
    {
      "imageAccount": "images/profile.jpg",
      "imagebackgroud": "images/profile.jpg",
      "name": "Create story",
      "Colors": Colors.white,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const CircleAvatar(
                            radius: 25,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('images/profile.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "What's on your mind?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
