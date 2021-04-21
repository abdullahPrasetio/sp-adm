part of 'models.dart';

class User extends Equatable {
  final int id;
  final String noAnggota;
  final String npk;
  final String namaPlants;
  final String namaDept;
  final String name;
  final String tempatLahir;
  final String tanggalLahir;
  final String jenisKelamin;
  final String alamat;
  final String pekerjaan;
  final String phoneNumber;
  final String agama;
  final String statusPernikahan;
  final String pendidikan;
  final String golonganDarah;
  final String email;
  final String pengalamanOrganisasi;
  final String pengalamanKerja;
  final String namaJabatan;
  final int status;
  final String picturePath;
  static String token;

  User(
      {this.id,
      this.noAnggota,
      this.npk,
      this.namaPlants,
      this.namaDept,
      this.name,
      this.tempatLahir,
      this.tanggalLahir,
      this.jenisKelamin,
      this.alamat,
      this.pekerjaan,
      this.phoneNumber,
      this.agama,
      this.statusPernikahan,
      this.pendidikan,
      this.golonganDarah,
      this.email,
      this.pengalamanOrganisasi,
      this.pengalamanKerja,
      this.namaJabatan,
      this.status,
      this.picturePath});

  factory User.fromJson(Map<String, dynamic> data) => User(
      id: data['id'],
      noAnggota: data['no_anggota'],
      npk: data['npk'],
      namaPlants: data['nama_plants'],
      namaDept: data['nama_dept'],
      name: data['name'],
      tempatLahir: data['tempat_lahir'],
      tanggalLahir: data['tanggal_lahir'],
      jenisKelamin: data['nama_jeniskelamin'],
      alamat: data['alamat'],
      pekerjaan: data['pekerjaan'],
      phoneNumber: data['hp'],
      agama: data['nama_agama'],
      statusPernikahan: data['status_pernikahan'],
      pendidikan: data['nama_pendidikan'],
      golonganDarah: data['nama_goldarah'],
      email: data['email'],
      pengalamanOrganisasi: data['pengalaman_organisasi'],
      pengalamanKerja: data['pengalaman_kerja'],
      namaJabatan: data['nama_jabatan'],
      status: data['status_approve'],
      picturePath: data['foto']);
  @override
  List<Object> get props => [
        id,
        noAnggota,
        npk,
        namaPlants,
        namaDept,
        name,
        tempatLahir,
        tanggalLahir,
        jenisKelamin,
        alamat,
        pekerjaan,
        phoneNumber,
        agama,
        statusPernikahan,
        pendidikan,
        golonganDarah,
        email,
        pengalamanOrganisasi,
        pengalamanKerja,
        namaJabatan,
        status,
        picturePath
      ];
}
