import 'package:biznugget/core/utils/media_query_values.dart';
import '../constants/color_const.dart';
import '../constants/payment_dimention.dart';
import '../constants/string_const.dart';
import '../widget/custom_button.dart';
import '../widget/custom_container.dart';
import '../widget/custom_text_widget.dart';
import '../widget/nav_button.dart';
import 'package:flutter/material.dart';

class AddCreditCardScreen extends StatelessWidget {
  const AddCreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    // final width = context.width ;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kOuterPaddingHorizontalRadius,
              vertical: kOuterPaddingVerticalRadius),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: height / 22),
            BackNavigationButton(
              opressed: () {
                //TODO
                //to implent a route GoBack Event to any pay that directed us here
              },
            ),

            SizedBox(height: height / 25),
            const PaymentTextWidget(
              title: 'Total price',
            ),
            const PaymentTextWidget(
              title: 'N25,340.00',
              color: kBackNavBtnColor,
              fontsize: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: height / 35),
            const PaymentTextWidget(
              title: 'Payment method',
            ),
            // paymentMethodScroller(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildOptionBox(imgString: paypalImage, title: 'Paypal'),
                  buildCreditCardBox(),
                  buildOptionBox(
                      imgString: internetBankingImage, title: 'Bank'),
                ],
              ),
            ),
            SizedBox(height: height / 35),
            buildPaymentTextAndEdit(),

            const SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Image.asset(
                        masterCardImage,
                        height: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const PaymentTextWidget(
                      title: '3266  4546  ****  ****',
                      fontWeight: FontWeight.w300,
                      fontsize: 14,
                    ),
                  ],
                )),
            ///////////////
            SizedBox(height: height / 45),
            const PaymentTextWidget(
              title: 'Promo code',
              color: kBackNavBtnColor,
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: PaymentTextWidget(
                    title: '3266 - 4546',
                    fontWeight: FontWeight.w300,
                    fontsize: 14,
                  ),
                )),
            SizedBox(height: height / 10),
            CustomButton(title: 'Pay', oppressed: () {}),
          ]),
        ),
      ),
    );
  }

  buildPaymentTextAndEdit() {
    return Row(
      children: [
        const PaymentTextWidget(
          title: 'Payment information',
          color: kBackNavBtnColor,
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const Text(
            'Edit',
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 25, 7, 188),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Widget buildOptionBox({required String imgString, required String title}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomContainer(
        color: const Color(0xff4bd1d7).withOpacity(0.1),
        child: Row(
          children: [
            PaymentTextWidget(
              title: title,
              fontWeight: FontWeight.w300,
              fontsize: 12,
            ),

            const SizedBox(width: 15),
            Image.asset(
              imgString,
              width: 23,
              color: const Color(0xff4bd1d7).withOpacity(0.3),
            ),
            // Image.asset('lib/assets/images/biznugget/Vector (1).png'),
          ],
        ),
      ),
    );
  }

  Widget buildCreditCardBox() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 43,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        decoration: BoxDecoration(
            color: const Color(0xff4bd1d7).withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(2, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const PaymentTextWidget(title: 'Credit'),
              const SizedBox(width: 15),
              Image.asset(
                creditDebitImage,
                width: 40,
                color: const Color(0xff4bd1d7).withOpacity(0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
