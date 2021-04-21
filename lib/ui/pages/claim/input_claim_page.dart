part of '../pages.dart';

class InputClaim extends StatefulWidget {
  @override
  _InputClaimState createState() => _InputClaimState();
}

class _InputClaimState extends State<InputClaim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            title: Image.asset(
              "assets/images/Appbar.png",
              width: 300,
              height: 200,
            )),
        body: ListView(padding: EdgeInsets.fromLTRB(5, 10, 5, 10), children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
              child: Text(
                "Claim Dansosduk & Sukacita",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, //Scroll Horizontal
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Center(
                          child: Text('No', style: TextStyle(fontSize: 14)))),
                  DataColumn(
                      label: Center(
                          child:
                              Text('Claim', style: TextStyle(fontSize: 14)))),
                  DataColumn(
                      label: Center(
                          child:
                              Text('Bulan', style: TextStyle(fontSize: 14)))),
                  DataColumn(
                      label: Text('Status', style: TextStyle(fontSize: 14))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('1', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 1', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('2', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 2', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('3', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 3', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('4', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 4', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('5', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 5', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('6', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 6', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('7', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 7', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('8', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 8', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('9', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 3', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('9', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 1', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('10', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 10', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('11', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 11', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('12', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 12', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('13', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 13', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Center(
                        child: Text('14', style: TextStyle(fontSize: 13)))),
                    DataCell(Text('Event 14', style: TextStyle(fontSize: 13))),
                    DataCell(
                        Text('17/11/2020', style: TextStyle(fontSize: 13))),
                    DataCell(Center(
                        child: Image.asset(
                      "assets/images/checklist.png",
                      width: 15,
                    ))),
                  ]),
                ],
              ),
            ),
          ),
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
                    child: InkWell(
                        child: Image.asset("assets/images/home.png"),
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        }))),
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
                            return MarchandisePage();
                          }));
                        }))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0XFF03203F),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
