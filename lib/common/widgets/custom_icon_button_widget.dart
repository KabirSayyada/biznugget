import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    this.size,
    this.color,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: color ?? Colors.red[600],
        size: size ?? 30,
      ),
    );
  }
}
