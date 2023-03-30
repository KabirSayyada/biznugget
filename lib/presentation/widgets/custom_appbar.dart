import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../utils/colors_.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.suffixWidget,
    this.onTap,
    required this.title,
  });
  final String title;
  final Widget suffixWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      backgroundColor: AppColor.appWhite,
      actions: [
        Row(
          children: [
            InkWell(
              onTap: onTap,
              child: suffixWidget,
            ),
          ],
        ),
      ],
    );
  }
}
