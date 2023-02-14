import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

class ADVSubCategoriesDialog extends StatefulWidget {
  const ADVSubCategoriesDialog({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  State<ADVSubCategoriesDialog> createState() => _ADVSubCategoriesDialogState();
}

class _ADVSubCategoriesDialogState extends State<ADVSubCategoriesDialog> {
  @override
  Widget build(BuildContext context) {
    return

      MultiSelectDialogField(
      // list of categories
      items: BlocProvider.of<AdvertiseCubit>(context)
          .categories
          .map((category) => MultiSelectItem(category, category.value.name))
          .toList(),
      // list style
      listType: MultiSelectListType.LIST,
      // add selected categories to the list
      onConfirm: (values) {
        BlocProvider.of<AdvertiseCubit>(context).editCategories(values);
      },
      // style and decoration
      /// button
      buttonText: Text(
        widget.label,
        style: TextStyle(
          color: Colors.white,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      decoration: BoxDecoration(
        gradient: AppColors.secondGradient(),
        borderRadius: BorderRadius.circular(Dimensions.radius5),
      ),
      /// dialog
      title: BigText(
        text: widget.label,
        color: Colors.black,
        size: Dimensions.font16,
        fontWeight: FontWeight.w500,
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      checkColor: Colors.white,
      selectedColor: Colors.black,
      confirmText: Text(
        'Confirm',
        style: TextStyle(
          color: AppColors.primaryColor1,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      cancelText: Text(
        'Cancel',
        style: TextStyle(
          color: Colors.red,
          fontSize: Dimensions.font14,
          fontWeight: FontWeight.w500,
        ),
      ),
      itemsTextStyle: TextStyle(
        color: Colors.black,
        fontSize: Dimensions.font16,
        fontWeight: FontWeight.w500,
      ),
      unselectedColor: Colors.grey,
      dialogHeight: Dimensions.height200,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      separateSelectedItems: true,
      buttonIcon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
    );
  }
}
