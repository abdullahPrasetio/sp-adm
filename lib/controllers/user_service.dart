part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(String email, String password,
      {http.Client client}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
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
      // print(jsonDecode(response.statusCode.toString()));
      // if (response.statusCode == 422) {
      //   var error = jsonDecode(response.body);
      // }
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);

    User.token = data["data"]["access_token"];
    User value = User.fromJson(data['data']['user']);
    // bool result = await prefs.setString('user', jsonEncode(value));
    // print(result);
    return ApiReturnValue(value: value);
  }
}
