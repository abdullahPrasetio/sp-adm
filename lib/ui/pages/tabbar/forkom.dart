part of '../pages.dart';

class Forkom extends StatefulWidget {
  @override
  _ForkomState createState() => _ForkomState();
}

class _ForkomState extends State<Forkom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(child: Text("Forkom")),
        ),
      ],
    );
  }
}
