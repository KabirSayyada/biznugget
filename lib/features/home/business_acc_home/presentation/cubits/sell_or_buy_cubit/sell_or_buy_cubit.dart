import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/features/home/business_acc_home/data/models/sb_article_model.dart';
import 'package:biznugget/features/home/business_acc_home/data/models/sb_instruction_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sell_or_buy_state.dart';

class SellOrBuyCubit extends Cubit<SellOrBuyState> {
  SellOrBuyCubit() : super(SellOrBuyInitial());

  final List<SBInstructionModel> instructions = [
    SBInstructionModel(
      title: 'Create your store',
      description:
          'Create your store and start selling your products in minutes',
      image: AppImages.item1,
    ),
    SBInstructionModel(
      title: 'Add your products and services',
      description: 'Add your products and services to your store',
      image: AppImages.item2,
    ),
    SBInstructionModel(
      title: 'Start selling',
      description: 'Start selling your products for many people',
      image: AppImages.item3,
    ),
    SBInstructionModel(
      title: 'Buy something',
      description: 'Start exploring our products and services',
      image: AppImages.item4,
    ),
  ];

  final List<SBArticleModel> articles = [
    SBArticleModel(
        title: 'Provide or sell something',
        description:
            'You can provide a product for selling or renting, provide a remote service or an on-site service and you can provide any thing that might be helpful for others'),
    SBArticleModel(
        title: 'Buy something',
        description:
            'Here you can find many products and services you can buy or rent, you can buy technological devices, clothes, rent an apartment and more, find several services'),
  ];

  int _selectedIndex = 0;

  get selectedIndex => _selectedIndex;

  void selectSliderIndex(int index) {
    _selectedIndex = index;
    emit(SBSliderIndexSelected(index: index));
  }
}
