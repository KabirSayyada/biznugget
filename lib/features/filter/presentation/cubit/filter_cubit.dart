import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/features/home/user_home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  List<ItemModel> items = [];

  // List<ServiceModel> services = [];
  // List<JobsModel> jobs = [];

  void filter(String searchQuery, List<dynamic> list) {
    emit(FilterLoading());

    /// check if list is of type ItemModel
    if (list.runtimeType == List<ItemModel>) {
      // create a new list to store the filtered items
      List<ItemModel> filteredItems = [];
      List<ItemModel> items = list.cast<ItemModel>();
      for (var item in items) {
        // Check if item name or description contains search query
        if (item.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
            item.description
                .toLowerCase()
                .contains(searchQuery.toLowerCase())) {
          // if item found then add it to the filtered list
          filteredItems.add(item);

          // if you can't find the item in the list with name or description
          // then check the categories and subcategories
        } else {
          // search in categories
          for (var category in item.categories) {
            if (category.toLowerCase().contains(searchQuery.toLowerCase())) {
              filteredItems.add(item);
            } else {
              // search in subcategories
              for (var subCategory in item.subCategories) {
                if (subCategory
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase())) {
                  filteredItems.add(item);
                }
              }
            }
          }
        }
      }
      // remove duplicates
      filteredItems = filteredItems.toSet().toList();
      // assign the filtered list to the original list so we can use it in the full filter :D
      items = filteredItems;
      // return the filtered list
      emit(FilterSuccess(filteredItems));
    }

    /// make same process for other types of lists
    else if (true) {}
  }

  /// full search/filter function
  void fullSearch(String searchQuery, BuildContext context) {
    emit(FilterLoading());
    // clear the filtered list

    List<ItemModel> items = BlocProvider.of<HomeScreenBloc>(context).items;
    // List<ServiceModel> Services --------------;
    // List<JobsModel> jobs ---------------------;

    // use the filter function we created above to filter the items
    filter(searchQuery, items);
    // filter(searchQuery, Services);
    // filter(searchQuery, jobs);

    // we can handle every type of list in the UI screen
  }
}
