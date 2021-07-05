part of 'services.dart';

class ForkomService {
  static Future<ApiReturnValue<List<Forkom>>> getForkom(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURLApi + 'forkom';
    var response = await client.get(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer ${User.token}"
      },
    );
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);
    print(data);
    List<Forkom> forkom =
        (data as Iterable).map((e) => Forkom.fromJson(e)).toList();
    return ApiReturnValue(value: forkom);
    //
    // return ApiReturnValue(message: "Wrong email or password");
  }
}
