part of 'sell_or_buy_cubit.dart';

@immutable
abstract class SellOrBuyState {}

class SellOrBuyInitial extends SellOrBuyState {}


class SBSliderIndexSelected extends SellOrBuyState {
  final int index;

  SBSliderIndexSelected({required this.index});
}
