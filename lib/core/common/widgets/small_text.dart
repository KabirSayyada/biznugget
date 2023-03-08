import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final double height;
  final TextAlign? textAlign;
  final int? maxLines;

  const SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFCCC7C1),
    this.size = 0,
    this.height = 1.2,
    this.textAlign,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontFamily: 'Roboto',
          height: height),
    );
  }
}
