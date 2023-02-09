import 'package:hive/hive.dart';
part 'item_model.g.dart';



@HiveType(typeId: 1)

class ItemModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  double price;
  @HiveField(3)
  double? sale;
  @HiveField(4)
  String imageUrl;

  ItemModel({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.sale,
  });

  // to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
      'sale': sale,
    };
  }


  // from json
  factory ItemModel.fromJson(dynamic json) {
    return ItemModel(
      name: json['name'],
      price: json['price'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      sale: json['sale'],
    );
  }

}
