import '../../Profile_Page/Business/request_list.dart';
import 'package:flutter/material.dart';

class BuyersRequest extends StatefulWidget {
  const BuyersRequest({super.key});

  @override
  State<BuyersRequest> createState() => _BuyersRequestState();
}

class _BuyersRequestState extends State<BuyersRequest> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Request',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF830D3F),
                    ),
                  ),
                ],
              ),
            ),
          ),
          RequestList(),
        ],
      ),
    );
  }
}
