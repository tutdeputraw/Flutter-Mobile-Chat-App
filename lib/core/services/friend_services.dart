part of '_service.dart';

class FriendServices {
  static const url = 'friend/';

  static Future<bool> addFriend({required int userId, required int friendId}) async {
    final response = await http.post(
      Uri.parse(baseURL + url + 'add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'userId': userId,
        'friendId': friendId,
      }),
    );

    print('response.statusCode:'+response.statusCode.toString());

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<UserModel>> getFriends({required String userId}) async {
    print('userId: '+userId);
    final response = await http.get(Uri.parse(baseURL + url + '?id=' + userId));

    if (response.statusCode == 200) {
      return userModelFromJsonA(response.body);
    } else {
      return [];
    }
  }
}
