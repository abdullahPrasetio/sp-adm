part of '../pages.dart';

class PlaylistEdu extends StatefulWidget {
  @override
  _PlaylistEduState createState() => _PlaylistEduState();
}

class _PlaylistEduState extends State<PlaylistEdu> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Video",
        home: new Playlist(
          url: "https://sp-adm.herokuapp.com/",
          title: "Video",
        ));
  }
}
