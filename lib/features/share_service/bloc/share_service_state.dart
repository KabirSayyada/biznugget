part of 'share_service_bloc.dart';

abstract class ShareServiceState extends Equatable {
  const ShareServiceState();
  
  @override
  List<Object> get props => [];
}

class ShareServiceInitial extends ShareServiceState {}
