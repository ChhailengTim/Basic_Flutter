MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Sad! Day perk")),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: 200.0,
            height: 200.0,
            transform: Matrix4.rotationZ(0.2),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          ),
        ),
      ),
    );