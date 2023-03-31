
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentStateInitaial()) {
    on<PaymentEventInitialize>(
      (event, emit) {
        // log user out if not found
        final user = state.getLoggeduser;
        if (user == null) {
          emit(
            const PaymentStateInitaial(),
          );
        } else {
          print('credit payment to be implented');
        }
      },
    );
    //payment method is credit card
    on<PaymentEventGoToCreditAndDebitCard>(
      (event, emit) {
        // log user out if not found
        final user = state.getLoggeduser;
        if (user == null) {
          emit(
            const PaymentStateCreditAndDebit(),
          );
        } else {
          print('credit payment to be implented');
        }
      },
    );
    on<PaymentEventGoToPayPal>(
      (event, emit) {
        // log user out if not found
        final user = state.getLoggeduser;
        if (user == null) {
          emit(
            const PaymentStatePayPal(),
          );
        } else {
          print('paypal payment to be implented');
        }
      },
    );
    on<PaymentEventGoToInternetBanking>(
      (event, emit) {
        // log user out if not found
        final user = state.getLoggeduser;
        if (user == null) {
          emit(
            const PaymentStateInternetBanking(),
          );
        } else {
          print('internet payment to be implented');
        }
      },
    );

    on<PaymentEventGoToAddAnotherPaymentOption>(
      (event, emit) {
        // log user out if not found
        final user = state.getLoggeduser;
        if (user == null) {
          emit(
            const PaymentStateAddAnotherPaymentOption(),
          );
        } else {
          print('credit payment to be implented');
        }
      },
    );
  }
}
