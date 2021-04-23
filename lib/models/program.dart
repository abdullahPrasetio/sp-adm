part of 'models.dart';

class Program extends Equatable {
  final int id;
  final String judul;
  final String deskripsi;
  final String image;

  Program({this.id, this.judul, this.deskripsi, this.image});

  factory Program.fromJson(Map<String, dynamic> data) => Program(
      id: data['id'],
      judul: data['judul'],
      deskripsi: data['deskripsi'],
      image: 'https://sp-adm.com/img/program/' + data['image']);
  @override
  // TODO: implement props
  List<Object> get props => [id, judul, deskripsi, image];
}
