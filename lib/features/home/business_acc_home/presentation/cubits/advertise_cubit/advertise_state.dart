part of 'advertise_cubit.dart';

@immutable
abstract class AdvertiseState {}

class AdvertiseInitial extends AdvertiseState {}

class AdvertiseSelected extends AdvertiseState {}

class AdvertiseRemoved extends AdvertiseState {}