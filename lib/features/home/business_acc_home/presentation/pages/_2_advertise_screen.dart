import 'package:biznugget/core/common/models/item_model/category_model.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/advertise_screen_widgets/adv_categories_multi_select_dialog_widget.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/advertise_screen_widgets/adv_subcategories_dialog_widget.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_drawer.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class AdvertiseScreen extends StatelessWidget {
  AdvertiseScreen({Key? key}) : super(key: key);

  final AdvancedDrawerController _advancedDrawerController =
      AdvancedDrawerController();
  static final List<CategoryModel> _categories = [
    CategoryModel(name: 'Services'),
    CategoryModel(name: 'Products'),
    CategoryModel(name: 'freelance'),
    CategoryModel(name: 'Jobs'),
  ];
  final categories = _categories
      .map(
          (category) => MultiSelectItem<CategoryModel>(category, category.name))
      .toList();
  List<CategoryModel> _selectedCategories = [];

  // final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdvancedDrawer(
        controller: _advancedDrawerController,
        backdropColor: AppColors.primaryColor1.withOpacity(0.8),
        childDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        drawer: const SBDrawer(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20,
            ),
            child: Column(
              children: [
                SizedBox(height: Dimensions.height15),

                /// custom app bar
                SBCustomAppBar(
                    advancedDrawerController: _advancedDrawerController),
                SizedBox(height: Dimensions.height60),
                const ADVCategoriesMultiSelectDialog(label: 'CATEGORIES'),
                SizedBox(height: Dimensions.height35),
                ADVSubCategoriesDialog(label: 'SUB CATEGORIES'),
                TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.radius5),
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height35),
                SizedBox(
                  height: Dimensions.height220,
                  child: TextFormField(
                    maxLines: 20,
                    keyboardType: TextInputType.multiline,
                    maxLength: 10000,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius5),
                      ),
                      hintText: 'Description',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
