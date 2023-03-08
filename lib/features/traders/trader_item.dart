import 'package:biznugget/core/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_routes.dart';

class TraderItem extends StatelessWidget {
  const TraderItem({
    super.key,
    required this.trader,
  });

  final Trader trader;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          AppRoutes.trader,
          arguments: trader.id,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(50), // Image radius
                  child: CachedNetworkImage(
                    imageUrl: trader.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Text(trader.name)
            ],
          ),
        ),
      ),
    );
  }
}
