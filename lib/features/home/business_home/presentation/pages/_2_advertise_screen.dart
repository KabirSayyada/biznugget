import 'package:biznugget/features/home/business_home/presentation/widgets/advertise_screen_widgets/adv_categories_multi_select_dialog_widget.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/advertise_screen_widgets/adv_custom_text_form_field_widget.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/advertise_screen_widgets/adv_subcategories_dialog_widget.dart';
import 'package:biznugget/features/home/business_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/advertise_screen_widgets/categories_multi_select_widget.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/advertise_screen_widgets/sub_categories_multi_select_widget.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/bh_drawer.dart';
import 'package:biznugget/features/home/business_home/presentation/widgets/custom_app_bar.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdvertiseScreen extends StatelessWidget {
  AdvertiseScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  final AdvertiseCubit _advertiseCubit = AdvertiseCubit();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: const BHDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width20,
          ),
          child: Column(
            children: [
              SizedBox(height: Dimensions.height15),
              // custom app bar
              SizedBox(
                  height: Dimensions.height47,
                  child: BHCustomAppBar(drawerKey: _drawerKey)),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        /// test multislect checkbox
                        SizedBox(height: Dimensions.height60),
                        CategoriesMultiSelectWidget(),
                        SizedBox(height: Dimensions.height35),
                        // categories
                        // const ADVCategoriesMultiSelectDialog(),
                        // sub categories
                        SubCategoriesMultiSelectWidget(),
                        SizedBox(height: Dimensions.height35),
                        // title
                        ADVCustomTextFormFieldWidget(
                            maxLength: 100, controller: _titleController),
                        SizedBox(height: Dimensions.height25),

                        /// test stream builder
                        // description
                        SizedBox(
                          height: Dimensions.height220,
                          child: ADVCustomTextFormFieldWidget(
                              maxLines: 20,
                              maxLength: 10000,
                              controller: _descriptionController),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // BlocBuilder<AdvertiseCubit, AdvertiseState> _subCategories() {
  //   return BlocBuilder<AdvertiseCubit, AdvertiseState>(
  //     builder: (context, state) {
  //       return Stack(
  //         alignment: Alignment.center,
  //         children: [
  //           AbsorbPointer(
  //             absorbing: BlocProvider.of<AdvertiseCubit>(context).isEmpty,
  //             child: ADVSubCategoriesDialog(),
  //           ),
  //           if (BlocProvider.of<AdvertiseCubit>(context).isEmpty)
  //             Container(
  //               height: Dimensions.height35,
  //               width: double.infinity,
  //               color: Colors.black.withOpacity(0.5),
  //             ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
