part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class FetchAllItems extends HomeScreenEvent {}

class FetchPopularItems extends HomeScreenEvent {}

class FetchCategories extends HomeScreenEvent {}
