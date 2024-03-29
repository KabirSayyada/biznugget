import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/services/message_service.dart';
import '../../core/utils/app_router.dart';
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
            final message = MessageService.messages[index];

            return InkWell(
              onTap: () => context.push('${AppRouter.messages}/${message.id}'),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: MessageItem(message: message),
              ),
            );
          },
          separatorBuilder: (_, index) => const Divider(),
        ),
      ),
    );
  }
}
