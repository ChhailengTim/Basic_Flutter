MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 500.0,
              height: 500.0,
              color: Colors.pink,
              child: const Icon(
                Icons.camera,
                size: 100.0,
              ),
            ),
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.green,
              child: const Icon(
                Icons.account_box,
                size: 30.0,
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.orange,
              child: const Icon(
                Icons.place,
                size: 70.0,
              ),
            ),
            Positioned(
              right: 10.0,
              bottom: 10.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurple,
                child: const Icon(
                  Icons.info,
                  size: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );