import 'package:biznugget/core/utils/media_query_values.dart';
import 'package:biznugget/features/payment/constants/payment_dimention.dart';
import 'package:biznugget/features/payment/widget/custom_container.dart';
import 'package:biznugget/features/payment/widget/custom_text_widget.dart';
import 'package:biznugget/features/payment/widget/nav_button.dart';
import 'package:biznugget/features/subscription/constants/colours.dart';
import 'package:biznugget/features/subscription/constants/string.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class SubscriptionInitial extends StatefulWidget {
  const SubscriptionInitial({Key? key}) : super(key: key);

  @override
  State<SubscriptionInitial> createState() => _SubscriptionInitialState();
}

class _SubscriptionInitialState extends State<SubscriptionInitial> {
  String title = 'Get 3 days for N1254.02';
  int value = 0;
  @override
  Widget build(BuildContext context) {
    final height = context.height;
    final width = context.width;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kOuterPaddingHorizontalRadius,
            vertical: kOuterPaddingVerticalRadius),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 22),
            BackNavigationButton(opressed: () {}),
            SizedBox(height: height / 16),
            const PaymentTextWidget(
              title: 'Choose\nSubscription plan',
              fontsize: 24,
            ),
            SizedBox(height: height / 35),
            NotificationListener<ScrollNotification>(
              onNotification: _scrollFunction,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  const SizedBox(
                    width: 5,
                  ),
                  _buildSubPlanBox(
                    title: 'Silver',
                    subtitle: '3 days ~ N1,254.02',
                    bigSubBoxColor: const [
                      Color.fromARGB(255, 220, 220, 219),
                      Color.fromARGB(255, 185, 185, 185),
                    ],
                    smallSubBoxColor: const [
                      Color.fromRGBO(250, 250, 249, 1),
                      Color.fromARGB(255, 196, 196, 195),
                    ],
                    boxShadowColor: const Color.fromARGB(255, 221, 221, 221),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildSubPlanBox(
                    title: 'Gold',
                    subtitle: '7 days ~ N3,684.32',
                    bigSubBoxColor: const [
                      Color.fromARGB(255, 251, 225, 77),
                      Color.fromARGB(255, 223, 180, 10),
                    ],
                    smallSubBoxColor: const [
                      Color.fromRGBO(244, 241, 103, 1),
                      Color.fromARGB(255, 248, 213, 87),
                    ],
                    boxShadowColor: const Color.fromARGB(255, 239, 206, 72),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildSubPlanBox(
                    title: 'Platinium',
                    subtitle: '12 days ~ N6,908.10',
                    bigSubBoxColor: const [
                      Color.fromRGBO(228, 196, 239, 1),
                      Color.fromARGB(255, 115, 56, 134),
                    ],
                    smallSubBoxColor: const [
                      Color.fromRGBO(229, 173, 245, 1),
                      Color.fromARGB(255, 232, 173, 239),
                    ],
                    boxShadowColor: const Color.fromARGB(255, 215, 151, 226),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: value == 0
                        ? kButtonColor
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: value == 1
                        ? kButtonColor
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: value == 2
                        ? kButtonColor
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const PaymentTextWidget(
              title: 'Learn about subcription plans',
              fontsize: 18,
            ),
            const SizedBox(
              height: 16,
            ),
            _buildSubKnowMoreBox(),
            const SizedBox(
              height: 16,
            ),
            _buildSubKnowMoreBox(),
            const SizedBox(
              height: 40,
              //TODO:change to mediaQuery
            ),
            _customButtom(title: title),
          ],
        ),
      ),
    ));
  }

  CustomContainer _buildSubKnowMoreBox() {
    final height = context.height;

    return CustomContainer(
        height: height * 0.12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PaymentTextWidget(
              title: 'Reach large audience',
              fontsize: 14,
              fontWeight: FontWeight.bold,
              color: kBrownColor,
            ),
            const SizedBox(height: 8),
            PaymentTextWidget(
              title: 'subcription plans' * 6,
              fontsize: 13,
              fontWeight: FontWeight.w100,
            ),
          ],
        ));
  }

  String getCurrency() {
    var format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    return format.currencySymbol;
  }

  Widget _buildSubPlanBox({
    required String title,
    required String subtitle,
    required List<Color> bigSubBoxColor,
    required List<Color> smallSubBoxColor,
    required Color boxShadowColor,
  }) {
    final height = context.height;
    final width = context.width;
    return Container(
      height: height * 0.24,
      width: width * 0.75,
      decoration: BoxDecoration(
        //color: kGoldColorDark,
        gradient: LinearGradient(
          colors: bigSubBoxColor,
          begin: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PaymentTextWidget(
                  title: title,
                  fontWeight: FontWeight.w700,
                  fontsize: 18,
                  color: kBrownColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                PaymentTextWidget(
                  title: subtitle,
                  fontWeight: FontWeight.w400,
                  fontsize: 14,
                  color: kBrownColor,
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
                height: height * 0.12,
                width: width * 0.22,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: smallSubBoxColor,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: boxShadowColor,
                        blurStyle: BlurStyle.solid,
                        blurRadius: 4,
                        offset: const Offset(6, 6),
                      )
                    ]),
                child: Center(
                  child: Image.asset(
                    naira_img,
                    fit: BoxFit.contain,
                    height: height * 0.07,
                    width: width * 0.18,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _customButtom({required String title}) {
    return InkWell(
      onTap: () {},
      child: CustomContainer(
          color: kButtonColor,
          child: Center(child: PaymentTextWidget(title: title))),
    );
  }

  bool _scrollFunction(ScrollNotification scrollNotification) {
    final scrollOffset = scrollNotification.metrics.pixels;
    if (scrollOffset > 00.0 && scrollOffset < 200) {
      setState(() {
        //finding this [₦] dificcult to print with this font
        title = "Get 3 days for N1254.02";
        value = 0;
      });
    } else if (scrollOffset > 200 && scrollOffset < 400) {
      setState(() {
        title = "Get 7 days for N3,684.32";
        value = 1;
      });
    } else if (scrollOffset > 400) {
      setState(() {
        title = "Get 12 days for N6,908.10";
        value = 2;
      });
    }
    return true;
  }
}
