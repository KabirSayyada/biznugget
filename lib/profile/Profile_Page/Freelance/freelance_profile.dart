import 'package:biznugget/core/utils/curve_image.dart';
import 'package:flutter/material.dart';

import '../Features/features.dart';
import '../Job_creator/job_grid.dart';
import '../Job_creator/see_all_jobs.dart';
import '../profile_pic.dart';
import '../user_details.dart';
import 'job_detail.dart';
import 'past_jobs.dart';

class FreelanceProfile extends StatefulWidget {
  const FreelanceProfile({super.key});

  @override
  State<FreelanceProfile> createState() => _FreelanceProfileState();
}

class _FreelanceProfileState extends State<FreelanceProfile> {
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
                      imagePath: 'assets/images/freelance.png',
                    ),
                    UserDetails(
                      name: 'Kabir Gabar',
                      userAccount: 'Freelance',
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
                        'Jobs for you',
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
                            builder: (context) => SeeAllJobs(
                                  press: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => JobDetail()));
                                  },
                                )));
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
              child: JobGrid(
                press: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => JobDetail()));
                },
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 390,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Past jobs',
                            style: TextStyle(
                              color: Color(0xFF830D3F),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
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
                    PastJobs(),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: FeatureItems(),
            ),
          ],
        ),
      ),
    );
  }
}
