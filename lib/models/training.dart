part of 'models.dart';

class Training extends Equatable {
  final int id;
  final String name;
  final String date;
  final String place;

  Training({this.id, this.name, this.date, this.place});
  factory Training.fromJson(Map<String, dynamic> data) => Training(
        id: data["id"],
        name: data["nama_training"],
        date: data["tanggal"],
        place: data["tempat"],
      );

  @override
  // TODO: implement props
  List<Object> get props => [id, name, date, place];
}
