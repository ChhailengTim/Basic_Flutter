MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'អក្សរខ្មែរ',
            style: TextStyle(fontFamily: "Khmer Moul", color: Colors.black),
          ),
        ),
        body: IconButton(
          alignment: Alignment.center,
          onPressed: () {
            debugPrint("icon home");
          },
          icon: const Icon(
            Icons.home,
            size: 50.0,
            color: Colors.pink,
          ),
        ),
      ),
    );