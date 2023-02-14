import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ADVSubCategoriesDialog extends StatelessWidget {
  const ADVSubCategoriesDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvertiseCubit, AdvertiseState>(
      builder: (context, state) {
        return state is AdvertiseSelected ? MultiSelectDialogField(
          // list of categories
          items: BlocProvider
              .of<AdvertiseCubit>(context)
              .subCategories
              .map((subCategory) =>
              MultiSelectItem(subCategory, subCategory.value.name))
              .toList(),
          // list style
          listType: MultiSelectListType.CHIP,
          // add selected categories to the list
          onConfirm: (values) {
            BlocProvider.of<AdvertiseCubit>(context).editSubCategories(values);
          },
          // style and decoration
          /// button
          buttonText: Text(
            'SUB CATEGORIES',
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

          /// chip style
          chipDisplay: MultiSelectChipDisplay(
            items: BlocProvider
                .of<AdvertiseCubit>(context)
                .subCategories
                .map((cate) => MultiSelectItem(cate, cate.value.name))
                .toList(),
            chipColor: AppColors.primaryColor1,
            textStyle: const TextStyle(color: Colors.white),
          ),

          /// dialog
          selectedItemsTextStyle: TextStyle(
            color: Colors.white,
            fontSize: Dimensions.font16,
            fontWeight: FontWeight.w500,
          ),
          title: BigText(
            text: 'SUB CATEGORIES',
            color: Colors.black,
            size: Dimensions.font16,
            fontWeight: FontWeight.w500,
          ),
          barrierColor: Colors.black.withOpacity(0.5),
          checkColor: AppColors.primaryColor2,
          selectedColor: AppColors.primaryColor1,
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
            color: Colors.white,
            fontSize: Dimensions.font16,
            fontWeight: FontWeight.w500,
          ),
          unselectedColor: AppColors.primaryColor2,
          dialogHeight: Dimensions.height400,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          separateSelectedItems: true,
          buttonIcon: const Icon(
              Icons.keyboard_arrow_down, color: Colors.white),
        ) : Container();
      },
    );
  }
}
