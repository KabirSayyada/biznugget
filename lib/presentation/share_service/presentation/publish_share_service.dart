import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors_.dart';
import '../../../widgets/widgets.dart';
import '../../create_ad/data/constants.dart';
import '../../widgets/button.dart';

class PublishShareService extends StatefulWidget {
  const PublishShareService({super.key});

  @override
  State<PublishShareService> createState() => _PublishShareServiceState();
}

class _PublishShareServiceState extends State<PublishShareService> {
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
              "Share a service",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColor.appWhite,
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Container(
                  //margin: const EdgeInsets.only(
                    //  left: 15, top: 20, bottom: 10, right: 15),
                  //padding: const EdgeInsets.only(
                  //  left: 10, top: 10, bottom: 20, right: 12),
                  decoration: const BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // width: 280.w,
                  //height: 185.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 20),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 0.85,
                              enlargeCenterPage: false,
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
                                    // height: 124.h,
                                    //width: 113.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(item),
                                            fit: BoxFit.cover),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Roselyn Inyang',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SvgPicture.asset("assets/svg/user_details_message.svg"),
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'I create unique and simple user\ninterfaces',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SvgPicture.asset("assets/svg/love_image_pub.svg"),
                  ],
                ),
               
                const Divider(
                  thickness: 2,
                  color: AppColor.hintGrey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: 114.w,
                      height: 27.h,
                      decoration: const BoxDecoration(
                        color:  AppColor.appBarElevationColor,
                      ),
                      child: Row(children: const [
                        Text(
                          'User Data',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.arrow_forward_ios_sharp, size: 20,
                        color: Colors.white)
                      ],),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                Container(
                   margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 14, top: 12, bottom: 12),
                  decoration: const BoxDecoration(
                    color: AppColor.grey003,
                  ),
                  child: Text(
                    """A sizeable tote hand bag for your outdoor event. It
            has a sizeable purse and a long roe that can be
            hung on shoulder. It is heat resistant and luxurious.""",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 14, top: 12, bottom: 12),
                  decoration: const BoxDecoration(
                    color: AppColor.grey003,
                  ),
                  child: Column(
                    children: const [
                      PublishTextWidget(
                        title: 'Brand',
                        description: 'Channel',
                      ),
                      PublishTextWidget(
                        title: 'Color',
                        description: 'Orange',
                      ),
                      PublishTextWidget(
                        title: 'Size',
                        description: 'Medium',
                      ),
                      PublishTextWidget(
                        title: 'Product condition',
                        description: 'New',
                      ),
                      PublishTextWidget(
                        title: 'Gender',
                        description: 'Female',
                      ),
                      PublishTextWidget(
                        title: 'Expected delivery',
                        description: 'Instant',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                Button(
                  title: 'Publish',
                  width: MediaQuery.of(context).size.width * 0.7.w,
                  onTap: () {
                    context.push('/activatePromo');
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2.h,
                ),
                const TermsOfUse(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class PublishTextWidget extends StatelessWidget {
  const PublishTextWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text(
            "$title:",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "$description:",
            style: TextStyle(
                color: AppColor.grey002,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
