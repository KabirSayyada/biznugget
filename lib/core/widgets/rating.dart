import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int value;

  const Rating({
    Key? key,
    this.value = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return index < value
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border);
      }),
    );
  }
}
