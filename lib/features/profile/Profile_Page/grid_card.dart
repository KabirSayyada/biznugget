import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../../start_up/model/item_model.dart';

class GridItemCard extends StatefulWidget {
  const GridItemCard({
    super.key,
  });

  @override
  State<GridItemCard> createState() => _GridItemCardState();
}

class _GridItemCardState extends State<GridItemCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: width,
      height: height * 0.15,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.25,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(items[index].image)),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: FavoriteButton(
                      valueChanged: () {},
                      isFavorite: true,
                      iconSize: 30,
                      iconColor: Color(0xFF830D3F),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9).withOpacity(0.3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index].name,
                            style: TextStyle(
                                color: Color(0xFF830D3F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '\$${items[index].price}',
                            style: TextStyle(
                              color: Color(0xFF830D3F),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
