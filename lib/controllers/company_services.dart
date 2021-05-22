part of 'services.dart';

class CompanyServices {
  static Future<ApiReturnValue<CompanyHistory>> getHistory(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURLApi + 'sejarah';
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'Apllication/json',
      "Accept": 'Apllication/json',
      'Authorization': 'Bearer ${User.token}',
    });

    print(response.body);
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);
    CompanyHistory value = CompanyHistory.fromJson(data["data"][0][0]);

    return ApiReturnValue(value: value);
  }
}
