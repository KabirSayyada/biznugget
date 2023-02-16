import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../general_widget/button.dart';
import '../../../utils/colors.dart';
import '../data/constants.dart';
import '../widgets/term_of_use.dart';

class PublishAd extends StatefulWidget {
  const PublishAd({super.key});

  @override
  State<PublishAd> createState() => _PublishAdState();
}

class _PublishAdState extends State<PublishAd> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: AppBar(
            shadowColor: AppColor.appBarElevationColor,
            leading: Row(
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            elevation: 4.0.h,
            centerTitle: true,
            title: Text(
              "Create an ad",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColor.appWhite,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                autoPlay: true,
                                // enlargeCenterPage: true,
                                //scrollDirection: Axis.vertical,
                                onPageChanged: (index, reason) {
                                  setState(
                                    () {
                                      _currentIndex = index;
                                    },
                                  );
                                },
                              ),
                              items: imagesList
                                  .map(
                                    (item) => Container(
                                      height: 120,
                                      
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(item),
                                              fit: BoxFit.contain),
                                          borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(10))),
                                    ),
                                  )
                                  .toList(),
                            ),
                          
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "Create an ad",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                              "#8000",
                              style: TextStyle(
                                  color: AppColor.appRed,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "(non-Negotiable)",
                              style: TextStyle(
                                  color: AppColor.appRed,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: imagesList.map((urlOfItem) {
                          int index = imagesList.indexOf(urlOfItem);
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 17.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? const Color.fromRGBO(0, 0, 0, 0.8)
                                  : const Color.fromRGBO(0, 0, 0, 0.3),
                            ),
                          );
                        }).toList(),
                      ),
                   
                    ],
                  ),
                ),
                Button(
                    title: 'Publish',
                    width: MediaQuery.of(context).size.width * 0.7.w),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2.h,
                ),
                const TermsOfUse(),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
