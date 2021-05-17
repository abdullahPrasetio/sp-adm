part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(String email, String password,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }
    String url = baseURLApi + 'login';
    var response = await client.post(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    // print(jsonDecode(response.body));
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);

    User.token = data["data"]["access_token"];
    User value = User.fromJson(data['data']['user']);
    SharedPreferenceHelper().saveUserToken(data["data"]["access_token"]);
    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<User>> getProfile(String token,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURLApi + 'profile';

    var response = await client.post(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer " + token
      },
    );

    // print(jsonDecode(response.body));
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);

    User.token = token;
    User value = User.fromJson(data[0]);
    return ApiReturnValue(value: value);
  }
}
