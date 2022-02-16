MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Column(
          children: const [
            Icon(
              Icons.camera,
              size: 200,
            ),
            Icon(
              Icons.account_box,
              size: 230.0,
            ),
            Icon(
              Icons.place,
              size: 200.0,
            ),
            Icon(
              Icons.info,
              size: 250.0,
            ),
          ],
        ),
      ),
    );