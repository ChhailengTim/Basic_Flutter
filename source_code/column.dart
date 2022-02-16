MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.camera,
              size: 100.0,
            ),
            Icon(
              Icons.account_box,
              size: 30.0,
            ),
            Icon(
              Icons.place,
              size: 70.0,
            ),
            Icon(
              Icons.stay_primary_landscape,
              size: 50.0,
            ),
          ],
        ),
      ),
    );