import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double? size;
  final double? height;
  final double? width;
  final Gradient? gradient;
  final BoxBorder? border;
  final Color? textColor;

  const CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.size,
    this.height,
    this.width,
    this.gradient,
    this.border,
    this.textColor,
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
          color: color,
          borderRadius: BorderRadius.circular(Dimensions.radius5),
          border: border,
        ),
        child: BigText(
          text: text,
          color: textColor ?? Colors.white,
          size: size ?? 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
