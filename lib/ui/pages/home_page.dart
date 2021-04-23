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
  TabController _tabController;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: myTabbar,
        ),
        Expanded(
            child: TabBarView(controller: _tabController, children: [
          Beranda(),
          Basic(),
          Forkom(),
          Training(),
          Keuangan(),
        ]))
      ],
    );
  }
}
