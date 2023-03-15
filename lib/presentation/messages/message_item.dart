import 'package:biznugget/utils/formatters.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class MessageItem extends StatelessWidget {
  final types.Message message;

  const MessageItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: CachedNetworkImage(
          imageUrl: message.author.imageUrl!,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(message.author.firstName!),
      subtitle: message is types.TextMessage
          ? Text(
              (message as types.TextMessage).text,
              maxLines: 2,
            )
          : null,
      trailing: Text(
        DateTime.fromMillisecondsSinceEpoch(
          message.createdAt!,
        ).formatted,
      ),
    );
  }
}
