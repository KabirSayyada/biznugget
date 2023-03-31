import 'package:biznugget/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/payment_event.dart';
import '../bloc/paymet_bloc.dart';
import '../constants/color_const.dart';
import '../constants/list_payment_option.dart';
import '../constants/payment_dimention.dart';
import '../constants/string_const.dart';
import '../widget/custom_container.dart';
import '../widget/custom_text_widget.dart';
import '../widget/nav_button.dart';

class PaymentInitScreen extends StatefulWidget {
  const PaymentInitScreen({super.key});

  @override
  State<PaymentInitScreen> createState() => _PaymentInitScreenState();
}

class _PaymentInitScreenState extends State<PaymentInitScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final height = context.height * 1;
    // final width = context.width * 1;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kOuterPaddingHorizontalRadius,
              vertical: kOuterPaddingVerticalRadius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ///////////////////////////////////////////
              // //main page ui continued here////

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
                    width: 35,
                    title: debitCredit,
                    imageIcon: creditDebitImage,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToCreditAndDebitCard());
                    },
                  ),
                  const SizedBox(height: 10),
                  buildPaymentMethodBox(
                    rigthPadding: 5,
                    width: 25,
                    title: internetBanking,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToInternetBanking());
                    },
                    imageIcon: internetBankingImage,
                  ),
                  const SizedBox(height: 10),
                  buildPaymentMethodBox(
                    rigthPadding: 5,
                    width: 25,
                    title: paypal,
                    imageIcon: paypalImage,
                    onPressed: () {
                      context
                          .read<PaymentBloc>()
                          .add(const PaymentEventGoToPayPal());
                    },
                  ),
                  const SizedBox(height: 10),
                  optionPaymentBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget optionPaymentBox() {
    final List<CustomListTile> dropPaymentOptionBlocStateList = [];
    for (String paymentOption in dropPaymentOptionStringList) {
      dropPaymentOptionBlocStateList.add(CustomListTile(
          title: paymentOption,
          isPressed: (paymentOption) {
            //TODO:implemet state for each bank option
            print('This payment Option $paymentOption is clicked');
          }));
    }
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (isExpanded == true) {
                isExpanded = false;
              } else if (isExpanded == false) {
                isExpanded = true;
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
            decoration: BoxDecoration(
                border: isExpanded
                    ? Border.all(color: kPaymentIconColor, width: 2)
                    : null,
                color: kPaymentWhiteColor,
                borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
            child: Row(children: [
              const PaymentTextWidget(title: addAnotherOption),
              const Spacer(),
              Container(
                child: isExpanded
                    ? const Icon(
                        Icons.keyboard_arrow_up,
                        size: kBackNavBtnRadius * 1.4,
                        color: kBackNavBtnColor,
                      )
                    : const Icon(
                        Icons.keyboard_arrow_down,
                        size: kBackNavBtnRadius * 1.4,
                        color: kBackNavBtnColor,
                      ),
              ),
            ]),
          ),
        ),
        Visibility(
          visible: isExpanded,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(1, 3), // changes position of shadow
                  ),
                ],
                color: kPaymentWhiteColor,
                borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
            child: Column(
              children: dropPaymentOptionBlocStateList,
            ),
          ),
        )
      ],
    );
  }

  // function to build payment method container
  Widget buildPaymentMethodBox({
    required String title,
    required String imageIcon,
    required Function() onPressed,
    double? height,
    double? width,
    double rigthPadding = 0.0,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomContainer(
        child: Row(children: [
          PaymentTextWidget(title: title),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: rigthPadding),
            child: Image.asset(
              imageIcon,
              height: height,
              width: width,
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Function(String) isPressed;
  final String title;
  const CustomListTile({
    super.key,
    required this.title,
    required this.isPressed(title),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: InkWell(
        onTap: () => isPressed(title),
        child: ListTile(
          title: PaymentTextWidget(title: title),
        ),
      ),
    );
  }
}
