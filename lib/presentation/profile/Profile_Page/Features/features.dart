import '../../Profile_Edit/consumer_edit.dart';
import '../../Profile_Page/Features/Chat/chat_screen.dart';
import '../../Profile_Page/Features/Favorite/favorite.dart';
import '../../Profile_Page/Features/History/history.dart';
import '../../Profile_Page/Features/Refer/refer.dart';
import '../../Profile_Page/Features/Talk_to_us/talk_to_us.dart';
import 'package:flutter/material.dart';

class FeatureItems extends StatefulWidget {
  const FeatureItems({
    super.key,
  });

  @override
  State<FeatureItems> createState() => _FeatureItemsState();
}

class _FeatureItemsState extends State<FeatureItems> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        bottom: 0,
      ),
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          height: height * 0.25,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HistoryPage()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/history.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'History',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Chat.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'Chat',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: width * 0.55),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: const Color(0xFF830D3F),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Favorite()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Heart.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'Favorite',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ReferUser()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Send.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'Refer a friend',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TalkToUs()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Call.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'Talk to us',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ConsumerProfileEdit()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Setting.png',
                        scale: 0.9,
                      ),
                      SizedBox(width: width * 0.05),
                      const Text(
                        'Settings',
                        style: TextStyle(
                          color: Color(0xFF830D3F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*

*/