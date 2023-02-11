import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onTap;
  Color? color;
  double? size;
  double? height;
  double? width;
  Gradient? gradient;

  CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.size,
    this.height,
    this.width,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// custom button widget
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? Dimensions.height35,
        width: width ?? Dimensions.width,
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.radius10,
          vertical: Dimensions.radius5,
        ),
        decoration: BoxDecoration(
          gradient: gradient,
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(Dimensions.radius5),
        ),
        child: BigText(
          text: text,
          color: Colors.white,
          size: size ?? 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
