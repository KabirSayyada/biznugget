import 'package:flutter/material.dart';
import '../../../utils/colors_.dart';
import '../constant/constant.dart';

class PaidAdsCustomAppBar extends StatelessWidget {
  final String title;
  const PaidAdsCustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: bodyPadding,
      child: Row(
        children: [
          IconButton(
              color: AppColor.primaryColor2,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios)),
          Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColor.primaryColor2),
          ),
          const Spacer(),
          IconButton(
              color: AppColor.primaryColor2,
              onPressed: () {},
              icon: const Icon(Icons.info_outline)),
        ],
      ),
    );
  }
}
