part of 'widgets.dart';

class AddComplaintModal extends StatefulWidget {
  AddComplaintModal({Key key}) : super(key: key);

  @override
  _AddComplaintModalState createState() => _AddComplaintModalState();
}

class _AddComplaintModalState extends State<AddComplaintModal> {
  TextEditingController keyController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController pengaduanController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Add Complaint',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: keyController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "SPADM KEY",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: typeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Type Pengaduan",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: pengaduanController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Complaint",
                      hintStyle: TextStyle(
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(65, 20, 65, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color(0xff87CEEB))),
                  onPressed: () async {
                    var result = await context
                        .bloc<ComplaintCubit>()
                        .addComplaint(typeController.text,
                            pengaduanController.text, keyController.text);
                    print(result);
                  },
                  color: Color(0xff03203F),
                  textColor: Colors.white,
                  child: Text("Register", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
