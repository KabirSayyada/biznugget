class ItemModel {
  String name;
  String description;
  double price;
  double? sale;
  String imageUrl;

  ItemModel({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.sale,
  });
}
