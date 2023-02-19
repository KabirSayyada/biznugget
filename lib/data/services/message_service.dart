import '../models.dart';

class MessageService {
  static final messages = List.generate(20, (index) {
    switch (index % 3) {
      case 0:
        return Message(
          to: 'Stacy',
          from:
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          content:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          time: index == 0
              ? DateTime.now()
              : DateTime.now().subtract(Duration(days: index)),
        );
      case 1:
        return Message(
          to: 'Randy',
          from:
              'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          content:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          time: DateTime.now().subtract(Duration(days: index)),
        );
      default:
        return Message(
          to: 'Megumi',
          from:
              'https://plus.unsplash.com/premium_photo-1664453546814-19c8fab391e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          content:
              'The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
          time: DateTime.now().subtract(Duration(days: index)),
        );
    /**/}
  });
}
