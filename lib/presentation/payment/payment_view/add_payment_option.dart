import 'package:flutter/material.dart';

class AddAnotherPaymentOption extends StatelessWidget {
  const AddAnotherPaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(
          child: Text(
            'Add another Payment ption Screen',
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
