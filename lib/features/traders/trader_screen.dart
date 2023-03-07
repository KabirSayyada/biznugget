import 'package:flutter/material.dart';

import '../../core/services/traders_service.dart';
import '../widgets/dashed_divider.dart';

class TraderScreen extends StatelessWidget {
  const TraderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trader = TradersService.getTrader(
      ModalRoute.of(context)?.settings.arguments as String,
    );
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
              color: theme.colorScheme.primary,
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
