part of 'models.dart';

class CompanyHistory extends Equatable {
  final int id;
  final String image;
  final String description;

  CompanyHistory({this.id, this.image, this.description});
  factory CompanyHistory.fromJson(Map<String, dynamic> data) => CompanyHistory(
        id: data["id"],
        image: data["image"],
        description: data["deskripsi"],
      );
  @override
  // TODO: implement props
  List<Object> get props => [id, image, description];
}
