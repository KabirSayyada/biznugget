// import 'package:biznugget/core/common/models/item_model/sub_category_model.dart';
// import 'package:biznugget/core/common/models/item_model/category_model.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:biznugget/core/utils/dimensions.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
//
// part 'advertise_state.dart';
//
// class AdvertiseCubit extends Cubit<AdvertiseState> {
//   AdvertiseCubit() : super(CategorySelected());
//
//   /// categories
//
//   // categories
//   final List<CategoryModel> _categories = [
//     CategoryModel(
//         id: 0,
//         icon: Icon(
//           const FaIcon(FontAwesomeIcons.handshake).icon,
//           size: Dimensions.iconSize25,
//         ),
//         name: 'SERVICES',
//         subCategories: [
//           // services sub categories
//           SubCategoryModel(name: 'Cleaning'),
//           SubCategoryModel(name: 'Electrician'),
//           SubCategoryModel(name: 'Painter'),
//           SubCategoryModel(name: 'Carpenter'),
//           SubCategoryModel(name: 'Plumber'),
//           SubCategoryModel(name: 'Mason'),
//           SubCategoryModel(name: 'Catering'),
//           SubCategoryModel(name: 'Landscaping'),
//           SubCategoryModel(name: 'Other'),
//         ]),
//     CategoryModel(
//         id: 1,
//         icon: Icon(
//           const FaIcon(FontAwesomeIcons.cartShopping).icon,
//           size: Dimensions.iconSize25,
//         ),
//         name: 'PRODUCTS',
//         subCategories: [
//           SubCategoryModel(name: 'Clothing'),
//           SubCategoryModel(name: 'Shoes'),
//           SubCategoryModel(name: 'Accessories'),
//           SubCategoryModel(name: 'Jewelry'),
//           SubCategoryModel(name: 'Beauty'),
//           SubCategoryModel(name: 'Home Decor'),
//           SubCategoryModel(name: 'Furniture'),
//           SubCategoryModel(name: 'Kitchen'),
//           SubCategoryModel(name: 'Electronics'),
//           SubCategoryModel(name: 'Toys'),
//           SubCategoryModel(name: 'Other'),
//         ]),
//     CategoryModel(
//         id: 2,
//         icon: Icon(
//           const FaIcon(FontAwesomeIcons.laptopCode).icon,
//           size: Dimensions.iconSize25,
//         ),
//         name: 'FREELANCE',
//         subCategories: [
//           SubCategoryModel(name: 'Web Development'),
//           SubCategoryModel(name: 'Mobile Development'),
//           SubCategoryModel(name: 'Graphic Design'),
//           SubCategoryModel(name: 'Digital Marketing'),
//           SubCategoryModel(name: 'Content Writing'),
//           SubCategoryModel(name: 'Video Editing'),
//           SubCategoryModel(name: 'Photography'),
//           SubCategoryModel(name: 'Music'),
//           SubCategoryModel(name: 'Translation'),
//           SubCategoryModel(name: 'Voice Over'),
//           SubCategoryModel(name: 'Data Entry'),
//           SubCategoryModel(name: 'Other'),
//         ]),
//     CategoryModel(
//         id: 3,
//         icon: Icon(
//           const FaIcon(FontAwesomeIcons.briefcase).icon,
//           size: Dimensions.iconSize25,
//         ),
//         name: 'JOBS',
//         subCategories: [
//           SubCategoryModel(name: 'Accounting'),
//           SubCategoryModel(name: 'Legal'),
//           SubCategoryModel(name: 'Consulting'),
//           SubCategoryModel(name: 'Engineering'),
//           SubCategoryModel(name: 'Architecture'),
//           SubCategoryModel(name: 'Interior Design'),
//           SubCategoryModel(name: 'Other'),
//         ]),
//   ];
//   // selected categories
//   List<CategoryModel> _selectedCategories = [];
//
//   // return all categories
//   List<CategoryModel> get allCategories => _categories;
//   // return the selected categories
//   List<CategoryModel> get selectedCategories => _selectedCategories;
//
//   // set selected categories by name
//   set changeSelectedCategoriesByName(List<String> value) {
//     _selectedCategories = [];
//     for (var element in value) {
//       for (var category in _categories) {
//         if (category.name == element) {
//           _selectedCategories.add(category);
//         }
//       }
//     }
//     emit(CategorySelected());
//   }
//   // return index of a category by name
//   int getIndexOfCategoryByName(String name) {
//     for (var idx = 0; idx < _categories.length; idx++) {
//       if (_categories[idx].name == name) {
//         return idx;
//       }
//     }
//     return 0;
//   }
//
//
//
//
//   /// sub categories
//
//   // sub categories for the selected categories
//   List<SubCategoryModel> _subCategories = [];
//   // selected sub categories
//   List<SubCategoryModel> _selectedSubCategories = [];
//
//   // load sub categories according to the selected categories
//   loadSubCategories() {
//     for (var category in _selectedCategories) {
//       for (var subCategory in category.subCategories!) {
//         _subCategories.add(subCategory);
//       }
//     }
//     emit(SubCategoriesLoaded());
//   }
//
//   // return all sub categories
//   List<SubCategoryModel> get allSubCategories => _subCategories;
//   // return the selected sub categories
//   List<SubCategoryModel> get selectedSubCategories => _selectedSubCategories;
//
//
//   // set selected sub categories by name
//   set changeSelectedSubCategoriesByName(List<String> value) {
//     _selectedSubCategories = [];
//     for (var element in value) {
//       for (var subCategory in _subCategories) {
//         if (subCategory.name == element) {
//           _selectedSubCategories.add(subCategory);
//         }
//       }
//     }
//     emit(SubCategorySelected());
//   }
//   // return index of a sub category by name
//   int getIndexOfSubCategoryByName(String name) {
//     for (var idx = 0; idx < _subCategories.length; idx++) {
//       if (_subCategories[idx].name == name) {
//         return idx;
//       }
//     }
//     return 0;
//   }
//
// }
