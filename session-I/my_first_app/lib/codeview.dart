// import 'package:facebookclone/Screens/HomeScreen.dart';
// import 'package:facebookclone/Screens/OnDemandPostScreen.dart';
// import 'package:facebookclone/Widget/AppBarButton.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// void main() {
//   runApp(HomePage());
// }

// class HomePage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   final TrackingScrollController scrollController = TrackingScrollController();
//   late TabController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = new TabController(length: 4, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: TabBarView(
//       controller: controller,
//       children: [
//         HomeScreen(),
//         OnDemaindPostScreen(),
//         Center(
//           child: Text('Notification'),
//         ),
//         Center(
//           child: Text('Morer'),
//         )
//       ],
//     ));
//   }
// }

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);

//   final TabBar _tabBar;

//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       color: Colors.white,
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
