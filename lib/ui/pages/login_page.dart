part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //Setting keyboard tidak resize backround
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/images/uk-white.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                  height: 40,
                  width: 230,
                  child: Image.asset("assets/images/sp-adm.png")),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 400, 40, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        cursorColor: Colors.white,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff87CEEB)),
                            ),
                            icon: Icon(
                              Icons.person,
                              color: Color(0xffffffff),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff87CEEB))),
                            //labelText: "Username",
                            hintText: "Username",
                            hintStyle: TextStyle(color: Color(0xffffffff))),
                      ),
                      TextField(
                        controller: passwordController,
                        cursorColor: Colors.white,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff87CEEB)),
                            ),
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xffffffff),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff87CEEB))),
                            //labelText: "Password ",
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xffffffff))),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 70, 20, 30),
                        child: RaisedButton(
                          onPressed: () async {
                            await context.bloc<UserCubit>().signIn(
                                emailController.text, passwordController.text);
                            UserState state = context.bloc<UserCubit>().state;
                            if (state is UserLoaded) {
                              await context
                                  .bloc<MerchandiseCubit>()
                                  .getMerchandise();
                              await context.bloc<ProgramCubit>().getPrograms();
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            } else {
                              Get.snackbar(
                                "",
                                "",
                                backgroundColor: "D9435E".toColor(),
                                icon: Icon(MdiIcons.closeCircleOutline,
                                    color: Colors.white),
                                titleText: Text(
                                  "Sign In Failed",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                messageText: Text(
                                  (state as UserLoadingFailed).message,
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                ),
                              );
                            }
                          },
                          padding: EdgeInsets.fromLTRB(65, 20, 65, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              side: BorderSide(color: Color(0xff87CEEB))),
                          color: Color(0xff03203F),
                          textColor: Colors.white,
                          child: Text("Login", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                "Anda bukan anggota SP ADM ? ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text(
                                    "Daftar disini",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  )),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => SingleChildScrollView(
                                    child: RegisterController(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
