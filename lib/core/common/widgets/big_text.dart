import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';


class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextAlign? textAlign;

  const BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
    this.fontWeight = FontWeight.w400,
    this.decoration = TextDecoration.none,
    this.maxLines = 1,
    this.textAlign,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: fontWeight,
        decoration: decoration,
        // fontFamily: 'Roboto',
      ),
    );
  }
}
