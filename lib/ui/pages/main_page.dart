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
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

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
                  "assets/images/Appbar.jpeg",
                  width: 300,
                  height: 250,
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
