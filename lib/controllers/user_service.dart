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
    SharedPreferenceHelper().saveUserId(data["data"]["user"]["id"].toString());
    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<User>> getProfile(String token,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURLApi + 'profile';
    print(Uri.parse(url));
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
    print(token);
    print(data);
    User.token = token;
    User value = User.fromJson(data[0]);
    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<User>> signUp(User user, String spadmKey,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURLApi + 'register';
    var response = await client.post(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          'spadm_uk': spadmKey,
          'npk': user.npk,
          'name': user.name,
          'email': user.email,
          'plant': user.namaPlants,
          'dept': user.namaDept,
          'tempat_lahir': user.tempatLahir,
          'tanggal_lahir': user.tanggalLahir,
          'jenis_kelamin': user.jenisKelamin,
          'alamat': user.alamat,
          'hp': user.phoneNumber,
          'agama': user.agama,
          'status_pernikahan': user.statusPernikahan,
          'pendidikan': user.pendidikan,
          'gol_darah': user.golonganDarah,
          'pengalaman_organisasi': user.pengalamanOrganisasi,
          'pengalaman_kerja': user.pengalamanKerja
        }));
    print(response.body);
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    return ApiReturnValue(
        message: "Pendaftaran berhasil silahkan tunggu email dari kami");
  }
}
