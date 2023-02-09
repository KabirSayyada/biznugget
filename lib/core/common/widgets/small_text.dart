import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  TextAlign? textAlign;

  SmallText({
    Key? key,
    this.color = const Color(0xFFCCC7C1),
    required this.text,
    this.size = 0,
    this.height = 1.2,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontFamily: 'Roboto',
          height: height),
    );
  }
}
