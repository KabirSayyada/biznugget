part of 'popular_items_slider_index_cubit.dart';

@immutable
abstract class PopularItemsSliderIndexState {}

class SliderIndexSelected extends PopularItemsSliderIndexState {
  final int index;

  SliderIndexSelected({required this.index});
}
