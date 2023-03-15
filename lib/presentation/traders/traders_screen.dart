import 'package:flutter/material.dart';

import '../../core/services/traders_service.dart';
import 'trader_item.dart';

class TradersScreen extends StatelessWidget {
  const TradersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Traders"),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: TradersService.traders.length,
          itemBuilder: (_, i) => TraderItem(trader: TradersService.traders[i]),
        ),
      ),
    );
  }
}
