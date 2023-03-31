import 'package:flutter/material.dart';

import '../../core/services/traders_service.dart';
import '../core/widgets/dashed_divider.dart';
import '../core/widgets/rating.dart';

class TraderScreen extends StatelessWidget {
  const TraderScreen({Key? key, required this.traderId}) : super(key: key);

  final String traderId;

  @override
  Widget build(BuildContext context) {
    final trader = TradersService.getTrader(traderId);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(trader.name),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Card(
                child: Column(
                  children: [
                    _TraderHeaderItem(
                      title: trader.address,
                      icon: Icons.location_on_outlined,
                    ),
                    DashedDivider(color: theme.colorScheme.primary),
                    _TraderHeaderItem(
                      title: trader.phone,
                      icon: Icons.local_phone_outlined,
                    ),
                    DashedDivider(color: theme.colorScheme.primary),
                    _TraderHeaderItem(
                      title: trader.email,
                      icon: Icons.mail_outlined,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    trader.description,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Services Offered",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    trader.description,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Customers Feedback",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Rating(
                    value: trader.rating.round(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TraderHeaderItem extends StatelessWidget {
  const _TraderHeaderItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: theme.colorScheme.primary,
        child: Icon(
          icon,
          color: theme.colorScheme.onPrimary,
        ),
      ),
      title: Text(title),
    );
  }
}
