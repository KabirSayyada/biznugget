import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';

@immutable
abstract class PaymentState {
  const PaymentState();
}

@immutable
class PaymentStateCurrentUser extends PaymentState {
  final User user;
  const PaymentStateCurrentUser({required this.user});
  @override
  String toString() {
    return 'User details ';
  }
}

@immutable
class PaymentStateInitaial extends PaymentState {
  const PaymentStateInitaial();
}

@immutable
class PaymentStateCreditAndDebit extends PaymentState {
  const PaymentStateCreditAndDebit();
}

@immutable
class PaymentStateInternetBanking extends PaymentState {
  const PaymentStateInternetBanking();
}

@immutable
class PaymentStateAddAnotherPaymentOption extends PaymentState {
  const PaymentStateAddAnotherPaymentOption();
}

@immutable
class PaymentStatePayPal extends PaymentState {
  const PaymentStatePayPal();
}

extension GetUser on PaymentState {
  User? get getLoggeduser {
    final cls = this;
    if (cls is PaymentStateCurrentUser) {
      return cls.user;
    } else {
      return null;
    }
  }
}
