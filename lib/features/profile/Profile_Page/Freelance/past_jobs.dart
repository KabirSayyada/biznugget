import 'package:flutter/material.dart';

class PastJobs extends StatelessWidget {
  const PastJobs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.11,
      width: width,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: height * 0.05,
                width: width,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Tambo tech |',
                      style: TextStyle(
                        color: Color(0xFF830D3F),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Frontend developer |',
                      style: TextStyle(
                        color: Color(0xFF830D3F),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' NGN 120,000',
                      style: TextStyle(
                        color: Color(0xFF830D3F),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Image.asset(
                      'assets/images/done.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.005),
            ],
          );
        },
      ),
    );
  }
}
