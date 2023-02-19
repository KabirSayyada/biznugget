import 'package:biznugget/features/home/business_home/data/models/sb_instruction_model.dart';
import 'package:biznugget/features/home/business_home/data/models/sb_article_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'business_home_state.dart';

class BusinessHomeCubit extends Cubit<BusinessHomeState> {
  BusinessHomeCubit() : super(BHInitial());

  /// const data for slider
  final List<InstructionModel> instructions = [
    InstructionModel(
      title: 'Create your store',
      description:
          'Create your store and start selling your products in minutes',
      image: AppImages.FirstBHSliderItem,
    ),
    InstructionModel(
      title: 'Add your products and services',
      description: 'Add your products and services to your store',
      image: AppImages.addYourProducts,
    ),
    InstructionModel(
      title: 'Start selling',
      description: 'Start selling your products for many people',
      image: AppImages.startSelling,
    ),
    InstructionModel(
      title: 'Buy something',
      description: 'Start exploring our products and services',
      image: AppImages.buySomeThing,
    ),

  ];

  // const data for for buy and sell sections
  final List<ArticleModel> articles = [
    ArticleModel(
        title: 'Provide or sell something',
        description:
            'You can provide a product for selling or renting, provide a remote service or an on-site service and you can provide any thing that might be helpful for others'),
    ArticleModel(
        title: 'Buy something',
        description:
            'Here you can find many products and services you can buy or rent, you can buy technological devices, clothes, rent an apartment and more, find several services'),
  ];

  /// slider index
  int _selectedIndex = 0;

  get selectedIndex => _selectedIndex;

  void selectSliderIndex(int index) {
    _selectedIndex = index;
    emit(BHSliderIndexSelected());
  }
}
