import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  VoidCallback onTap;

  CustomButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// custom button widget
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.radius10,
          vertical: Dimensions.radius5,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: BigText(
          text: 'Add',
          color: Colors.white,
          size: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
