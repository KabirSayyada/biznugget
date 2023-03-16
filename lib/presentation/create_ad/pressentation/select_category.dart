import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors.dart';
import '../../widgets/category_card.dart';
import '../helpers/category_list.dart';

class SelectAdCategory extends StatefulWidget {
  const SelectAdCategory({super.key});

  @override
  State<SelectAdCategory> createState() => _SelectAdCategoryState();
}

class _SelectAdCategoryState extends State<SelectAdCategory> {
  String dropdown = '';
  String dropdownValue = 'New';

  String searchString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: AppBar(
            shadowColor: AppColor.appBarElevationColor,
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
            backgroundColor: AppColor.appWhite,
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
            SizedBox(
              height: 10.h,
            ),
            FutureBuilder(
              builder:
                  (BuildContext context, AsyncSnapshot<CategoryList> snapshot) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: categoryList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 0,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final cateory = categoryList[index].title.toLowerCase();
                    return cateory.toLowerCase().contains(searchString)
                        ? CategoryCard(
                            hintColor: AppColor.appTextColor,
                            enabled: false,
                            hintText: cateory,
                            suffixIcon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColor.black,
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
