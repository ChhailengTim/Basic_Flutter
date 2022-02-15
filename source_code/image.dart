MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.orange,
          width: 200.0,
          height: 200.0,
          child: Image.network(
            "http://bit.ly/2IGluzb",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );