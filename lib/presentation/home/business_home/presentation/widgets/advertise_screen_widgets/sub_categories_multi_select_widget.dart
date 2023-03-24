import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/advertise_cubit/sub_categories_cubit/sub_categories_cubit.dart';

class SubCategoriesMultiSelectWidget extends StatelessWidget {
  SubCategoriesMultiSelectWidget({super.key});

  final SubCategoriesCubit _subCategoriesCubit = SubCategoriesCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoriesCubit, SubCategoriesState>(
      builder: (context, state) {
        if (state is SubCategoriesLoaded &&
            BlocProvider.of<SubCategoriesCubit>(context)
                .allSubCategories
                .isNotEmpty) {
          return Container(
            decoration: BoxDecoration(
              // gradient: AppColors.primaryGradient(),
              borderRadius: BorderRadius.circular(Dimensions.radius10),
            ),
            child: SmartSelect<String>.multiple(
              // data source / items to choose from
              choiceItems: BlocProvider.of<SubCategoriesCubit>(context)
                  .allSubCategories
                  .map((cate) => S2Choice<String>(
                        value: cate.name,
                        title: cate.name,
                      ))
                  .toList(),
              onChange: (selected) {
                BlocProvider.of<SubCategoriesCubit>(context)
                    .changeSelectedSubCategoriesByName = selected.value;
              },
              selectedChoice: BlocProvider.of<SubCategoriesCubit>(context)
                  .selectedSubCategories
                  .map((cate) => S2Choice<String>(
                        value: cate.name,
                        title: cate.name,
                      ))
                  .toList(),

              placeholder: '',
              modalType: S2ModalType.popupDialog,
              // modal / dialog config
              title: 'Sub Categories',
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
                type: S2ChoiceType.chips,
              ),
              // tile / button  builder
              tileBuilder: (context, state) {
                return S2Tile.fromState(
                  hideValue: true,
                  state,
                  // show two lines for title and subtitle
                  // isTwoLine: true,
                  leading: Icon(
                    Icons.category,
                    size: Dimensions.iconSize30,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down,
                    size: Dimensions.iconSize30,
                    color: Colors.white,
                  ),
                  title: const BigText(
                      text: 'Sub Categories',
                      color: Colors.white,
                      textAlign: TextAlign.center),
                );
              },
              onModalClose: (state, confirmed) {
                BlocProvider.of<SubCategoriesCubit>(context)
                    .changeSelectedSubCategoriesByName = state.selection!.value;
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
