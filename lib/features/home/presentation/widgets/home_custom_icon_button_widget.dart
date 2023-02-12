import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeCustomIconButtonWidget extends StatelessWidget {
  const HomeCustomIconButtonWidget(
      {Key? key,
      this.height,
      this.width,
      this.iconSize,
      this.radius,
      this.bgColor,
      this.iconColor,
      this.icon,
      this.onTap})
      : super(key: key);

  final double? height;
  final double? width;
  final double? iconSize;
  final double? radius;
  final Color? bgColor;
  final Color? iconColor;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius ?? 0),
            bottomRight: Radius.circular(radius ?? 0),
          ),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
