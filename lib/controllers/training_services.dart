part of 'services.dart';

class TrainingService {
  static Future<ApiReturnValue<List<Training>>> getTrainings(
      {http.Client client}) async {
    client ??= http.Client();
    String url = baseURLApi + 'training';

    var response = await client.get(Uri.parse(url), headers: {
      'Accept': 'Application/json',
      'Content-Type': 'Application/json',
      'Authorization': 'Bearer ${User.token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);

    List<Training> trainings =
        (data as Iterable).map((e) => Training.fromJson(e)).toList();
    return ApiReturnValue(value: trainings);
  }
}
