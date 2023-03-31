import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomUploadImageButton extends StatelessWidget {
  const CustomUploadImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: 'Add photo', size: Dimensions.font14),
        SizedBox(height: Dimensions.height10),
        Container(
            height: Dimensions.height40,
            width: Dimensions.width40,
            decoration: BoxDecoration(
              // gradient: AppColors.primaryGradient(),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: Dimensions.iconSize30,
            )),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            BigText(text: "Supported formats are ", size: Dimensions.font14),
            BigText(
                text: ".jpeg, .gif ",
                size: Dimensions.font14,
                fontWeight: FontWeight.bold),
            BigText(text: "and ", size: Dimensions.font14),
            BigText(
                text: ".png.",
                size: Dimensions.font14,
                fontWeight: FontWeight.bold),
          ],
        ),
        Row(
          children: [
            BigText(text: "Pictures may not exceed ", size: Dimensions.font14),
            BigText(
                text: "5MB.",
                size: Dimensions.font14,
                fontWeight: FontWeight.bold),
          ],
        ),
      ],
    );
  }
}
