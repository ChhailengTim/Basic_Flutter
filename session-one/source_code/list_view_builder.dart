MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Example"),
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                fruits[index],
                style: const TextStyle(fontSize: 22.0),
              ),
            );
          },
        ),
      ),
    );