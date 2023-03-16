import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/utils/app_constants.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../widgets/advertise_screen_widgets/adv_custom_text_form_field_widget.dart';
import '../widgets/advertise_screen_widgets/categories_multi_select_widget.dart';
import '../widgets/advertise_screen_widgets/custom_upload_image_button_widget.dart';
import '../widgets/advertise_screen_widgets/sub_categories_multi_select_widget.dart';
import '../widgets/bh_drawer.dart';
import '../widgets/custom_app_bar.dart';

class AdvertiseScreen extends StatelessWidget {
  AdvertiseScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    AppConstants.screenHeight = MediaQuery.of(context).size.height;
    AppConstants.screenWidth = MediaQuery.of(context).size.width;
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
                        SizedBox(height: Dimensions.height60),
                        // categories
                        CategoriesMultiSelectWidget(),
                        SizedBox(height: Dimensions.height15),
                        // sub categories
                        SubCategoriesMultiSelectWidget(),
                        SizedBox(height: Dimensions.height15),
                        // title
                        ADVCustomTextFormFieldWidget(
                            maxLength: 100, controller: _titleController),
                        SizedBox(height: Dimensions.height15),
                        // upload image
                        const CustomUploadImageButton(),
                        SizedBox(height: Dimensions.height15),
                        // description
                        SizedBox(
                          height: Dimensions.height220,
                          child: ADVCustomTextFormFieldWidget(
                              maxLines: 20,
                              maxLength: 10000,
                              controller: _descriptionController),
                        ),
                        SizedBox(height: Dimensions.height15),
                        // submit button
                        CustomButtonWidget(
                          text: 'Submit',
                          //  gradient: AppColors.primaryGradient(),
                          height: Dimensions.height50,
                          width: Dimensions.width200,
                          onTap: () {
                            // todo : submit form
                          },
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
}
