import 'package:biznugget/core/services/notification_service.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('messages'),
      ),
      body: GestureDetector(
        child: Center(
          child: Text("messages"),
        ),
        onTap: () {
          NotificationService.add(
            title: 'Messages',
            body: 'Messages',
            channel: NotificationChannel.messages,
          );
        },
      ),
    );
  }
}
