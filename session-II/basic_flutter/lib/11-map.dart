class Product {
  int id;
  String name;
  List<Image> images;

  Product({required this.id, required this.name, required this.images});

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        images: List<Image>.from(json['image'].map((x) => Image.fromMap(x))),
      );
}

class Image {
  int id;
  String imageName;

  Image({
    required this.id,
    required this.imageName,
  });

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        id: json['id'],
        imageName: json['imageName'],
      );
}
