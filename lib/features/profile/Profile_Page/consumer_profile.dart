import 'package:flutter/material.dart';
import '../../../core/utils/curve_image.dart';
import 'item_card.dart';
import 'user_details.dart';

class ConsumerProfile extends StatelessWidget {
  const ConsumerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Add your first image
          Positioned.directional(
            textDirection: TextDirection.ltr,
            top: 8,
            end: 2,
            child: Image.asset(
              'assets/images/rightside.png',
              scale: 1.4,
              fit: BoxFit.contain,
            ),
          ),
          // Add your second image
          Positioned.directional(
            textDirection: TextDirection.ltr,
            top: 10,
            child: Opacity(
              opacity: 1,
              child: Image.asset(
                'assets/images/leftside2.png',
                scale: 1.3,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Add your content on top of the background images
          Positioned.directional(
            textDirection: TextDirection.ltr,
            top: 4,
            child: ClipPath(
              clipper: CurveImage(),
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                height: height * 0.36,
                width: width,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/arrowback.png',
                          scale: 1.5,
                        ),
                      ),
                    ),
                    ProfilePic(),
                    UserDetails(
                      name: 'Jennifer Orya',
                      userAccount: 'Consumer',
                    ),
                  ],
                ),
              ),
            ),
          ),
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
              height: 195,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Align(
          alignment: AlignmentDirectional.topCenter,
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
    );
  }
}
