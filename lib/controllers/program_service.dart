part of 'services.dart';

class ProgramService {
  static Future<ApiReturnValue<List<Program>>> getPrograms(
      {http.Client client}) async {
    client ??= http.Client();
    String url = baseURLApi + 'program';

    var response = await client.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer ${User.token}"
    });
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    print(response.body);
    var data = jsonDecode(response.body);
    List<Program> programs = (data['data']['data'] as Iterable)
        .map((e) => Program.fromJson(e))
        .toList();
    return ApiReturnValue(value: programs);
  }
}
