part of '_model.dart';

class UserState {
  int? id;
  String? token;

  UserState({
    required this.id,
    required this.token,
  });

  factory UserState.fromJson(Map<String, dynamic> json) {
    return UserState(
      id: json['data']['id'],
      token: json['data']['token'],
    );
  }
}
