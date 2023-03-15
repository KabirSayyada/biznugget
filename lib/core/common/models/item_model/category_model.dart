import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  int id;
  String name;
  String? imageUrl;
  String? description;
  List<SubCategoryModel>? subCategories;
  Icon? icon;
  bool? isSelected;

  CategoryModel({
    required this.id,
    required this.name,
    this.imageUrl,
    this.description,
    this.subCategories,
    this.icon,
    this.isSelected = false,
  });
}
