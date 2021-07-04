part of 'models.dart';

class Forkom extends Equatable {
  final int id;
  final String judul;
  final String file;

  Forkom({this.id, this.judul, this.file});
  factory Forkom.fromJson(Map<String, dynamic> data) =>
      Forkom(id: data['id'], judul: data['judul'], file: data['mom_file']);
  @override
  // TODO: implement props
  List<Object> get props => [id, judul, file];
}
