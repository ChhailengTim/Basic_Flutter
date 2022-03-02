// // import 'package:bttom_sheet/actionbtn.dart';
// // import 'package:bttom_sheet/feedbox.dart';
// // import 'package:bttom_sheet/storytile.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //i'm going to disable the debug banner
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //Let's add the color code for our project
//   Color bgBlack = Color(0xFF1a1a1a);
//   Color mainBlack = Color(0xFF262626);
//   Color fbBlue = Color(0xFF2D88FF);
//   Color mainGrey = Color(0xFF505050);

//   //Here I'm going to import a list of images that we will use for the profile picture and the storys
//   List<String> avatarUrl = [
//     "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
//     "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
//     "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
//     "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
//   ];
//   List<String> storyUrl = [
//     "https://images.unsplash.com/photo-1600055882386-5d18b02a0d51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80",
//     "https://images.unsplash.com/photo-1600174297956-c6d4d9998f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
//     "https://images.unsplash.com/photo-1600008646149-eb8835bd979d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80",
//     "https://images.unsplash.com/photo-1502920313556-c0bbbcd00403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //let's add the  bg color
//       backgroundColor: bgBlack,
//       //let's add the app bar
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: mainBlack,
//         title: Text(
//           "Facebook",
//           style: TextStyle(
//             color: fbBlue,
//           ),
//         ),
//         //Now let's add the action button
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.menu),
//           ),
//         ],
//       ),

//       //Now let's work on the body
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               //First of all we need to creat the post editor
//               Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: mainBlack,
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 8.0, vertical: 10.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25.0,
//                             backgroundImage: NetworkImage(avatarUrl[0]),
//                           ),
//                           SizedBox(
//                             width: 10.0,
//                           ),
//                           Expanded(
//                             child: TextField(
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                               decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.only(left: 25.0),
//                                   hintText: "Post something...",
//                                   filled: true,
//                                   fillColor: mainGrey,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(30.0),
//                                     borderSide: BorderSide.none,
//                                   )),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 5.0,
//                       ),
//                       Divider(
//                         color: mainGrey,
//                         thickness: 1.5,
//                       ),
//                       //Now we will create a Row of three button
//                       Row(
//                         children: [
//                           actionButton(
//                               Icons.live_tv, "Live", Color(0xFFF23E5C)),
//                           actionButton(
//                               Icons.image, "Picture", Color(0xFF58C472)),
//                           actionButton(Icons.insert_emoticon, "Activity",
//                               Color(0xFFF8C03E)),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               //We have finished the Post editor now let's create
//               //the story's timeline
//               // let's first create a new file for the custom widget
//               //now let's buil the container
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 height: 160.0,
//                 width: double.infinity,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     storyTile(avatarUrl[0], storyUrl[0], "Ling chang"),
//                     storyTile(avatarUrl[1], storyUrl[1], "Ling chang"),
//                     storyTile(avatarUrl[2], storyUrl[2], "Ling chang"),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               //Now let's create the news feed
//               //first we will make the custom container of the feed
//               //Ok let's test our widget
//               feedBox(avatarUrl[0], "Doctor code", "6 min",
//                   "I just wrote something", ""),
//               feedBox(avatarUrl[1], "Joseph Joestar", "6 min",
//                   "It's pretty good I like it", storyUrl[2]),
//               feedBox(avatarUrl[2], "Giorno giovana", "Yesterday",
//                   "I'm Giorno Giovana and I have a Dream", storyUrl[1]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
