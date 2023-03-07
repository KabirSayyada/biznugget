import 'package:biznugget/features/payment/bloc/payment_event.dart';
import 'package:biznugget/features/payment/bloc/payment_state.dart';
import 'package:biznugget/features/payment/bloc/paymet_bloc.dart';
import 'package:biznugget/features/payment/payment_view/credit_card.dart';
import 'package:biznugget/features/payment/payment_view/internet_banking.dart';
import 'package:biznugget/features/payment/payment_view/payment_initial_screen.dart';
import 'package:biznugget/features/payment/payment_view/paypal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_payment_option.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: BlocConsumer<PaymentBloc, PaymentState>(
            builder: (context, paymentState) {
              if (paymentState is PaymentStateInitaial) {
                return const PaymentInitScreen();
              }
              if (paymentState is PaymentStateCreditAndDebit) {
                //credit card view
                return const CreditCardScreen();
              }
              if (paymentState is PaymentStatePayPal) {
                //credit card view
                return const PayPalScreen();
              }
              if (paymentState is PaymentStateInternetBanking) {
                //Internet Banking view
                return const InternetBanking();
              }
              if (paymentState is PaymentStateAddAnotherPaymentOption) {
                //Addanother Payment view
                return const AddAnotherPaymentOption();
              }
              //this shouldn't happen
              return Container();
            },
            listener: (context, paymentState) {},
          ),
        ),
      ],
    );
  }
}
