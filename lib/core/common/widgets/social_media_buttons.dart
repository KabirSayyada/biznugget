import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons(
      {super.key,
      required this.height,
      required this.width,
      required this.elevation,
      required this.widget, this.onTap});
  final double height, width, elevation;
  final Widget widget;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          margin: const EdgeInsets.all(15),
          elevation: 5.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: widget,
        ),
      ),
    );
  }
}