part of 'models.dart';

class Merchandise extends Equatable {
  final int id;
  final String name;
  final String code;
  final List size;
  final List color;
  final String priceDiscount;
  final String deskripsi;
  final String harga;
  final String img;
  final int stock;

  Merchandise(
      {this.id,
      this.name,
      this.code,
      this.size,
      this.color,
      this.priceDiscount,
      this.deskripsi,
      this.harga,
      this.img,
      this.stock});
  factory Merchandise.fromJson(Map<String, dynamic> data) => Merchandise(
      id: data['id'],
      name: data['nama'],
      deskripsi: data['deskripsi'],
      harga: data['harga'],
      img: 'https://sp-adm.com/img/merchandise/' + data['img'],
      stock: data['stock']);
  @override
  // TODO: implement props
  List<Object> get props => [id, name, deskripsi, harga, img, stock];
}

List<Merchandise> mockMerchandise = [];
