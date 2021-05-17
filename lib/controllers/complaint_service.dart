part of 'services.dart';

class ComplaintService {
  static Future<ApiReturnValue<List<Complaint>>> getComplaint(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURLApi + 'pengaduan';

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
    List<Complaint> complaint =
        (data["data"] as Iterable).map((e) => Complaint.fromJson(e)).toList();
    return ApiReturnValue(value: complaint);
  }
}
