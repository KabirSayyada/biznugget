import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'share_service_event.dart';
part 'share_service_state.dart';

class ShareServiceBloc extends Bloc<ShareServiceEvent, ShareServiceState> {
  ShareServiceBloc() : super(ShareServiceInitial()) {
    on<ShareServiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
