part of 'models.dart';

class Complaint extends Equatable {
  final int id;
  final String type;
  final String user;
  final String pengaduan;
  final String jawaban;
  final String penjawab;

  Complaint(
      {this.id,
      this.type,
      this.user,
      this.pengaduan,
      this.jawaban,
      this.penjawab});

  factory Complaint.fromJson(Map<String, dynamic> data) => Complaint(
        id: data['id'],
        type: data["nama_typepengaduan"],
        user: data["user"],
        pengaduan: data["pengaduan"],
        jawaban: data["jawaban"],
        penjawab: data["penjawab"],
      );
  @override
  // TODO: implement props
  List<Object> get props => [];
}
