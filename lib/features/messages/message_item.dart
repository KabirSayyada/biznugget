import 'package:biznugget/config/app_routes.dart';
import 'package:biznugget/utils/formatters.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../data/models.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.message,
        arguments: message,
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: CachedNetworkImage(
          imageUrl: message.from,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(message.to),
      subtitle: Text(
        message.content,
        maxLines: 2,
      ),
      trailing: Text(message.time.formatted),
    );
  }
}
