MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: const Color.fromRGBO(66, 155, 243, 1.0),
          child: const Text(
            "Hello Flutter",
            style: TextStyle(color: Colors.red, fontSize: 32.0),
          ),
          //margin: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 50.0,
          ),
          margin: const EdgeInsets.fromLTRB(
            20.0,
            30.0,
            40.0,
            50.0,
          ),
          margin: const EdgeInsets.only(
            left: 20.0,
            bottom: 40.0,
            right: 40.0,
            top: 50.0,
          ),
        ),
      ),
    );