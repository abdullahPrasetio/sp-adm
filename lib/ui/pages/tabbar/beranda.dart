part of '../pages.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.fromLTRB(5, 10, 5, 10), children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
          ],
        ),
      ),
      Column(
        children: [
          // Card(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20.0),
          //   ),
          //   margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          //   color: Color(0xff7d7d7d),
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.95,
          //     height: 230,
          //     child: Text(""),
          //   ),
          // ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            color: Color(0xff7d7d7d),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 230,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/meeting.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    "Hasil FORKOM bulan November 2020",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            color: Color(0xff7d7d7d),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 230,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/keuangan.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    "Laporan keuangan 2020",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }

  Card buildCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0xff3e318b),
      elevation: 2,
      child: Row(
        children: [
          Container(
              // width: 300,
              // margin: EdgeInsets.all(0),
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset(
                "assets/images/uk-white.png",
                width: 180,
                height: 180,
                alignment: Alignment.centerLeft,
              )),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 15),
                    width: 130,
                    height: 140,
                    child: Text(
                      "LOREM IPSUM NDFLW LNFLKSW SKFJE fWT SDGWRw ",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
