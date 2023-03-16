import 'package:flutter/material.dart';

class CreatorJobDetail extends StatefulWidget {
  const CreatorJobDetail({super.key});

  @override
  State<CreatorJobDetail> createState() => _CreatorJobDetailState();
}

class _CreatorJobDetailState extends State<CreatorJobDetail> {
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
                ],
              ),
            ),
          ),
          Center(
            child: Card(
              child: Container(
                height: height * 0.4,
                width: width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/starbucks.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Text(
                            'StarBucks',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E8585),
                            ),
                          ),
                          Text(
                            'Manager',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF830D3F),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Salary',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E8585),
                            ),
                          ),
                          Text(
                            'NGN 120,000',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF830D3F),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jobtype',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E8585),
                            ),
                          ),
                          Text(
                            'On-Site',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF830D3F),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E8585),
                            ),
                          ),
                          Text(
                            'Lagos',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF830D3F),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No of applicants:',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E8585),
                            ),
                          ),
                          Text(
                            '45',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF830D3F),
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
        ],
      ),
    );
  }
}
