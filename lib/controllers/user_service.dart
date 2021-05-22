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
    SharedPreferenceHelper()
        .saveUserNoAnggota(data["data"]["user"]["no_anggota"]);
    SharedPreferenceHelper().saveUserNpk(data["data"]["user"]["npk"]);
    SharedPreferenceHelper()
        .saveUserNamaPlant(data["data"]["user"]["nama_plants"]);
    SharedPreferenceHelper()
        .saveUserNamaDept(data["data"]["user"]["nama_dept"]);
    SharedPreferenceHelper().saveUserName(data["data"]["user"]["name"]);
    SharedPreferenceHelper()
        .saveUserTempatLahir(data["data"]["user"]["tempat_lahir"]);
    SharedPreferenceHelper()
        .saveUserTanggalLahir(data["data"]["user"]["tanggal_lahir"]);
    SharedPreferenceHelper()
        .saveUserJenisKelamin(data["data"]["user"]["nama_jeniskelamin"]);
    SharedPreferenceHelper().saveUserAlamat(data["data"]["user"]["alamat"]);
    SharedPreferenceHelper()
        .saveUserPekerjaan(data["data"]["user"]["pekerjaan"]);
    SharedPreferenceHelper().saveUserPhoneNumber(data["data"]["user"]["hp"]);
    SharedPreferenceHelper().saveUserAgama(data["data"]["user"]["nama_agama"]);
    SharedPreferenceHelper()
        .saveUserStatusPernikahan(data["data"]["user"]["status_pernikahan"]);
    SharedPreferenceHelper()
        .saveUserPendidikan(data["data"]["user"]["nama_pendidikan"]);
    SharedPreferenceHelper()
        .saveUserGolonganDarah(data["data"]["user"]["nama_goldarah"]);
    SharedPreferenceHelper().saveUserEmail(data["data"]["user"]["email"]);
    SharedPreferenceHelper().saveUserPengalamanOrganisasi(
        data["data"]["user"]["pengalaman_organisasi"]);
    SharedPreferenceHelper()
        .saveUserPengalamanKerja(data["data"]["user"]["pengalaman_kerja"]);
    SharedPreferenceHelper()
        .saveUserNamaJabatan(data["data"]["user"]["nama_jabatan"]);
    SharedPreferenceHelper()
        .saveUserStatus(data["data"]["user"]["status_approve"].toString());
    SharedPreferenceHelper().saveUserPicturePath(
        'https://sp-adm.com/img/users/' + data["data"]["user"]["foto"]);

    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<User>> getProfile(String token) async {
    var id = await SharedPreferenceHelper().getUserId();
    var noAnggota = await SharedPreferenceHelper().getUserNoAnggota();
    var npk = await SharedPreferenceHelper().getUserNpk();
    var namaPlant = await SharedPreferenceHelper().getUserNamaPlant();
    var namaDept = await SharedPreferenceHelper().getUserNamaDept();
    var name = await SharedPreferenceHelper().getUserName();
    var tempatLahir = await SharedPreferenceHelper().getUserTempatLahir();
    var tanggalLahir = await SharedPreferenceHelper().getUserTanggalLahir();
    var jenisKelamin = await SharedPreferenceHelper().getUserJenisKelamin();
    var alamat = await SharedPreferenceHelper().getUserAlamat();
    var pekerjaan = await SharedPreferenceHelper().getUserPekerjaan();
    var phoneNumber = await SharedPreferenceHelper().getUserPhoneNumber();
    var agama = await SharedPreferenceHelper().getUserAgama();
    var statusPernikahan =
        await SharedPreferenceHelper().getUserStatusPernikahan();
    var pendidikan = await SharedPreferenceHelper().getUserPendidikan();
    var golonganDarah = await SharedPreferenceHelper().getUserGolonganDarah();
    var email = await SharedPreferenceHelper().getUserEmail();
    var pengalamanOrganisasi =
        await SharedPreferenceHelper().getUserPengalamanOrganisasi();
    var pengalamanKerja =
        await SharedPreferenceHelper().getUserPengalamanKerja();
    var jabatan = await SharedPreferenceHelper().getUserNamaJabatan();
    var status = await SharedPreferenceHelper().getUserStatus();
    var picturePath = await SharedPreferenceHelper().getUserPicturePath();
    var token = await SharedPreferenceHelper().getUserToken();
    User.token = token;
    User value = User(
        id: int.parse(id),
        noAnggota: noAnggota,
        npk: npk,
        namaPlants: namaPlant,
        namaDept: namaDept,
        name: name,
        tempatLahir: tempatLahir,
        tanggalLahir: tanggalLahir,
        jenisKelamin: jenisKelamin,
        alamat: alamat,
        pekerjaan: pekerjaan,
        phoneNumber: phoneNumber,
        agama: agama,
        statusPernikahan: statusPernikahan,
        pendidikan: pendidikan,
        golonganDarah: golonganDarah,
        email: email,
        pengalamanOrganisasi: pengalamanOrganisasi,
        pengalamanKerja: pengalamanKerja,
        namaJabatan: jabatan,
        status: int.parse(status),
        picturePath: picturePath);
    print(value);
    return ApiReturnValue(value: value);

    // return ApiReturnValue(message: "Please try again");
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
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    return ApiReturnValue(
        message: "Pendaftaran berhasil silahkan tunggu email dari kami");
  }
}
