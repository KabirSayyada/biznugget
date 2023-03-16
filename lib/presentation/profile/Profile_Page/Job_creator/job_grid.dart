import 'package:flutter/material.dart';

class JobGrid extends StatefulWidget {
  final Function press;
  const JobGrid({super.key, required this.press});

  @override
  State<JobGrid> createState() => _JobGridState();
}

class _JobGridState extends State<JobGrid> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: width,
      height: height * 0.16,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.065,
                      width: width * 0.135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage('assets/images/starbucks.png'),
                          )),
                    ),
                    Text('StarBucks')
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
              ],
            ),
          );
        },
      ),
    );
  }
}
