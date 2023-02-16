import 'package:biznugget/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.title,
    this.height,
    required this.width,
  });

  final String title;
  final double? height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
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
              color: AppColor.appWhite),
        ),
      ),
    );
  }
}
