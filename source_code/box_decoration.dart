MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Sad! Day perk")),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                ],
              ),
              color: Colors.deepPurple,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.red.withOpacity(0.5),
                    offset: Offset(15.0, 15.0),
                    blurRadius: 10.0),
              ],
            ),
          ),
        ),
      ),
    );