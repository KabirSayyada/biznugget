import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_ad_event.dart';
part 'create_ad_state.dart';

class CreateAdBloc extends Bloc<CreateAdEvent, CreateAdState> {
  CreateAdBloc() : super(CreateAdInitial()) {
    on<CreateAdEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
