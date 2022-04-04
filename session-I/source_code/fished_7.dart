return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          title: const Text("Hello Flutter!"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "It is cool right?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.network("http://bit.ly/2IGluzb")),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Contact: 012 33 25 38",
                      style: TextStyle(fontSize: 20.0, color: Colors.red)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text(
                    "www.facebook.com",
                    style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Image.network("http://bit.ly/2IGluzb")),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.emoji_emotions),
                title: Text("About us"),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.place),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.play_circle_filled)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
          ),
        ),
      ),
    );