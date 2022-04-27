import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../api/api_base_helper.dart';
import '../model/movie_model.dart';

class MovieController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  final movieList = <MovieModel>[].obs;
  final loading = false.obs;
  Future onFetchMovie() async {
    loading(true);
    // loading.value = true;
    apiBaseHelper
        .onNetworkRequesting(
            fullUrls: 'https://api.imgflip.com/get_memes',
            url: '',
            methode: METHODE.get,
            isAuthorize: false)
        .then((response) {
      movieList.clear();
      var templist = response['data']['memes'];
      templist.map((e) {
        movieList.add(MovieModel.fromJson(e));
      }).toList();
      loading(false);
      debugPrint('Response = $templist');
    }).onError((error, stackTrace) {
      loading(false);
      movieList.clear();
    });
  }

  @override
  void onInit() {
    onFetchMovie();
    super.onInit();
  }
}
