import 'package:flutter/material.dart';

class InternetBanking extends StatelessWidget {
  const InternetBanking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Credit Screen',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: Text('Credit card screen')),
      ),
    );
  }
}
