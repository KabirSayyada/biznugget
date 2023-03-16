import 'package:biznugget/core/utils/media_query_values.dart';
import '../constants/payment_dimention.dart';
import '../constants/string_const.dart';
import '../widget/custom_container.dart';
import '../widget/custom_text_widget.dart';
import '../widget/nav_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    // final width = context.width ;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(rectangleBackgroundImage),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kOuterPaddingHorizontalRadius,
              vertical: kOuterPaddingVerticalRadius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 15),
              BackNavigationButton(color: Colors.white, opressed: () {}),
              SizedBox(height: height * 0.45),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  children: const [
                    PaymentTextWidget(
                      title: 'Payment Successful',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 24,
                    ),
                    SizedBox(height: 10),
                    PaymentTextWidget(
                      textAlign: TextAlign.center,
                      title:
                          'Thanks for your patronage,we really appreciate.\nWe would be glad if you could drop your feedback and leave a rating too',
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontsize: 14,
                    ),
                  ],
                ),
              )),
              SizedBox(height: height * 0.08),
              InkWell(
                onTap: () {},
                child: const CustomContainer(
                    //color:Color(0xf3F56F2) ,
                    color: Color.fromARGB(255, 8, 111, 194),
                    child: Center(
                        child: PaymentTextWidget(
                      title: 'Return',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 18,
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
