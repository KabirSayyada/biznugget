import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/colors.dart';
import '../../core/widgets/input_field.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: AppBar(
            shadowColor: AppColors.appBarElevationColor,
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
            backgroundColor: AppColors.appWhite,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/svg/progress_bar_1.svg',
                  width: MediaQuery.of(context).size.width.w * 0.8,
                ),
                Text(
                  '1/3',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const InputField(
              title: "Product name",
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
                  color: AppColors.hintGrey),
            ),
            SizedBox(
              height: 10.h,
            ),
            SvgPicture.asset("assets/svg/add_photo.svg"),

            // SizedBox(
            //   height: 7.h,
            // ),
            const InputField(
              title: "Add video",
              hintText: 'Link to YouTube, Vimeo, SWF file and MOV file',
            ),

            const InputField(
              title: "Description",
              hintText: 'Enter product description',
              maxLines: 7,
              minLines: 4,
            ),

            InkWell(
              onTap: () {
                context.push('/targetLocation');
              },
              child: const InputField(
                title: "Target Location",
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
