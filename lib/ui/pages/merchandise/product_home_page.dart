part of '../pages.dart';

class HomePageProduct extends StatefulWidget {
  @override
  _HomePageProductState createState() => _HomePageProductState();
}

class _HomePageProductState extends State<HomePageProduct> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      // drawer: NavDrawer(),
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0XFF03203F),
            ),
            onPressed: () {
              // _scaffoldKey.currentState.openDrawer();
            },
          ),

          // leading: Icon(
          //   Icons.menu,
          //   color: Color(0XFF03203F),
          // ),

          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/Appbar.png",
            width: 300,
            height: 200,
          )),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 20, 0, 15),
                child: Text(
                  "Marchandise",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: 170,
                height: 35,
                margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      height: 0.5,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              // child: Row(children: List.generate(menuItems.length, (index){
              //   return Padding(
              //     padding: const EdgeInsets.only(right: 20),
              //     child: InkWell(
              //       onTap: (){
              //       setState(() {
              //          activeMenu = index;
              //       });
              //       },
              //                         child: Container(
              //       decoration: BoxDecoration(
              //         border: Border(bottom: BorderSide(color: activeMenu == index ? primary : Colors.transparent,width: 2))
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Text(menuItems[index],style: TextStyle(
              //           fontSize: 17
              //         ),),
              //       ),
              // ),
              //     ),
              //   );
              // })
              // ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Wrap(
            children: List.generate(dataItems.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ProductDetailPage(
                                id: dataItems[index]['id'].toString(),
                                name: dataItems[index]['name'],
                                code: dataItems[index]['code'],
                                img: dataItems[index]['img'],
                                price: dataItems[index]['price'].toString(),
                                promotionPrice: dataItems[index]
                                        ['promotionPrice']
                                    .toString(),
                                size: dataItems[index]['size'],
                                color: dataItems[index]['color'],
                              )));
                },
                child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                          tag: dataItems[index]['id'].toString(),
                          child: Container(
                            width: (size.width - 16) / 2,
                            height: (size.width - 16) / 2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(dataItems[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            dataItems[index]['code'],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            dataItems[index]['price'].toString() + " USD",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              );
            }),
          )
        ],
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
                          return HomePageProduct();
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
                          return ProductDetailPage();
                        }));
                      }))),
        ],
      ),
    ));
  }
}
