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

  static Future<ApiReturnValue<Complaint>> addComplaint(
      String type, String complaint, String spadmKey,
      {http.Client client}) async {
    client ??= http.Client();
    var id = await SharedPreferenceHelper().getUserId();
    String url = baseURLApi + 'inputpengaduan';
    print(id);
    var response = await client.post(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": "Bearer ${User.token}"
        },
        body: jsonEncode({
          'type_pengaduan': type,
          'user': id,
          'pengaduan': complaint,
          'spadm_uk': spadmKey
        }));

    print(jsonDecode(response.body));
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);
    print(data);

    return ApiReturnValue(message: "Complaint berhasil di tambah");
  }
}
