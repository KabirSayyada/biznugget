import 'package:biznugget/features/payment/bloc/payment_event.dart';
import 'package:biznugget/features/payment/bloc/paymet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentInitScreen extends StatelessWidget {
  const PaymentInitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Screen',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'choose payment option',
              ),
            ),
            Column(
              children: <TextButton>[
                TextButton(
                  onPressed: () {
                    context
                        .read<PaymentBloc>()
                        .add(const PaymentEventGoToCreditAndDebitCard());
                  },
                  child: const Text(
                    'credit card ',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<PaymentBloc>()
                        .add(const PaymentEventGoToInternetBanking());
                  },
                  child: const Text(
                    'internet banking ',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<PaymentBloc>()
                        .add(const PaymentEventGoToPayPal());
                  },
                  child: const Text(
                    'Paypal ',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<PaymentBloc>()
                        .add(const PaymentEventGoToAddAnotherPaymentOption());
                  },
                  child: const Text(
                    'Add option ',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
