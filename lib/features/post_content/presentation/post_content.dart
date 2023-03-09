import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors.dart';
import '../data/models/post_content_model.dart';

class PostContent extends StatefulWidget {
  const PostContent({super.key});

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  navigate(int currentIndex) {
    switch (currentIndex) {
      case 0:
        context.push("/createAd");
        break;
      case 1:
        context.push("/shareService");
        break;
      case 2:
        context.push("/postJob");
        break;
      case 3:
        context.push("/createAd");
        break;
      case 4:
        context.push("/createAd");
        break;
      case 5:
        context.push("/createAd");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight.h),
        child: AppBar(
          shadowColor: AppColor.appBarElevationColor,
          leading: Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  // height: 30.h,
                  // width: 30.w,
                  child: SvgPicture.asset(
                    "assets/svg/cancel.svg",
                    fit: BoxFit.fill,
                  )),
            ],
          ),
          elevation: 4.0.h,
          centerTitle: true,
          title: Text(
            "Post Content",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: AppColor.appWhite,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const SizedBox(height: 10,),
              Text(
                "What do you want to do?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: contents.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.h,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (BuildContext context, int index) {
                    final content = contents[index];
                    return InkWell(
                      onTap: () {
                        navigate(index);
                      },
                      child: Container(
                        height: 135.h,
                        width: 157.w,
                        decoration: BoxDecoration(
                          color: AppColor.grey001,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: SvgPicture.asset(content.image)),
                            Divider(
                              thickness: 2.5.h,
                            ),
                            Text(
                              content.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
