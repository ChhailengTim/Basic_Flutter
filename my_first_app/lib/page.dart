import 'package:flutter/material.dart';
import 'package:my_first_app/stories.dart';
import 'package:my_first_app/feed.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> avatarURL = [
    "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278",
    "https://scontent.fpnh8-1.fna.fbcdn.net/v/t39.30808-1/244645332_2126546250854357_5312894312562182139_n.jpg?stp=dst-jpg_p148x148&_nc_cat=105&ccb=1-5&_nc_sid=1eb0c7&_nc_eui2=AeEjZ-VkGxL9m7-Up4IRLbI4WFLc_cCd46FYUtz9wJ3joezNcqQJKYBjqjsdp9GnWliUTqiszPZxPrMTg8k5TcNU&_nc_ohc=aYQV69m3q1UAX9EDVYW&_nc_ht=scontent.fpnh8-1.fna&oh=00_AT8m4nnua5Za_TgJeLM0WdgoxHrvr4-mFh1wbHwAmblAUQ&oe=62266FF6",
  ];
  List<String> storyURL = [
    "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278",
    "https://scontent.fpnh8-1.fna.fbcdn.net/v/t39.30808-1/244645332_2126546250854357_5312894312562182139_n.jpg?stp=dst-jpg_p148x148&_nc_cat=105&ccb=1-5&_nc_sid=1eb0c7&_nc_eui2=AeEjZ-VkGxL9m7-Up4IRLbI4WFLc_cCd46FYUtz9wJ3joezNcqQJKYBjqjsdp9GnWliUTqiszPZxPrMTg8k5TcNU&_nc_ohc=aYQV69m3q1UAX9EDVYW&_nc_ht=scontent.fpnh8-1.fna&oh=00_AT8m4nnua5Za_TgJeLM0WdgoxHrvr4-mFh1wbHwAmblAUQ&oe=62266FF6",
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
                          child: CircleAvatar(
                            radius: 25,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(avatarURL[0]),
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
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.live_tv),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Live",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 25,
                        color: Colors.grey,
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.photo),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Photos",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 25,
                        color: Colors.grey,
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.video_call),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Room",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 160.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storiestile(avatarURL[0], storyURL[0], "Chhaileng Tim"),
                  storiestile(avatarURL[0], storyURL[0], "Leakena In"),
                  storiestile(avatarURL[0], storyURL[0], "Meng Long"),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            feedBox(
              avatarURL[0],
              "Chhaileng Tim",
              "Just now",
              "Hello World",
              "",
            ),
            feedBox(
              avatarURL[0],
              "Chhaileng Tim",
              "Just now",
              "Hello World",
              avatarURL[0],
            ),
          ],
        ),
      ),
    );
  }
}
