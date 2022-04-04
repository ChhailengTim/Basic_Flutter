MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: const Color.fromRGBO(66, 155, 243, 1.0),
          child: const Text(
            "Hello Flutter",
            style: TextStyle(color: Colors.red, fontSize: 32.0),
          ),
          constraints: const BoxConstraints(
            maxHeight: 300.0,
            maxWidth: 200.0,
            minWidth: 150.0,
            minHeight: 150.0,
          ),
        ),
      ),
    );