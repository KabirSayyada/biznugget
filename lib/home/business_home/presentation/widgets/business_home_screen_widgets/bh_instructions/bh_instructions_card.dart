import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_image_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/sb_instruction_model.dart';

class CustomCardForInstructions extends StatelessWidget {
  const CustomCardForInstructions({Key? key, required this.instruction})
      : super(key: key);

  final InstructionModel instruction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding(),
      decoration: _decoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Details
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: instruction.title,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  maxLines: 3,
                ),
                SizedBox(height: Dimensions.height10),
                SmallText(
                  text: instruction.description,
                  color: Colors.white70,
                  size: Dimensions.font14,
                  maxLines: 5,
                ),
              ],
            ),
          ),

          // image
          CustomImageWidget(
            assetImagePath: instruction.image,
            imgHeight: Dimensions.height120,
            imgWidth: Dimensions.width120,
            radius: Dimensions.radius50,
          ),
        ],
      ),
    );
  }

  EdgeInsets _padding() {
    return EdgeInsets.symmetric(
      horizontal: Dimensions.width25,
      vertical: Dimensions.height25,
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(Dimensions.radius10),
      gradient: _radialGradient(),
    );
  }

  RadialGradient _radialGradient() {
    return const RadialGradient(
      colors: [
        AppColors.primaryColor1,
        AppColors.primaryColor2,
      ],
      radius: 1,
    );
  }
}
