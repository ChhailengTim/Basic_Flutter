import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundBlack = Colors.black;
  Color mainBlack = Colors.black;
  Color facebookBlue = Colors.blue;
  Color mainGrey = Colors.grey;

  List<String> avatarURL = [
    "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278",
  ];
  List<String> storyURL = [
    "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Text(
          "facebook",
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(avatarURL[0]),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(left: 25.0),
                                hintText: "What's on your mind?",
                                filled: true,
                                fillColor: mainGrey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 160.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
