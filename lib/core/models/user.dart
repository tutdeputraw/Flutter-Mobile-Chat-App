part of '_model.dart';

class UserModel {
  int id;
  String username;
  String? imageUrl;

  UserModel({
    this.id = -1,
    this.username = '',
    this.imageUrl,
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
      imageUrl: json["user"]["imageUrl"],
    );
  }

  factory UserModel.setUserInfo(Map<String, dynamic> json) {
    return UserModel(
      username: json["username"],
      imageUrl: json["imageUrl"],
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

UserModel userModelSetUserInfo(String str) {
  return UserModel.setUserInfo(json.decode(str));
}

String userModelToJson(List<UserModel> data) {
  return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

String addFriendToJson(UserModel data) => json.encode(data.toJson());
