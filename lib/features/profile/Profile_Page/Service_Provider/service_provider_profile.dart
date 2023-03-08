import 'package:biznugget/core/utils/curve_image.dart';
import 'package:biznugget/features/profile/Profile_Page/Business/item_upload.dart';
import 'package:biznugget/features/profile/Profile_Page/Features/features.dart';
import 'package:biznugget/features/profile/Profile_Page/Freelance/job_detail.dart';
import 'package:biznugget/features/profile/Profile_Page/Freelance/past_jobs.dart';
import 'package:biznugget/features/profile/Profile_Page/Job_creator/job_grid.dart';
import 'package:biznugget/features/profile/Profile_Page/Job_creator/see_all_jobs.dart';
import 'package:biznugget/features/profile/Profile_Page/profile_pic.dart';
import 'package:biznugget/features/profile/Profile_Page/user_details.dart';
import 'package:flutter/material.dart';

class ServiceProviderProfile extends StatefulWidget {
  const ServiceProviderProfile({super.key});

  @override
  State<ServiceProviderProfile> createState() => _ServiceProviderProfileState();
}

class _ServiceProviderProfileState extends State<ServiceProviderProfile> {
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
                      imagePath: 'assets/images/serviceprovider.png',
                    ),
                    UserDetails(
                      name: 'Amaka Udu',
                      userAccount: 'Service Provider',
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
                        'Requests',
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Previous services',
                            style: TextStyle(
                              color: Color(0xFF830D3F),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              color: Color(0xff8e8585),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
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
