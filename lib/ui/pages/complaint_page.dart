part of 'pages.dart';

class ComplaintPage extends StatefulWidget {
  ComplaintPage({Key key}) : super(key: key);

  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              Text("Pengaduan"),
              RaisedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: AddComplaintModal(),
                    ),
                  );
                },
                padding: EdgeInsets.fromLTRB(65, 20, 65, 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xff87CEEB))),
                color: Color(0xff03203F),
                textColor: Colors.white,
                child: Text("Add Pengaduan", style: TextStyle(fontSize: 18)),
              ),
              BlocBuilder<ComplaintCubit, ComplaintState>(
                builder: (_, state) => (state is ComplaintLoaded)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: state.complaints
                            .map((e) => Container(
                                  child: Column(
                                    children: [
                                      Text(e.type),
                                      Text(e.user),
                                      Text(e.pengaduan),
                                      Text(e.jawaban != null ? e.jawaban : ""),
                                      Text(
                                          e.penjawab != null ? e.penjawab : ""),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ))
                            .toList(),
                      )
                    : SizedBox(
                        height: 30,
                      ),
              )
            ],
          ),
        ));
  }
}
