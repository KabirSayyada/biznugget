import 'package:biznugget/core/services/notification_service.dart';
import 'package:flutter/material.dart';

import '../../data/services/message_service.dart';
import 'message_item.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: MessageService.messages.length + 1,
          itemBuilder: (_, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.grey.shade100
                        )
                    ),
                  ),
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  NotificationService.add(
                    title: 'Messages',
                    body: 'Messages',
                    channel: NotificationChannel.messages,
                  );
                },
                child: MessageItem(message: MessageService.messages[index - 1]),
              );
            }
          },
          separatorBuilder: (_, index) {
            if (index == 0) {
              return const SizedBox();
            } else {
              return const Divider();
            }
          },
        ),
      ),
    );
  }
}
