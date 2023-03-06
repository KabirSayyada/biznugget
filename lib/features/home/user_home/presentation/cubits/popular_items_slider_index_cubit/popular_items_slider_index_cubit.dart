import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'popular_items_slider_index_state.dart';

class PopularItemsSliderIndexCubit extends Cubit<PopularItemsSliderIndexState> {
  PopularItemsSliderIndexCubit() : super(SliderIndexSelected(index: 0));

  int _selectedIndex = 0;
  get selectedIndex => _selectedIndex;



  void selectSliderIndex(int index) {
    _selectedIndex = index;
    emit(SliderIndexSelected(index: index));
  }

}
