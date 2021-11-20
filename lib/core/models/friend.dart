part of '_model.dart';

class Friend {
  int id;
  String name;

  Friend({
    required this.id,
    this.name = '',
  });

  factory Friend.fromJson(Map<String, dynamic> json) {
    return Friend(
      id: json["user"]["id"],
      name: json["user"]["username"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "friendId": id,
      "name": name,
    };
  }
}

List<Friend> friendFromJson(String str) {
  return List<Friend>.from(json.decode(str).map((x) => Friend.fromJson(x)));
}

String friendToJson(List<Friend> data) {
  return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
