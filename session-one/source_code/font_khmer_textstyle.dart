MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('សួស្តី!'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            "ភាសាខ្មែរ",
            style: TextStyle(
                fontSize: 50.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
