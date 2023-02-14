import 'package:biznugget/core/common/models/item_model/category_model.dart';
import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

part 'advertise_state.dart';

class AdvertiseCubit extends Cubit<AdvertiseState> {
  AdvertiseCubit() : super(AdvertiseSelected());

  /// categories
  // This is the list of categories that will be displayed in the multi select dialog
  final List<CategoryModel> _categories = [
    CategoryModel(name: 'SERVICES', subCategories: [
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
    CategoryModel(name: 'PRODUCTS', subCategories: [
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
    CategoryModel(name: 'FREELANCE', subCategories: [
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
    CategoryModel(name: 'JOBS', subCategories: [
      SubCategoryModel(name: 'Accounting'),
      SubCategoryModel(name: 'Legal'),
      SubCategoryModel(name: 'Consulting'),
      SubCategoryModel(name: 'Engineering'),
      SubCategoryModel(name: 'Architecture'),
      SubCategoryModel(name: 'Interior Design'),
      SubCategoryModel(name: 'Other'),
    ]),
  ];
  late final categories = _categories
      .map(
          (category) => MultiSelectItem<CategoryModel>(category, category.name))
      .toList();


  // This is the list of selected categories
  final List<CategoryModel> _selectedCategories = [];

  get selectedCategories => _selectedCategories;

  // add or remove a category from the selected categories list
  void editCategories(values) {
    _selectedCategories.clear();
    for (var element in values) {
      _selectedCategories.add(element.value);
      emit(AdvertiseSelected());
    }
  }

  /// sub categories for the selected category

  bool isEmpty = true;

  // This is the list of sub categories that will be displayed in the multi select dialog
  List<MultiSelectItem<SubCategoryModel>> subCategories = [];

  loadSubCategories() {
    List<SubCategoryModel> tempSubCategories = [];
    for (var category in _selectedCategories) {
      for (var subCategory in category.subCategories!) {
        tempSubCategories.add(subCategory);
      }
    }
    subCategories = tempSubCategories.map((subCategory) =>
        MultiSelectItem<SubCategoryModel>(subCategory, subCategory.name)).toList();
    emit(AdvertiseSelected());
    if (subCategories.isEmpty) {
      isEmpty = true;
    } else {
      isEmpty = false;
    }
    return tempSubCategories;
  }



  // This is the list of selected sub categories
  final List<SubCategoryModel> _selectedSubCategories = [];

  get selectedSubCategories => _selectedSubCategories;

  // add or remove a sub category from the selected sub categories list
  void editSubCategories(values) {
    _selectedSubCategories.clear();
    for (var element in values) {
      _selectedSubCategories.add(element.value);
      emit(AdvertiseSelected());
    }
  }

  // remove a sub category from the selected sub categories list
  void removeSubCategory(SubCategoryModel subCategory) {
    _selectedSubCategories.remove(subCategory);
    emit(AdvertiseSelected());
  }


}
