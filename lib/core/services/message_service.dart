import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

class MessageService {
  static String get randomId {
    return const Uuid().v1();
  }

  static List<types.Message> getMessages(types.User user) {
    return List.generate(50, (index) {
      final name = index % 2 == 0 ? 'Layla' : user.firstName;
      final author = index % 2 == 0
          ? user
          : types.User(
              id: randomId,
              imageUrl:
                  'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
              firstName: 'Layla',
            );
      return types.TextMessage(
        author: author,
        id: randomId,
        text:
            'This $index review is very good, I guess we shall see $name, I have a good feeling about it.',
        createdAt: DateTime.now()
            .subtract(Duration(days: index))
            .millisecondsSinceEpoch,
      );
    });
  }

  static final List<types.Message> messages = List.generate(20, (index) {
    final date = (index == 0
            ? DateTime.now()
            : DateTime.now().subtract(Duration(days: index)))
        .millisecondsSinceEpoch;
    switch (index % 3) {
      case 0:
        return types.TextMessage(
          author: types.User(
            id: randomId,
            imageUrl:
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            firstName: 'Stacy',
          ),
          id: randomId,
          text:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          createdAt: date,
        );
      case 1:
        return types.TextMessage(
          author: types.User(
            id: randomId,
            imageUrl:
                'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            firstName: 'Randy',
          ),
          id: randomId,
          text:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          createdAt: date,
        );
      default:
        return types.TextMessage(
          author: types.User(
            id: randomId,
            imageUrl:
                'https://plus.unsplash.com/premium_photo-1664453546814-19c8fab391e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            firstName: 'Megumi',
          ),
          id: randomId,
          text:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          createdAt: date,
        );
    }
  });
}
