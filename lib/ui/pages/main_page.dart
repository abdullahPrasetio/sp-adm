part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;
  MainPage({this.initialPage = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            key: _scaffoldKey,
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
                backgroundColor: Colors.white,
                title: Image.asset(
                  "assets/images/Appbar.png",
                  width: 300,
                  height: 200,
                )),
            body: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                SafeArea(
                    child: Container(
                  color: "FAFAFC".toColor(),
                )),
                SafeArea(
                    child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  children: [
                    HomePage(),
                    PlaylistEdu(),
                    InputClaim(),
                    ComplaintPage(),
                    HomePageProduct(),
                  ],
                )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomBottomNavBar(
                    selectedIndex: selectedPage,
                    onTap: (index) {
                      setState(() {
                        selectedPage = index;
                      });
                      pageController.jumpToPage(selectedPage);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
