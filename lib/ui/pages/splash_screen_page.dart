part of 'pages.dart';

String finalToken;

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Timer(Duration(seconds: 2),
          () => Get.to(finalToken == null ? LoginPage() : MainPage()));
    });

    super.initState();
  }

  Future getValidationData() async {
    var token = await SharedPreferenceHelper().getUserToken();
    if (token != null) {
      await context.bloc<UserCubit>().getProfile(token);
    }
    print(token);
    setState(() {
      finalToken = token;
    });
  }

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
        ],
      ),
    );
  }
}
