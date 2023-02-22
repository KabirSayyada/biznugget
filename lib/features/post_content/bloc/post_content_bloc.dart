import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_content_event.dart';
part 'post_content_state.dart';

class PostContentBloc extends Bloc<PostContentEvent, PostContentState> {
  PostContentBloc() : super(PostContentInitial()) {
    on<PostContentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
