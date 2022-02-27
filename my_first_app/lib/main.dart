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
        appBar: AppBar(
          leading: const Icon(Icons.list),
          title: const Text(
            "ចំរៀងខ្មែរ",
            style: TextStyle(fontFamily: 'Khmer Moul'),
          ),
          actions: const [
            Icon(Icons.search),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl2YGEvL51tXwaKZQxrYxw9X5mwQBb08SJmg&usqp=CAU"),
              title: const Text("Sok Pisey"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
                leading: Image.network(
                    "https://www.khmersongs.net/data/upload/1538474073.jpg"),
                title: const Text("So Nita"),
                subtitle: const Text("New Album 2022"),
                trailing: Wrap(
                  //spacing: 12,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.more_vert),
                        Icon(Icons.alarm),
                      ],
                    ),
                  ],
                )),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1542786926.jpg"),
              title: const Text("So Lika"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1539266167.jpg"),
              title: const Text("Mo Lita"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1539872331.jpg"),
              title: const Text("Mo Nasa"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1537544095-1584761773-.jpg"),
              title: const Text("Ka Vannary"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1537604668.jpg"),
              title: const Text("Na Sovany"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://yt3.ggpht.com/ytc/AKedOLRViaxCXTDeduJ5r8JFtKTZpK6lJ-zd1-nfgZ1k=s176-c-k-c0x00ffffff-no-rj"),
              title: const Text("Kim Yada"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1537432404.jpg"),
              title: const Text("So Jin"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://i.ytimg.com/an/z03dDPGSAUrsQ98oFMPt6Q/featured_channel.jpg?v=617f048e"),
              title: const Text("Ah Momo"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1546783868.jpg"),
              title: const Text("Ly Sasa"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Image.network(
                  "https://www.khmersongs.net/data/upload/1552311589.jpg"),
              title: const Text("Ly Sasa"),
              subtitle: const Text("New Album 2022"),
              trailing: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
