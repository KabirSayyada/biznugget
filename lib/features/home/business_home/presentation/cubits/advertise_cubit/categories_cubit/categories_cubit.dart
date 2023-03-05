import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';
import 'package:biznugget/core/common/models/item_model/category_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategorySelected());

  /// categories

  // categories
  final List<CategoryModel> _categories = [
    CategoryModel(
        id: 0,
        icon: Icon(
          const FaIcon(FontAwesomeIcons.handshake).icon,
          size: Dimensions.iconSize25,
        ),
        name: 'SERVICES',
        subCategories: [
          // services sub categories
          SubCategoryModel(name: 'Cleaning'),
          SubCategoryModel(name: 'Electrician'),
          SubCategoryModel(name: 'Painter'),
          SubCategoryModel(name: 'Carpenter'),
          SubCategoryModel(name: 'Plumber'),
          SubCategoryModel(name: 'Mason'),
          SubCategoryModel(name: 'Catering'),
          SubCategoryModel(name: 'Landscaping'),
          SubCategoryModel(name: 'Other'),
        ]),
    CategoryModel(
        id: 1,
        icon: Icon(
          const FaIcon(FontAwesomeIcons.cartShopping).icon,
          size: Dimensions.iconSize25,
        ),
        name: 'PRODUCTS',
        subCategories: [
          SubCategoryModel(name: 'Clothing'),
          SubCategoryModel(name: 'Shoes'),
          SubCategoryModel(name: 'Accessories'),
          SubCategoryModel(name: 'Jewelry'),
          SubCategoryModel(name: 'Beauty'),
          SubCategoryModel(name: 'Home Decor'),
          SubCategoryModel(name: 'Furniture'),
          SubCategoryModel(name: 'Kitchen'),
          SubCategoryModel(name: 'Electronics'),
          SubCategoryModel(name: 'Toys'),
          SubCategoryModel(name: 'Other'),
        ]),
    CategoryModel(
        id: 2,
        icon: Icon(
          const FaIcon(FontAwesomeIcons.laptopCode).icon,
          size: Dimensions.iconSize25,
        ),
        name: 'FREELANCE',
        subCategories: [
          SubCategoryModel(name: 'Web Development'),
          SubCategoryModel(name: 'Mobile Development'),
          SubCategoryModel(name: 'Graphic Design'),
          SubCategoryModel(name: 'Digital Marketing'),
          SubCategoryModel(name: 'Content Writing'),
          SubCategoryModel(name: 'Video Editing'),
          SubCategoryModel(name: 'Photography'),
          SubCategoryModel(name: 'Music'),
          SubCategoryModel(name: 'Translation'),
          SubCategoryModel(name: 'Voice Over'),
          SubCategoryModel(name: 'Data Entry'),
          SubCategoryModel(name: 'Other'),
        ]),
    CategoryModel(
        id: 3,
        icon: Icon(
          const FaIcon(FontAwesomeIcons.briefcase).icon,
          size: Dimensions.iconSize25,
        ),
        name: 'JOBS',
        subCategories: [
          SubCategoryModel(name: 'Accounting'),
          SubCategoryModel(name: 'Legal'),
          SubCategoryModel(name: 'Consulting'),
          SubCategoryModel(name: 'Engineering'),
          SubCategoryModel(name: 'Architecture'),
          SubCategoryModel(name: 'Interior Design'),
          SubCategoryModel(name: 'Other'),
        ]),
  ];
  // selected categories
  List<CategoryModel> _selectedCategories = [];

  // return all categories
  List<CategoryModel> get allCategories => _categories;
  // return the selected categories
  List<CategoryModel> get selectedCategories => _selectedCategories;

  // set selected categories by name
  set changeSelectedCategoriesByName(List<String> value) {
    _selectedCategories = [];
    for (var element in value) {
      for (var category in _categories) {
        if (category.name == element) {
          _selectedCategories.add(category);
        }
      }
    }
    emit(CategorySelected());
  }
  // return index of a category by name
  int getIndexOfCategoryByName(String name) {
    for (var idx = 0; idx < _categories.length; idx++) {
      if (_categories[idx].name == name) {
        return idx;
      }
    }
    return 0;
  }


}
