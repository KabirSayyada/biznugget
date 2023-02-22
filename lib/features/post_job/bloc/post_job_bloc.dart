import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_job_event.dart';
part 'post_job_state.dart';

class PostJobBloc extends Bloc<PostJobEvent, PostJobState> {
  PostJobBloc() : super(PostJobInitial()) {
    on<PostJobEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
