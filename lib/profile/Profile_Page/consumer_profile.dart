import 'package:biznugget/core/helpers/Providers/providers.dart';
import 'package:biznugget/profile/Profile_Page/Business/grid_item.dart';
import 'package:biznugget/profile/Profile_Page/Features/History/history.dart';
import 'package:biznugget/profile/Profile_Page/Features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/curve_image.dart';
import 'profile_pic.dart';
import 'user_details.dart';

class ConsumerProfile extends ConsumerWidget {
  const ConsumerProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // first variable is to get the data of Authenticated User
    final data = ref.watch(fireBaseAuthProvider);

    //  Second variable to access the Logout Function
    final _auth = ref.watch(authenticationProvider);

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
                      name: data.currentUser!.email ?? 'Jeniffer Orya',
                      userAccount: 'Consumer',
                    ),
                  ],
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 260,
              child: Container(
                width: width,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Recent',
                        style: TextStyle(
                          color: Color(0xff830d3f),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HistoryPage()));
                      },
                      child: const Text(
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
              top: 290,
              child: GridItem(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FeatureItems(),
            ),
          ],
        ),
      ),
    );
  }
}
