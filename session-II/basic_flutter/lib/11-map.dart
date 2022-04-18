import 'dart:convert';

class Photo {
  int albumId;
  int id;
  String title;
  String url;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
  });

  factory Photo.fromMap(Map<String, dynamic> json) => Photo(
        albumId: json['albumid'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
      );
}

List<Photo> photoFromJson(String str) {
  return List<Photo>.from(json.decode(str).map((x) => Photo.fromMap(x)));
}
