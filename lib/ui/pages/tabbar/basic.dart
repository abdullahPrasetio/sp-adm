part of '../pages.dart';

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width - defaultMargin;
    return ListView(
      children: [
        SizedBox(height: 20),
        Container(
          child: Center(
            child: Text("Sejarah SPADM", style: blackFontStyle1),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: size,
          height: 200,
          // color:Colors.blue
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1559423920-ceb256c9823f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1190&q=80"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 20),
        Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              (context.bloc<CompanyHistoryCubit>().state
                      as CompanyHistoryLoaded)
                  .companyHistorys
                  .description,
              style: greyFontStyle,
              textAlign: TextAlign.justify,
            )),
      ],
    );
  }
}
