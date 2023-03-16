import '../../Profile_Page/Business/request_detail.dart';
import '../../Profile_Page/Features/History/item_card_history.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../start_up/model/item_model.dart';

class RequestList extends StatefulWidget {
  const RequestList({
    super.key,
  });

  @override
  State<RequestList> createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RequestDetail()));
            },
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
                      Text(
                        items[index].name,
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 14,
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
