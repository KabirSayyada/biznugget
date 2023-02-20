import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ConsumerProfile extends StatelessWidget {
  const ConsumerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border.all(),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFF830D3F),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF830D3F),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/images/image1.png'),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 180,
                  child: CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit_outlined,
                        color: Color(0xFF830D3F),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Jennifer Orya',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Consumer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8E8585),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/leftside.png',
                          scale: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
