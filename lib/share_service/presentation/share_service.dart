import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import '../../core/utils/colors.dart';
import '../../core/widgets/custom_appbar.dart';
import '../../core/widgets/input_field.dart';
import '../../create_ad/widgets/dropdown_widget.dart';

class ShareService extends StatefulWidget {
  const ShareService({super.key, this.category});

  final String? category;

  @override
  State<ShareService> createState() => _ShareServiceState();
}

class _ShareServiceState extends State<ShareService> {
  TextEditingController categoryController = TextEditingController();
  bool isPasswordObscure = true;

  String errorText = "";
  String exchangeValue = 'Years of experience';

  List<String> exchangeList = [
    "Years of experience",
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    categoryController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: CustomAppBar(
            title: "Share a Service",
            suffixWidget: AppBarButton(
              buttonColor: [
                const Color(0xff01C3CC).withOpacity(0.3),
                const Color(0xff3F56F2).withOpacity(0.3),
              ],
            ),
            onTap: () {},
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

            InkWell(
              onTap: () async {
                // context.push('/selectServiceCategory');
                final result = context.go('/categories') as String?;
              },
              child: InputField(
                title: "Category",
                hintText: 'Select occupation',
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
                controller: categoryController,
                enabled: false,
              ),
            ),

            InkWell(
              onTap: () async {
                // context.push('/selectServiceCategory');
                context.push(AppRouter.shareServiceSpecialty);
              },
              child: InputField(
                title: "Specialty",
                hintText: 'Choose your expertise',
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
                controller: categoryController,
                enabled: false,
              ),
            ),

            InkWell(
              onTap: () async {
                // context.push('/selectServiceCategory');
                final result = context.go('/categories') as String?;
              },
              child: InputField(
                title: "Skills",
                hintText: 'Select the skills that suit you',
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
                controller: categoryController,
                enabled: false,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              "Add file",
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

            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: 115.h,
                  width: 300,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/upload_file.svg"),
                      SizedBox(height: 5.h),
                      Text(
                        "Drop files here",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   height: 7.h,
            // ),

            const InputField(
              title: "Description",
              hintText: 'Describe your work history and past projects.',
              maxLines: 3,
              minLines: 2,
            ),
            DropDownWidget(
              onChanged: (String? newValue) {
                setState(() {
                  exchangeValue = newValue!;
                });
              },
              dropdownValue: exchangeValue,
              dropDownMenuItems: exchangeList,
            ),
            SizedBox(height: width * 0.2.h),
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

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.buttonColor,
    this.title = "Next",
  });
  final List<Color> buttonColor;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          colors: buttonColor,
        ),
      ),
      child: Center(
        child: Text(
          title!,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
