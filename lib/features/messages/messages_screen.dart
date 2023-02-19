import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

import '../../config/app_routes.dart';
import '../../data/services/message_service.dart';
import 'message_item.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: EasySearchBar(
        title: const Text('Messages'),
        foregroundColor: theme.colorScheme.onPrimary,
        backgroundColor: theme.colorScheme.primary,
        onSearch: (value) {},
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: MessageService.messages.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.message,
                arguments: MessageService.messages[index],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: MessageItem(
                  message: MessageService.messages[index],
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => const Divider(),
        ),
      ),
    );
  }
}
