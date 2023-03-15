import 'package:flutter/material.dart';
import 'package:biznugget/core/utils/media_query_values.dart';
import '../constants/color_const.dart';
import '../constants/payment_dimention.dart';
import '../constants/list_payment_option.dart';
import '../widget/custom_button.dart';
import '../widget/custom_container.dart';
import '../widget/custom_text_widget.dart';
import '../widget/nav_button.dart';

class InternetBanking extends StatelessWidget {
  const InternetBanking({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kOuterPaddingHorizontalRadius,
          vertical: kOuterPaddingVerticalRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height / 20),
          BackNavigationButton(
            opressed: () {},
          ),
          SizedBox(height: height / 22),
          const PaymentTextWidget(
            title: 'Internet\nBanking',
            fontsize: 24,
          ),
          SizedBox(height: height / 20),
          const PaymentTextWidget(
            title: 'Choose bank',
            color: kBackNavBtnColor,
          ),
          CustomContainer(
            vertical: 0,
            horizointal: 28,
            height: 420,
            child: ListView.builder(
              itemCount: bankList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    //  print('${bankList[index]} is selcted');
                  },
                  child: CustomContainer(
                    height: 40,
                    vertical: 0,
                    horizointal: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PaymentTextWidget(
                            fontsize: 12,
                            title: bankList[index],
                          ),
                          const Divider(
                            color: kBackNavBtnColor,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            oppressed: () {},
            title: 'More options',
          )
        ],
      ),
    ));
  }
}
