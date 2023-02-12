part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenState {}

class HomeItemsScreenInitial extends HomeScreenState {}

/// Fetch All Items
class FetchAllItemsLoading extends HomeScreenState {}

class FetchAllItemsSuccess extends HomeScreenState {}

class FetchAllItemsFailure extends HomeScreenState {
  final String message;

  FetchAllItemsFailure({required this.message});
}

/// Fetch Popular Items
class FetchPopularItemsLoading extends HomeScreenState {}

class FetchPopularItemsSuccess extends HomeScreenState {}

class FetchPopularItemsFailure extends HomeScreenState {
  final String message;

  FetchPopularItemsFailure({required this.message});
}

/// Fetch Categories

class FetchCategoriesLoading extends HomeScreenState {}

class FetchCategoriesSuccess extends HomeScreenState {}

class FetchCategoriesFailure extends HomeScreenState {
  final String message;

  FetchCategoriesFailure({required this.message});
}
