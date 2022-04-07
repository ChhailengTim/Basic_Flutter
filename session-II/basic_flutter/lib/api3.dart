class User {
  int userId;
  int id;
  String title;
  String body;

  User(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory User.fromMap(Map<String, dynamic> json) {
    return User(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "body": body,
    };
  }
}
