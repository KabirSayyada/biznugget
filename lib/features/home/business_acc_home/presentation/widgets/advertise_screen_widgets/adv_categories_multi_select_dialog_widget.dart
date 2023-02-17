import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

class ADVCategoriesMultiSelectDialog extends StatelessWidget {
  const ADVCategoriesMultiSelectDialog({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      // list of categories
      items: BlocProvider.of<AdvertiseCubit>(context)
          .categories
          .map((category) => MultiSelectItem(category, category.value.name))
          .toList(),
      // list style
      listType: MultiSelectListType.LIST,
      // add/remove selected categories to/from the list
      onConfirm: (values) {
        BlocProvider.of<AdvertiseCubit>(context).editCategories(values);
        BlocProvider.of<AdvertiseCubit>(context).loadSubCategories();
      },
      // style and decoration
      /// button
      // title
      buttonText: Text(
        'CATEGORIES',
        style: TextStyle(
          color: Colors.white,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      // icon
      buttonIcon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
      // decoration
      decoration: BoxDecoration(
        gradient: AppColors.secondGradient(),
        borderRadius: BorderRadius.circular(Dimensions.radius5),
      ),

      /// chip style
      chipDisplay: MultiSelectChipDisplay(
        items: BlocProvider.of<AdvertiseCubit>(context)
            .categories
            .map((cate) => MultiSelectItem(cate, cate.value.name))
            .toList(),
        chipColor: AppColors.primaryColor1,
        textStyle: const TextStyle(color: Colors.white),
      ),

      /// dialog
      // title
      title: BigText(
        text: 'CATEGORIES',
        color: Colors.black,
        size: Dimensions.font16,
        fontWeight: FontWeight.w500,
      ),
      // background blur
      barrierColor: Colors.black.withOpacity(0.5),
      // check box colors
      checkColor: Colors.white,
      selectedColor: Colors.black,
      // confirm buttonn
      confirmText: Text(
        'Confirm',
        style: TextStyle(
          color: AppColors.primaryColor1,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      // cancel button
      cancelText: Text(
        'Cancel',
        style: TextStyle(
          color: Colors.red,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      // dialog items
      itemsTextStyle: TextStyle(
        color: Colors.black,
        fontSize: Dimensions.font16,
        fontWeight: FontWeight.w500,
      ),
      dialogHeight: Dimensions.height200,
      separateSelectedItems: true,
    );
  }
}
