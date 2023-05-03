import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final double width, height;
  final Color color;
  final Axis direction;

  const DashedDivider({
    Key? key,
    this.width = 10,
    this.height = 1,
    this.color = Colors.black,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final isHorizontal = direction == Axis.horizontal;
        final box = isHorizontal
            ? constraints.constrainWidth()
            : constraints.constrainHeight();
        final dashCount = (box / (2 * (isHorizontal ? width : height))).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: direction,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: width,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}