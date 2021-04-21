part of 'widgets.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Column(
            children: [
              Center(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/profile.jpg',
                        fit: BoxFit.cover),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 30),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Text('A.Lazuardi Pamungkas', style: TextStyle(fontSize: 16)),
              Text('1 2 3 4 5 6 7 8 ', style: TextStyle(fontSize: 16)),
              Container(
                  width: 200,
                  margin: EdgeInsets.fromLTRB(15, 50, 15, 30),
                  child: Table(
                    //  border: TableBorder.all(color: Colors.black),
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(0.5),
                      2: FlexColumnWidth(3),
                    },
                    children: [
                      TableRow(children: [Text('Div'), Text(':'), Text('CIT')]),
                      TableRow(
                          children: [Text('Dept'), Text(':'), Text('ITSO')]),
                      TableRow(children: [
                        Text('Email'),
                        Text(':'),
                        Text('Ardy@gmail.com')
                      ]),
                      TableRow(children: [
                        Text('HP'),
                        Text(':'),
                        Text('085212522203')
                      ])
                    ],
                  )),
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/qr.png',
                    fit: BoxFit.cover,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
