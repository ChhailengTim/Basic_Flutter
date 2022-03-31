MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.pink,
              child: const Icon(
                Icons.camera,
                size: 100.0,
              ),
            ),
            Container(
                color: Colors.green,
                child: const Icon(
                  Icons.account_box,
                  size: 30.0,
                )),
            Container(
              color: Colors.deepPurple,
              child: const Icon(
                Icons.place,
                size: 70.0,
              ),
            ),
            Container(
              color: Colors.orange,
              child: const Icon(
                Icons.info,
                size: 50.0,
              ),
            ),
          ],
        ),
      ),
    );