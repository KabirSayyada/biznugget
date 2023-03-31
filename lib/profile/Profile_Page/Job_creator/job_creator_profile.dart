import 'package:biznugget/core/utils/curve_image.dart';
import 'package:flutter/material.dart';

import '../Business/item_upload.dart';
import '../Features/features.dart';
import '../Freelance/job_detail.dart';
import '../profile_pic.dart';
import '../user_details.dart';
import 'creator_job_detail.dart';
import 'job_grid.dart';
import 'see_all_jobs.dart';

class JobCreatorProfile extends StatefulWidget {
  const JobCreatorProfile({super.key});

  @override
  State<JobCreatorProfile> createState() => _JobCreatorProfileState();
}

class _JobCreatorProfileState extends State<JobCreatorProfile> {
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
                      imagePath: 'assets/images/jobcreator.png',
                    ),
                    UserDetails(
                      name: 'Career NG',
                      userAccount: 'Job Creator',
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
                        'Your jobs',
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
                                            builder: (context) =>
                                                CreatorJobDetail()));
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
              top: 395,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Add jobs',
                            style: TextStyle(
                              color: Color(0xFF830D3F),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        UploadItem(),
                        Container(
                          height: 65,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            border: Border.all(
                              color: Color(0xFF830D3F),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 30,
                              color: Color(0xFF830D3F),
                            ),
                          ),
                        ),
                      ],
                    ),
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
