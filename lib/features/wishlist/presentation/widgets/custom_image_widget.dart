import 'package:biznugget/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
  }) : super(key: key);

  final double? height;
  final double? width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Dimensions.height100,
      width: width ?? Dimensions.height100,
      margin: EdgeInsets.only(
        top: Dimensions.radius10,
        left: Dimensions.radius5,
        right: Dimensions.radius5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius10),
          topRight: Radius.circular(Dimensions.radius10),
        ),
      ),
    );
  }
}
