part of 'shared.dart';

class SharedPreferenceHelper {
  static String tokenUserKey = "USERTOKENKEY";
  static String userId = "USERIDKEY";
  static String userNoAnggota = "USERNOANGGOTAKEY";
  static String userNpk = "USERNPKKEY";
  static String userNamaPlant = "USERNAMAPLANTKEY";
  static String userNamaDept = "USERNAMADEPTKEY";
  static String userName = "USERNAMEKEY";
  static String userTempatLahir = "USERTEMPATLAHIRKEY";
  static String userTanggalLahir = "USERTANGGALLAHIRKEY";
  static String userJenisKelamin = "USERJENISKELAMINKEY";
  static String userAlamat = "USERALAMATKEY";
  static String userPekerjaan = "USERPEKERJAANKEY";
  static String userPhoneNumber = "USERPHONENUMBERKEY";
  static String userAgama = "USERAGAMAKEY";
  static String userStatusPernikahan = "USERSTATUSPERNIKAHANKEY";
  static String userPendidikan = "USERPENDIDIKANKEY";
  static String userGolonganDarah = "USERGOLONGANDARAHKEY";
  static String userEmail = "USEREMAILKEY";
  static String userPengalamanOrganisasi = "USERPENGALAMANORGANISASIKEY";
  static String userPengalamanKerja = "USERPENGALAMANKERJAKEY";
  static String userNamaJabatan = "USERNAMAJABATANKEY";
  static String userStatus = "USERSTATUSKEY";
  static String userPicturePath = "USERPICTUREPATHKEY";

  Future<bool> saveUserToken(String getUserToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(tokenUserKey, getUserToken);
  }

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userId, getUserId);
  }

  Future<bool> saveUserNoAnggota(String getUserNoAnggota) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNoAnggota, getUserNoAnggota);
  }

  Future<bool> saveUserNpk(String getUserNpk) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNpk, getUserNpk);
  }

  Future<bool> saveUserNamaPlant(String getUserNamaPlant) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNamaPlant, getUserNamaPlant);
  }

  Future<bool> saveUserNamaDept(String getUserNamaDept) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNamaDept, getUserNamaDept);
  }

  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userName, getUserName);
  }

  Future<bool> saveUserTempatLahir(String getUserTempatLahir) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userTempatLahir, getUserTempatLahir);
  }

  Future<bool> saveUserTanggalLahir(String getUserTanggalLahir) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userTanggalLahir, getUserTanggalLahir);
  }

  Future<bool> saveUserJenisKelamin(String getUserJenisKelamin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userJenisKelamin, getUserJenisKelamin);
  }

  Future<bool> saveUserAlamat(String getUserAlamat) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userAlamat, getUserAlamat);
  }

  Future<bool> saveUserPekerjaan(String getUserPekerjaan) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPekerjaan, getUserPekerjaan);
  }

  Future<bool> saveUserPhoneNumber(String getUserPhoneNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPhoneNumber, getUserPhoneNumber);
  }

  Future<bool> saveUserAgama(String getUserAgama) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userAgama, getUserAgama);
  }

  Future<bool> saveUserStatusPernikahan(String getUserStatusPernikahan) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userStatusPernikahan, getUserStatusPernikahan);
  }

  Future<bool> saveUserPendidikan(String getUserPendidikan) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPendidikan, getUserPendidikan);
  }

  Future<bool> saveUserGolonganDarah(String getUserGolonganDarah) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userGolonganDarah, getUserGolonganDarah);
  }

  Future<bool> saveUserEmail(String getUserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmail, getUserEmail);
  }

  Future<bool> saveUserPengalamanOrganisasi(
      String getUserPengalamanOrganisasi) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(
        userPengalamanOrganisasi, getUserPengalamanOrganisasi);
  }

  Future<bool> saveUserPengalamanKerja(String getUserPengalamanKerja) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPengalamanKerja, getUserPengalamanKerja);
  }

  Future<bool> saveUserNamaJabatan(String getUserNamaJabatan) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNamaJabatan, getUserNamaJabatan);
  }

  Future<bool> saveUserStatus(String getUserStatus) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userStatus, getUserStatus);
  }

  Future<bool> saveUserPicturePath(String getUserPicturePath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPicturePath, getUserPicturePath);
  }

  // get data
  Future<String> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenUserKey);
  }

  Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userId);
  }

  Future<String> getUserNoAnggota() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userId);
  }

  Future<String> getUserNpk() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNpk);
  }

  Future<String> getUserNamaPlant() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNamaPlant);
  }

  Future<String> getUserNamaDept() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNamaDept);
  }

  Future<String> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userName);
  }

  Future<String> getUserTempatLahir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userTempatLahir);
  }

  Future<String> getUserTanggalLahir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userTanggalLahir);
  }

  Future<String> getUserJenisKelamin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userJenisKelamin);
  }

  Future<String> getUserAlamat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userAlamat);
  }

  Future<String> getUserPekerjaan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPekerjaan);
  }

  Future<String> getUserPhoneNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPhoneNumber);
  }

  Future<String> getUserAgama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userAgama);
  }

  Future<String> getUserStatusPernikahan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userStatusPernikahan);
  }

  Future<String> getUserPendidikan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPendidikan);
  }

  Future<String> getUserGolonganDarah() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userGolonganDarah);
  }

  Future<String> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmail);
  }

  Future<String> getUserPengalamanOrganisasi() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPengalamanOrganisasi);
  }

  Future<String> getUserPengalamanKerja() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPengalamanKerja);
  }

  Future<String> getUserNamaJabatan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNamaJabatan);
  }

  Future<String> getUserStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userStatus);
  }

  Future<String> getUserPicturePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPicturePath);
  }
}
