import 'package:biznugget/features/payment/bloc/payment_event.dart';
import 'package:biznugget/features/payment/bloc/payment_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

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
        } else {}
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
        } else {}
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
        } else {}
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
        } else {}
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
        } else {}
      },
    );
  }
}
