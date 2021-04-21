part of '../pages.dart';

class Playlist extends StatefulWidget {
  Playlist({this.title, this.url});
  final String title;
  final String url;
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(widget.url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ListVideo(
                  list: snapshot.data,
                )
              : new CircularProgressIndicator();
        },
      ),
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
                          return Playlist();
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
                child:
                    Image.asset("assets/images/coment.png", fit: BoxFit.cover)),
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
    );
  }
}

class ListVideo extends StatelessWidget {
  final List list;
  ListVideo({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                new Container(
                    height: 210,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new NetworkImage(
                              list[i]['snippet']['thumbnails']['high']['url']),
                          fit: BoxFit.cover),
                    ))
              ],
            ),
          );
        });
  }
}
