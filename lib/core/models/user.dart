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
      id: json["id"],
      username: json["username"],
    );
  }

  factory UserModel.fromJsonA(Map<String, dynamic> json) {
    return UserModel(
      id: json["user"]["id"],
      username: json["user"]["username"],
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

List<UserModel> userModelFromJsonA(String str) {
  return List<UserModel>.from(
    jsonDecode(str).map((x) {
      return UserModel.fromJsonA(x);
    }),
  );
}

String userModelToJson(List<UserModel> data) {
  return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

String addFriendToJson(UserModel data) => json.encode(data.toJson());
