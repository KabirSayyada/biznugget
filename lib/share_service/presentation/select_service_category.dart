import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import '../../core/utils/colors.dart';
import '../../core/widgets/category_card.dart';
import '../../create_ad/helpers/category_list.dart';

class SelectServiceCategory extends StatefulWidget {
  const SelectServiceCategory({super.key});

  @override
  State<SelectServiceCategory> createState() => _SelectServiceCategoryState();
}

class _SelectServiceCategoryState extends State<SelectServiceCategory> {
  String dropdown = '';
  String dropdownValue = 'New';

  String searchString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: AppBar(
            shadowColor: AppColors.appBarElevationColor,
            leading: Row(
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            elevation: 4.0.h,
            centerTitle: true,
            title: Text(
              "Select Category",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColors.appWhite,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              enableSuggestions: true,
              onChanged: (value) {
                setState(() {
                  searchString = value.toLowerCase();
                });
              },
              decoration: const InputDecoration(
                  labelText: 'Search category',
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color.fromARGB(255, 102, 235, 242),
                  hoverColor: Colors.red,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 21, 201, 225))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white, width: 3.0))),
            ),
            FutureBuilder(
              builder:
                  (BuildContext context, AsyncSnapshot<CategoryList> snapshot) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: serviceCategoryList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 0,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final cateory =
                        serviceCategoryList[index].title.toLowerCase();
                    return cateory.toLowerCase().contains(searchString)
                        ? InkWell(
                            onTap: () {
                              context.go(AppRouter.shareService);
                              Navigator.pop(context, 'Category 1');
                            },
                            child: CategoryCard(
                              hintColor: AppColors.appTextColor,
                              enabled: false,
                              hintText: cateory,
                            ),
                          )
                        : Container();
                  },
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
