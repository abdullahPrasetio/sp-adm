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
    return ListView(
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
          ),
        ),
        SizedBox(
          height: 30,
        ),
        BlocBuilder<MerchandiseCubit, MerchandiseState>(
          builder: (_, state) => (state is MerchandiseLoaded)
              ? Wrap(
                  children: state.merchandises
                      .map((e) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => ProductDetailPage(
                                            id: e.id.toString(),
                                            name: e.name,
                                            code: "asdasdasd",
                                            img: e.img,
                                            price: e.harga,
                                            promotionPrice: "1982927",
                                            size: [
                                              {"id": 1, "value": "FREE-SIZE"}
                                            ],
                                            color: [
                                              {"id": 1, "value": "Biru"}
                                            ],
                                          )));
                            },
                            child: Card(
                                elevation: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Hero(
                                      tag: e.id.toString(),
                                      child: Container(
                                        width: (size.width - 16) / 2,
                                        height: (size.width - 16) / 2,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  e.img,
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        "asasdasd",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        e.harga.toString() + " USD",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )),
                          ))
                      .toList())
              : SizedBox(),
        )
      ],
    );
  }
}
