import 'package:biznugget/features/home/business_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CategoriesMultiSelectWidget extends StatelessWidget {
  CategoriesMultiSelectWidget({super.key});

  final AdvertiseCubit _advertiseCubit = AdvertiseCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvertiseCubit(),
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.secondGradient(),
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        child: SmartSelect<String>.multiple(
          // data source / items to choose from
          title: 'Categories',
          choiceItems: BlocProvider.of<AdvertiseCubit>(context)
              .allCategories
              .map((cate) => S2Choice<String>(
                    value: cate.name,
                    title: cate.name,
                  ))
              .toList(),
          onChange: (selected) {
            BlocProvider.of<AdvertiseCubit>(context).changeSelectedCategoriesByName =
                selected.value;
          },
          placeholder: '',
          modalType: S2ModalType.popupDialog,
          // modal / dialog config
          modalConfig: S2ModalConfig(
            barrierColor: Colors.black.withOpacity(0.5),
            style: S2ModalStyle(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
              ),
            ),
            // header and confirm button
            useHeader: true,
            headerStyle: const S2ModalHeaderStyle(
              backgroundColor: AppColors.primaryColor2,
              textStyle: TextStyle(color: Colors.white),
            ),
            // confirm button
            useConfirm: true,
            confirmLabel:
                const Text('Done', style: TextStyle(color: Colors.white)),
          ),
          // choice config
          choiceConfig: const S2ChoiceConfig(
            useDivider: true,
            dividerColor: AppColors.hintColor,
          ),
          // tile / button  builder
          tileBuilder: (context, state) {
            return S2Tile.fromState(
              state,
              // show two lines for title and subtitle
              // isTwoLine: true,
              leading: Icon(
                Icons.category,
                size: Dimensions.iconSize30,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_drop_down,
                size: Dimensions.iconSize40,
                color: Colors.white,
              ),
              title: const BigText(
                  text: 'Categories',
                  color: Colors.white,
                  textAlign: TextAlign.center),
            );
          },
          // choice list tile builder
          choiceBuilder: (context, state, choice) {
            return BlocBuilder<AdvertiseCubit, AdvertiseState>(
              builder: (context, state) {
                if (state is CategorySelected) {
                  return InkWell(
                    onTap: () {
                      // opposite value
                      BlocProvider.of<AdvertiseCubit>(context)
                              .allCategories[_advertiseCubit
                                  .getIndexOfCategoryByName(choice.title!)]
                              .isSelected =
                          !BlocProvider.of<AdvertiseCubit>(context)
                              .allCategories[_advertiseCubit
                                  .getIndexOfCategoryByName(choice.title!)]
                              .isSelected!;
                      List<String> selectedItems =
                          BlocProvider.of<AdvertiseCubit>(context)
                              .allCategories
                              .where((element) => element.isSelected!)
                              .map((e) => e.name)
                              .toList();
                      BlocProvider.of<AdvertiseCubit>(context)
                          .changeSelectedCategoriesByName = selectedItems;
                    },
                    child: ListTile(
                      leading: BlocProvider.of<AdvertiseCubit>(context)
                          .allCategories[
                              _advertiseCubit.getIndexOfCategoryByName(choice.title!)]
                          .icon,
                      title: Text(choice.title!),
                      trailing: AbsorbPointer(
                        absorbing: true,
                        child: Checkbox(
                          value: BlocProvider.of<AdvertiseCubit>(context)
                              .allCategories[_advertiseCubit
                                  .getIndexOfCategoryByName(choice.title!)]
                              .isSelected,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            );
          },
        ),
      ),
    );
  }
}
