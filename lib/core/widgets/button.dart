import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.title,
    this.height,
    required this.width,
    required this.onTap,
  });

  final String title;
  final double? height;
  final double width;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 41.h,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff01C3CC),
              Color(0xff3F56F2),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.appWhite,
            ),
          ),
        ),
      ),
    );
  }
}
