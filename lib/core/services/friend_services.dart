part of '_service.dart';

class FriendServices {
  static const url = 'friend/';

  Future<bool> addFriend({required int userId, required int friendId}) async {
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

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<Friend>> getFriends({required String userId}) async {
    final response = await http.get(Uri.parse(baseURL + url + '?id=' + userId));

    if (response.statusCode == 200) {
      return friendFromJson(response.body);
    } else {
      return [];
    }
  }
}
