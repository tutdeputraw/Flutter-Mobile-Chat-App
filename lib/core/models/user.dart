part of '_model.dart';

class UserModel {
  int id;
  String username;

  UserModel({
    this.id = -1,
    this.username = '',
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json["username"],
      id: json["id"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "id": id,
    };
  }
}

List<UserModel> userModelFromJson(String str) {
  return List<UserModel>.from(
    jsonDecode(str).map((x) {
      return UserModel.fromJson(x);
    }),
  );
}

String userModelToJson(List<UserModel> data) {
  return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

String addFriendToJson(UserModel data) => json.encode(data.toJson());
