import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class PaymentEvent {
  const PaymentEvent();
}

@immutable
class PaymentEventInitialize extends PaymentEvent {
  const PaymentEventInitialize();
}

@immutable
class PaymentEventCurrentUser extends PaymentEvent {
  const PaymentEventCurrentUser();
}

@immutable
class PaymentEventGoToCreditAndDebitCard extends PaymentEvent {
  const PaymentEventGoToCreditAndDebitCard();
}

@immutable
class PaymentEventGoToInternetBanking extends PaymentEvent {
  const PaymentEventGoToInternetBanking();
}

@immutable
class PaymentEventGoToPayPal extends PaymentEvent {
  const PaymentEventGoToPayPal();
}

@immutable
class PaymentEventGoToAddAnotherPaymentOption extends PaymentEvent {
  const PaymentEventGoToAddAnotherPaymentOption();
}
