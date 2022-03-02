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

  // List Story = [
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   },
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   },
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   },
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   },
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   },
  //   {
  //     "imageAccount": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "imagebackgroud": Image.network(
  //         "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
  //     "name": "Create story",
  //     "Colors": Colors.white,
  //   }
  // ];
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
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
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
          ],
        ),
      ),
    );
    // ignore: dead_code
    // Container(
    //   color: Colors.white,
    //   width: double.infinity,
    //   height: 270,
    //   margin: const EdgeInsets.only(top: 14),
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: List.generate(
    //       10,
    //       (int index) {
    //         print(index);
    //         return Card(
    //           margin: const EdgeInsets.all(10),
    //           shadowColor: Colors.black,
    //           elevation: 2,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(16.0),
    //           ),
    //           color: Story[index]['Colors'],
    //           child: Column(
    //             children: [
    //               Expanded(
    //                 flex: 4,
    //                 child: Container(
    //                   width: 150,
    //                   decoration: BoxDecoration(
    //                       borderRadius: const BorderRadius.only(
    //                           topLeft: Radius.circular(15),
    //                           topRight: Radius.circular(15)),
    //                       image: DecorationImage(
    //                           image: AssetImage(
    //                               "${Story[index]['imagebackground']}"),
    //                           fit: BoxFit.cover)),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Container(
    //                           margin: const EdgeInsets.only(top: 8, right: 85),
    //                           child: CircleAvatar(
    //                             radius: 16,
    //                             backgroundColor: const Color(0xffFDCF09),
    //                             child: CircleAvatar(
    //                               radius: 18,
    //                               backgroundImage: AssetImage(
    //                                   '${Story[index]['imageAccount']}'),
    //                             ),
    //                           )),
    //                       index == 0
    //                           ? Container(
    //                               margin: const EdgeInsets.only(
    //                                 bottom: 8,
    //                               ),
    //                               child: CircleAvatar(
    //                                 child: IconButton(
    //                                   onPressed: () {},
    //                                   icon: const Icon(Icons.add),
    //                                 ),
    //                               ),
    //                             )
    //                           : Container()
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                 flex: 1,
    //                 child: SizedBox(
    //                   width: 150,
    //                   //color: Colors.green,
    //                   child: Center(
    //                     child: Text(
    //                       "${Story[index]['name']}",
    //                       textAlign: TextAlign.center,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
    // Container(
    //   color: Colors.white,
    //   width: double.infinity,
    //   height: 600,
    //   margin: const EdgeInsets.only(
    //     top: 15,
    //   ),
    //   child: Column(
    //     children: [
    //       ListTile(
    //         isThreeLine: false,
    //         title: const Text("Cambodia Store"),
    //         subtitle: const Text("Just now"),
    //         trailing: const Icon(Icons.more_horiz),
    //         leading: Container(
    //           width: 50,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(15),
    //             image: DecorationImage(
    //               image: AssetImage('imageAccount'),
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           child: null,
    //         ),
    //       ),
    //       const SizedBox(
    //         width: double.infinity,
    //         height: 100,
    //         child: Center(
    //           child: Text(
    //             "Welcome to Cambodia Kingdom of Wonder",
    //             style: TextStyle(fontSize: 20),
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //       ),
    //       Container(
    //         margin: const EdgeInsets.only(
    //           top: 10,
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               margin: const EdgeInsets.only(
    //                 left: 10,
    //               ),
    //               child: Text(
    //                 "👍😂😍 $likenumber1",
    //                 style: const TextStyle(fontSize: 17),
    //               ),
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(
    //                 right: 10,
    //               ),
    //               child: const Text(
    //                 "89 Comments",
    //                 style: TextStyle(fontSize: 17),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 2,
    //         margin: const EdgeInsets.only(
    //           top: 20,
    //         ),
    //         color: Colors.black12,
    //       ),
    //       Row(
    //         children: [
    //           Expanded(
    //             flex: 1,
    //             child: SizedBox(
    //               height: 45,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {
    //                       setState(
    //                         () {
    //                           like1 = Colors.blue;
    //                           likenumber1 = 46;
    //                         },
    //                       );
    //                     },
    //                     icon: const Icon(Icons.thumb_up_alt_outlined),
    //                     color: like1,
    //                   ),
    //                   const SizedBox(
    //                     width: 0,
    //                   ),
    //                   Text(
    //                     "Like",
    //                     style: TextStyle(fontSize: 18, color: like1),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: SizedBox(
    //               height: 45,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: const [
    //                   Icon(Icons.comment_outlined),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   Text(
    //                     "Comment",
    //                     style: TextStyle(fontSize: 18),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Expanded(
    //             flex: 1,
    //             child: SizedBox(
    //               height: 45,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: const [
    //                   Icon(Icons.send_outlined),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   Text(
    //                     "Send",
    //                     style: TextStyle(fontSize: 18),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    // Container(
    //   width: double.infinity,
    //   height: 2,
    //   margin: const EdgeInsets.only(bottom: 20),
    //   color: Colors.black12,
    // );
    // Container(
    //   padding: const EdgeInsets.all(10),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //           padding: const EdgeInsets.all(5),
    //           child: const CircleAvatar(
    //             backgroundColor: Colors.red,
    //             child: CircleAvatar(
    //               radius: 18,
    //               backgroundImage: NetworkImage(
    //                   "https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-1/271853594_3212353095756512_4030361620936344763_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeF6UDlAHPB_Gaq44JE6wiEMovGAbjbOyw2i8YBuNs7LDQc6liZcizBgV6yPaga-X7B9TWx5ZoEVRmULgXLGPWHH&_nc_ohc=DDOkjQf-A2gAX88uYFb&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-jLcNLwOJmVnRatH1og3QRjf6-ZvDVTc4Jw2cPiOrfCg&oe=6222E278"),
    //             ),
    //           )),
    //       Column(
    //         children: [
    //           Container(
    //               decoration: BoxDecoration(
    //                 color: Colors.grey[300],
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               width: 230,
    //               height: 110,
    //               padding: const EdgeInsets.all(15),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: const [
    //                   Text(
    //                     "Zak Blem 27",
    //                     style: TextStyle(fontSize: 20, color: Colors.blue),
    //                     // textAlign: TextAlign.center,
    //                   ),
    //                   Text(
    //                     "Sahitah Bigoss 💕👍🙌 !! ",
    //                     style: TextStyle(fontSize: 20),
    //                     // textAlign: TextAlign.center,
    //                   ),
    //                 ],
    //               )),
    //           SizedBox(
    //             width: 230,
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               children: [
    //                 InkWell(
    //                     onTap: () {
    //                       setState(() {
    //                         likeComment = Colors.blue;
    //                       });
    //                     },
    //                     child: Text(
    //                       "Like",
    //                       style: TextStyle(color: likeComment),
    //                     )),
    //                 const Text("Reply"),
    //                 const Text("6 💕👍"),
    //               ],
    //             ),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
