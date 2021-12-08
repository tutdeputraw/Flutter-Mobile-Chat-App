import 'dart:convert';

import 'package:flutter_chat_app/core/models/_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const baseURL = 'http://192.168.0.7:3000';

  static Future<bool> addFriend(
      {required int userId, required int friendId}) async {
    final response = await http.post(
      Uri.parse('$baseURL/friend/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'userId': userId,
        'friendId': friendId,
      }),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<UserModel>> getFriends({required String userId}) async {
    final response = await http.get(Uri.parse('$baseURL/friend?id=$userId'));

    if (response.statusCode == 200) {
      return userModelFromJsonA(response.body);
    } else {
      return [];
    }
  }
}
