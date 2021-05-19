part of 'pages.dart';

class RegisterModal extends StatefulWidget {
  RegisterModal({Key key}) : super(key: key);

  @override
  _RegisterModalState createState() => _RegisterModalState();
}

class _RegisterModalState extends State<RegisterModal> {
  TextEditingController keyController = TextEditingController();
  TextEditingController npkController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController plantController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController divisiController = TextEditingController();
  TextEditingController tempatLahirController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController agamaController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController pendidikanController = TextEditingController();
  TextEditingController goldarController = TextEditingController();
  TextEditingController pengalamanOrganisasiController =
      TextEditingController();
  TextEditingController pengalamanKerjaController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF737373),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Pendaftaran Anggota Baru',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: keyController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "SPADM KEY",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: npkController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "NPK",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: namaController,
                    decoration: InputDecoration(
                      hintText: "Nama",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: plantController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Plant",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: deptController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Departement",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: tempatLahirController,
                    decoration: InputDecoration(
                      hintText: "Tempat Lahir",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: tanggalLahirController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "Tanggal Lahir",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: jkController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Jenis Kelamin",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: alamatController,
                    decoration: InputDecoration(
                      hintText: "Alamat",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "HP",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: agamaController,
                    decoration: InputDecoration(
                      hintText: "Agama",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: statusController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Status Pernikahan",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: pendidikanController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Pendidikan",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: goldarController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Golongan Darah",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: pengalamanOrganisasiController,
                    decoration: InputDecoration(
                      hintText: "Pengalaman Organisasi",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: pengalamanKerjaController,
                    decoration: InputDecoration(
                      hintText: "Pengalaman Kerja",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(65, 20, 65, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color(0xff87CEEB))),
                  onPressed: () async {
                    var result = await context.bloc<UserCubit>().signUp(
                        User(
                          npk: npkController.text,
                          name: namaController.text,
                          email: emailController.text,
                          namaPlants: plantController.text,
                          namaDept: deptController.text,
                          tempatLahir: tempatLahirController.text,
                          tanggalLahir: tanggalLahirController.text,
                          jenisKelamin: jkController.text,
                          alamat: alamatController.text,
                          phoneNumber: phoneController.text,
                          agama: agamaController.text,
                          statusPernikahan: statusController.text,
                          pendidikan: pendidikanController.text,
                          golonganDarah: goldarController.text,
                          pengalamanOrganisasi:
                              pengalamanOrganisasiController.text,
                          pengalamanKerja: pengalamanKerjaController.text,
                        ),
                        keyController.text);
                    Get.snackbar(
                      "",
                      "",
                      backgroundColor: "D9435E".toColor(),
                      icon: Icon(MdiIcons.closeCircleOutline,
                          color: Colors.white),
                      titleText: Text(
                        "Keterangan",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      messageText: Text(
                        result,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    );
                  },
                  color: Color(0xff03203F),
                  textColor: Colors.white,
                  child: Text("Register", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
