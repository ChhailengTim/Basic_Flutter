class User {
  String? id;
  String? name;
  int? score;

  User({this.id, this.name, this.score});

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        score: json['score'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'score': score,
      };
}
