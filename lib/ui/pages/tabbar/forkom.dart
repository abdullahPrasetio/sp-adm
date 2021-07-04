part of '../pages.dart';

class Forkom extends StatefulWidget {
  @override
  _ForkomState createState() => _ForkomState();
}

class _ForkomState extends State<Forkom> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.fromLTRB(5, 10, 5, 10), children: [
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
          child: Text(
            "Bipartid & Perundingan",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, //Scroll Horizontal
          child: DataTable(columns: [
            DataColumn(
                label:
                    Center(child: Text('No', style: TextStyle(fontSize: 14)))),
            DataColumn(
                label: Center(
                    child: Text('Judul', style: TextStyle(fontSize: 14)))),
            DataColumn(
                label: Center(
                    child: Text('Action', style: TextStyle(fontSize: 14)))),
          ], rows: [
            DataRow(cells: [
              DataCell(
                  Center(child: Text('1', style: TextStyle(fontSize: 13)))),
              DataCell(Text('Event 1', style: TextStyle(fontSize: 13))),
              DataCell(Center(
                  child: Image.asset(
                "assets/images/checklist.png",
                width: 15,
              ))),
            ])
          ]),
        ),
      )
    ]);
  }
}
