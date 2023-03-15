import 'package:flutter/material.dart';

class PayPalScreen extends StatelessWidget {
  const PayPalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(
          child: Text(
            'Add another Payment option Screen',
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: Text('Add another Payment screen')),
      ),
    );
  }
}
