part of 'advertise_cubit.dart';

@immutable
abstract class AdvertiseState {}


class AdvertiseSelected extends AdvertiseState {}

class CategorySelected extends AdvertiseState {}

class SubCategoriesLoaded extends AdvertiseState {}

class SubCategorySelected extends AdvertiseState {}

