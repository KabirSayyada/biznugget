part of 'filter_cubit.dart';

@immutable
abstract class FilterState {}

class FilterInitial extends FilterState {}

class FilterLoading extends FilterState {}

class FilterSuccess extends FilterState {
  final List<dynamic> filteredList;

  FilterSuccess(this.filteredList);
}

class FilterError extends FilterState {
  final String message;

  FilterError(this.message);
}