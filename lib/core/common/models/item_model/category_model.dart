import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';

class CategoryModel {
  String name;
  String? imageUrl;
  String? description;
  List<SubCategoryModel>? subCategories;

  CategoryModel({
    required this.name,
    this.imageUrl,
    this.description,
    this.subCategories,
  });
}
