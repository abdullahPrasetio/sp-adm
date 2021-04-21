part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

TabBar myTabbar = TabBar(

    // indicator: BoxDecoration(color: Color(0XFF03203F)),
    isScrollable: true,
    indicatorColor: Color(0xff03203f),
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    labelStyle: TextStyle(fontSize: 15.0),
    tabs: [
      Tab(
        key: ObjectKey(1),
        text: "Beranda",
      ),
      Tab(
        key: ObjectKey(2),
        text: "Basic",
      ),
      Tab(
        key: ObjectKey(3),
        text: "Forkom",
      ),
      Tab(
        key: ObjectKey(4),
        text: "Training",
      ),
      Tab(
        key: ObjectKey(5),
        text: "Keuangan",
      ),
    ]);

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Color(0XFF03203F),
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),

                // leading: Icon(
                //   Icons.menu,
                //   color: Color(0XFF03203F),
                // ),
                bottom: myTabbar,
                backgroundColor: Colors.white,
                title: Image.asset(
                  "assets/images/Appbar.png",
                  width: 300,
                  height: 200,
                )),
            body: TabBarView(children: [
              Beranda(),
              Basic(),
              Forkom(),
              Training(),
              Keuangan(),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF03203F),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap: (value) {
                // Respond to item press.
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 30,
                      child: Image.asset("assets/images/home.png")),
                ),
                BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 30,
                        child: InkWell(
                            child: Image.asset("assets/images/rp.png",
                                fit: BoxFit.cover),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return PlaylistEdu();
                              }));
                            }))),
                BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 30,
                        child: InkWell(
                            child: Image.asset("assets/images/hand.png",
                                fit: BoxFit.cover),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return InputClaim();
                              }));
                            }))),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 30,
                      child: Image.asset("assets/images/coment.png",
                          fit: BoxFit.cover)),
                ),
                BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 30,
                        child: InkWell(
                            child: Image.asset("assets/images/shoping_bag.png",
                                fit: BoxFit.cover),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePageProduct();
                              }));
                            }))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
