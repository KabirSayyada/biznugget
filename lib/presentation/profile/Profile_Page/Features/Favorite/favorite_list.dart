import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../start_up/model/item_model.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({
    super.key,
  });

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  String cdate = DateFormat("dd/MM/yyyy").format(DateTime.now());
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 5, right: 5),
        controller: _scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 70,
                    child: Image.asset(items[index].image),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index].name,
                              style: TextStyle(
                                color: Color(0xFF830D3F),
                                fontSize: 14,
                              ),
                            ),
                            FavoriteButton(
                              valueChanged: () {},
                              isFavorite: true,
                              iconSize: 30,
                              iconColor: Color(0xFF830D3F),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$${items[index].price}',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        width: width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index].vendor,
                              style: TextStyle(
                                color: Color(0xFF8E8585),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              cdate,
                              style: TextStyle(
                                color: Color(0xFF830D3F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
