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
