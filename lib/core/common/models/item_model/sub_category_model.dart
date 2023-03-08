class SubCategoryModel {
  String name;
  String? imageUrl;
  String? description;
  bool? isSelected = false;

  SubCategoryModel({
    required this.name,
    this.imageUrl,
    this.description,
    this.isSelected,
  });
}
