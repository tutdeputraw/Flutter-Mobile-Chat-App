part of '_service.dart';

class UserServices {
  final url = 'user/';

  Future<UserState?> signIn({email, password}) async {
    final urlParams = 'sign-in/' + email + '/' + password;
    final response = await http.get(Uri.parse(baseURL + url + urlParams));

    if (response.statusCode == 200) {
      return UserState.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<bool> signUp({username, email, password}) async {
    final queryParams = {
      'username': username,
      'email': email,
      'password': password
    };
    final response = await http.post(
      Uri.parse(baseURL + url + 'sign-up'),
      body: queryParams,
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> signOut(id) async {
    final response = await http.get(
      Uri.parse(baseURL + url + 'sign-out/' + id),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
