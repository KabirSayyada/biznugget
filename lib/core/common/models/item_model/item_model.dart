import 'package:hive/hive.dart';

part 'item_model.g.dart';

// flutter packages pub run build_runner build

@HiveType(typeId: 0)
class ItemModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String description;
  @HiveField(3)
  double price;
  @HiveField(4)
  double? sale;
  @HiveField(5)
  String imageUrl;
  @HiveField(6)
  double? rate;
  @HiveField(7)
  double? reviews;

  ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.sale,
    this.rate,
    this.reviews,
  });

  // to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
      'sale': sale,
      'rate': rate,
      'reviews': reviews,
      'id': id,
    };
  }

  // from json
  factory ItemModel.fromJson(dynamic json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      sale: json['sale'],
      rate: json['rate'],
      reviews: json['reviews'],
    );
  }
}
