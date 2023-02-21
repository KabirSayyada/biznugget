import 'package:biznugget/core/utils/media_query_values.dart';
import 'package:biznugget/features/payment/bloc/payment_event.dart';
import 'package:biznugget/features/payment/bloc/paymet_bloc.dart';
import 'package:biznugget/features/payment/constants/color_const.dart';
import 'package:biznugget/features/payment/constants/list_payment_option.dart';
import 'package:biznugget/features/payment/constants/payment_dimention.dart';
import 'package:biznugget/features/payment/constants/string_const.dart';
import 'package:biznugget/features/payment/widget/custom_text_widget.dart';
import 'package:biznugget/features/payment/widget/nav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentInitScreen extends StatelessWidget {
  const PaymentInitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    //final width = context.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kOuterPaddingHorizontalRadius,
              vertical: kOuterPaddingVerticalRadius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 22),
              BackNavigationButton(
                opressed: () {
                  //TODO
                  //to implent a route GoBack Event to any pay that directed us here
                },
              ),
              SizedBox(height: height / 16),
              const PaymentTextWidget(
                title: initalPageString,
                fontsize: 24,
              ),
              SizedBox(height: height / 16),
              Column(
                children: [
                  buildPaymentMethodBox(
                    title: debitCredit,
                    //TODO
                    //change test icon to design icon
                    icon: Icons.money,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToCreditAndDebitCard());
                    },
                  ),
                  const SizedBox(height: 10),
                  buildPaymentMethodBox(
                    title: internetBanking,
                    //TODO
                    //change test icon to design icon
                    icon: Icons.money,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToInternetBanking());
                    },
                  ),
                  const SizedBox(height: 10),
                  buildPaymentMethodBox(
                    title: paypal,
                    //TODO
                    //change test icon to design icon
                    icon: Icons.money,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToPayPal());
                    },
                  ),
                  const SizedBox(height: 10),
                  buidAnotherOption(),
                ],
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  //function to build payment method container

  Container buildPaymentMethodBox(
      {required String title,
      required IconData icon,
      required Function() onPressed}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: kPaymentWhiteColor,
          borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(children: [
          PaymentTextWidget(title: title),
          const Spacer(),
          Icon(icon, color: kPaymentIconColor, size: kPaymentIconSize),
        ]),
      ),
    );
  }

  Widget buidAnotherOption() {
    //this list will hold dynamic  String of payment coming from our constant file
    final List<DropdownMenuItem> dropPaymentOptionBlocStateList = [];
    for (String paymentOption in dropPaymentOptionStringList) {
      dropPaymentOptionBlocStateList.add(
        DropdownMenuItem(value: paymentOption, child: Text(paymentOption)),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: kPaymentWhiteColor,
          borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
      child: Row(
        children: [
          const PaymentTextWidget(title: addAnotherOption),
          const Spacer(),
          DropdownButton(
              icon: const Icon(
                Icons.arrow_downward,
                size: kBackNavBtnRadius,
                color: kBackNavBtnColor,
              ),
              underline: const SizedBox(),
              borderRadius: BorderRadius.circular(kPaymentBorderRadius),
              items: dropPaymentOptionBlocStateList,
              onChanged: (value) {}),
        ],
      ),
    );
  }
}
