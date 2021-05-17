part of 'pages.dart';

class RegisterController extends StatelessWidget {
  TextEditingController npkController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
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
                    decoration: InputDecoration(
                      hintText: "Divisi",
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
                  onPressed: () {},
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
