part of '../pages.dart';

class Forkom extends StatefulWidget {
  @override
  _ForkomState createState() => _ForkomState();
}

class _ForkomState extends State<Forkom> {
  _launchURL(String url) async {
    var urlnew = url.replaceAll(' ', '%20');
    print(urlnew);
    if (await canLaunch(urlnew)) {
      await launch(urlnew);
    } else {
      throw 'Could not launch $urlnew';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<ForkomCubit, ForkomState>(
          builder: (_, state) => (state is ForkomLoaded)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.forkoms
                      .map((e) => Container(
                            child: Column(
                              children: [
                                Text(e.id.toString()),
                                Text(e.judul),
                                InkWell(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 30),
                                      child: Text(
                                        "Daftar disini",
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 11),
                                      )),
                                  onTap: () async {
                                    await _launchURL(e.file);
                                  },
                                ),
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
    );
  }
}
