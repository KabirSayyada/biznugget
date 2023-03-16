
import 'package:flutter/material.dart';

import '../../../start_up/model/freelance_history_model.dart';

class JobHistory extends StatefulWidget {
  const JobHistory({super.key});

  @override
  State<JobHistory> createState() => _JobHistoryState();
}

class _JobHistoryState extends State<JobHistory> {
  bool? isDone = true;
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
                  SizedBox(width: 100),
                  Text(
                    'History',
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: height * 0.08,
                        width: width,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFF830D3F)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              history[index].employee + ' |',
                              style: TextStyle(
                                color: Color(0xFF830D3F),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              history[index].jobRole + ' |',
                              style: TextStyle(
                                color: Color(0xFF830D3F),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'NGN ' + history[index].pay,
                              style: TextStyle(
                                color: Color(0xFF830D3F),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            if (isDone != false) ...[
                              Image.asset(
                                'assets/images/done.png',
                              ),
                            ] else ...[
                              Image.asset(
                                'assets/images/notdone.png',
                              ),
                            ]
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
