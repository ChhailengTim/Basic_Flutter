import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/movie_controller.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  Widget movieCard({String? imgUrl, title}) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imgUrl ??
                        'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930'))),
            margin: const EdgeInsets.only(bottom: 8),
          ),
          Text(
            title ?? "--",
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MovieController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Latest Movie",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Obx(
                () => controller.loading.value
                    ? const CircularProgressIndicator()
                    : Row(
                        children: controller.movieList
                            .map((e) => movieCard(imgUrl: e.url, title: e.name))
                            .toList(),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
