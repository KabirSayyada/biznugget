import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../general_widget/input_field.dart';
import '../../../utils/colors.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
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
                    context.push("/");
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
            actions: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.push('/createCategory');
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 34.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xff01C3CC).withOpacity(0.3),
                            const Color(0xff3F56F2).withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Product name",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            const InputField(
              hintText: 'Input product name',
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              "Add photo",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "We accept JPEG, PNG, and Gif.",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Pictures may not exceed 5MB",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.hintGrey),
            ),
            SizedBox(
              height: 10.h,
            ),
            SvgPicture.asset("assets/svg/add_photo.svg"),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Add video",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7.h,
            ),
            const InputField(
              hintText: 'Link to YouTube, Vimeo, SWF file and MOV file',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Description",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7.h,
            ),
            const InputField(
              hintText: 'Enter product description',
              maxLines: 7,
              minLines: 4,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Target Location",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7.h,
            ),
            InkWell(
              onTap: () {
                context.push('/targetLocation');
              },
              child: const InputField(
                hintText: 'choose location',
                suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                enabled: false,
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: const TextSpan(
                  text: "By clicking on Publish, you accept the ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text:
                            ", follow\nsafety tips, and verify this post does not contain prohibited items",
                        style: TextStyle(color: Colors.black))
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
