part of 'services.dart';

class MerchandiseService {
  static Future<ApiReturnValue<List<Merchandise>>> getMerchandise(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURLApi + 'merchandise';
    var response = await client.get(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer ${User.token}"
      },
    );
    print(response.body);
    var data = jsonDecode(response.body);
    List<Merchandise> merchandise =
        (data as Iterable).map((e) => Merchandise.fromJson(e)).toList();
    return ApiReturnValue(value: merchandise);
    //
    // return ApiReturnValue(message: "Wrong email or password");
  }
}
