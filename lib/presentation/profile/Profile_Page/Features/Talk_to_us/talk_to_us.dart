import 'package:flutter/material.dart';

class TalkToUs extends StatefulWidget {
  const TalkToUs({super.key});

  @override
  State<TalkToUs> createState() => _TalkToUsState();
}

class _TalkToUsState extends State<TalkToUs> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: height * 0.4,
                width: width * 1.0,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Call.png',
                              scale: 0.7,
                            ),
                            SizedBox(width: width * 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '07012233456',
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Our call center is open 24/7',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Message.png',
                              scale: 0.8,
                            ),
                            SizedBox(width: width * 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'help@biznugget',
                                  style: TextStyle(
                                    color: Color(0xFF830D3F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Send us an email for any enquiry',
                                  style: TextStyle(
                                    color: Color(0xFF8E8585),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
