import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemCardHistory extends StatefulWidget {
  const ItemCardHistory({super.key});

  @override
  State<ItemCardHistory> createState() => _ItemCardHistoryState();
}

class _ItemCardHistoryState extends State<ItemCardHistory> {
  String cdate = DateFormat("dd/MM/yyyy").format(DateTime.now());
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/arrowback.png',
                      scale: 1.5,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Card(
                    child: Container(
                      height: height * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/images/gown.png',
                                scale: 0.5,
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'vendor',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Olams wears',
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Goods',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Gown',
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '\$50',
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  cdate,
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
