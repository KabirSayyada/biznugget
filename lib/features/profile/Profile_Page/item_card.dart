import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: width,
      height: height * 0.22,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
