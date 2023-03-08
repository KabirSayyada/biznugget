import 'package:biznugget/core/common/models/item_model/category_model.dart';
import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sub_categories_state.dart';

class SubCategoriesCubit extends Cubit<SubCategoriesState> {
  SubCategoriesCubit() : super(SubCategoriesLoaded());

  /// data source
  // sub categories for the selected categories
  List<SubCategoryModel> _subCategories = [];

  // selected sub categories
  List<SubCategoryModel> _selectedSubCategories = [];

  /// return data
  // return all sub categories
  List<SubCategoryModel> get allSubCategories => _subCategories;

  // return the selected sub categories
  List<SubCategoryModel> get selectedSubCategories => _selectedSubCategories;

  /// methods
  // load sub categories according to the selected categories
  loadSubCategories(List<CategoryModel> selectedCategories) {
    _subCategories = [];
    for (var category in selectedCategories) {
      for (var subCategory in category.subCategories!) {
        _subCategories.add(subCategory);
      }
    }
    emit(SubCategoriesLoaded());
  }

  // set selected sub categories by name
  set changeSelectedSubCategoriesByName(List<String> value) {
    _selectedSubCategories = [];
    for (var element in value) {
      for (var subCategory in _subCategories) {
        if (subCategory.name == element) {
          _selectedSubCategories.add(subCategory);
        }
      }
    }
    emit(SubCategoriesLoaded());
  }

  // return index of a sub category by name
  int getIndexOfSubCategoryByName(String name) {
    for (var idx = 0; idx < _subCategories.length; idx++) {
      if (_subCategories[idx].name == name) {
        return idx;
      }
    }
    return 0;
  }
}
