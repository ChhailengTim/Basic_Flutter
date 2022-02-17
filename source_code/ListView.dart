ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          children: [
            const Text("Apple"),
            const Icon(Icons.home),
            RaisedButton(
              onPressed: () {},
              child: const Text(
                "Click me!",
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 200.0,
              child: Image.network("http://bit.ly/2IGluzb"),
            ),
          ],
        ),