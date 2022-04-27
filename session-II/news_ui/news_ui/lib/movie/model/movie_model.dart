class MovieModel {
  String? id;
  String? name;
  String? url;
  int? width;
  int? height;
  int? boxCount;

  MovieModel(
      {this.id, this.name, this.url, this.width, this.height, this.boxCount});

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
    boxCount = json['box_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    data['box_count'] = boxCount;
    return data;
  }
}
