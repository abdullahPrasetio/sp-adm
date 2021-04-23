part of '../pages.dart';

class InputClaim extends StatefulWidget {
  @override
  _InputClaimState createState() => _InputClaimState();
}

class _InputClaimState extends State<InputClaim> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.fromLTRB(5, 10, 5, 10), children: [
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
                      child: Text('Claim', style: TextStyle(fontSize: 14)))),
              DataColumn(
                  label: Center(
                      child: Text('Bulan', style: TextStyle(fontSize: 14)))),
              DataColumn(label: Text('Status', style: TextStyle(fontSize: 14))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                    Center(child: Text('1', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 1', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('2', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 2', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('3', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 3', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('4', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 4', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('5', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 5', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('6', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 6', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('7', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 7', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('8', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 8', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('9', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 3', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('9', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 1', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('10', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 10', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('11', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 11', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('12', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 12', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('13', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 13', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
                DataCell(Center(
                    child: Image.asset(
                  "assets/images/checklist.png",
                  width: 15,
                ))),
              ]),
              DataRow(cells: [
                DataCell(
                    Center(child: Text('14', style: TextStyle(fontSize: 13)))),
                DataCell(Text('Event 14', style: TextStyle(fontSize: 13))),
                DataCell(Text('17/11/2020', style: TextStyle(fontSize: 13))),
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
    ]);
  }
}
