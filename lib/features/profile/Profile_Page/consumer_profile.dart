import 'package:flutter/material.dart';

import '../../../core/utils/curve_image.dart';
import 'profile_pic.dart';
import 'user_details.dart';

class ConsumerProfile extends StatelessWidget {
  const ConsumerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 8,
              end: 2,
              child: Image.asset(
                'assets/images/rightside.png',
                scale: 1.5,
                fit: BoxFit.contain,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 10,
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  'assets/images/leftside2.png',
                  scale: 1.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ClipPath(
              clipper: CurveImage(),
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/arrowback.png',
                          scale: 1.5,
                        ),
                        onTap: () {},
                      ),
                    ),
                    ProfilePic(
                      imagePath: 'assets/images/image1.png',
                    ),
                    UserDetails(
                      name: 'Jennifer Orya',
                      userAccount: 'Consumer',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              width: width,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

/* Row of see all and New
Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 270,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Color(0xff830d3f),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff8e8585),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
*/

/* Item card and container
Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 310,
              child: ItemCard(width: width, height: height),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                height: 180,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            )
*/
