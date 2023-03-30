import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors_.dart';
import '../../../widgets/term_of_use.dart';
import '../../widgets/input_field.dart';

class ShareServicePage2 extends StatefulWidget {
  const ShareServicePage2({super.key});

  @override
  State<ShareServicePage2> createState() => _ShareServicePage2State();
}

class _ShareServicePage2State extends State<ShareServicePage2> {
  bool isWarrantyChecked = false;
  bool isNegotiableChecked = false;

  String dropdown = '';
  String year = 'Year acquired';



  List<String> yearList = [
    "Year acquired",
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
  ];

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
            actions: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.push('/shareServicePage3');
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
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/progress_bar_2.svg',
                      width: MediaQuery.of(context).size.width.w * 0.76,
                    ),
                    Text(
                      '2/4',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),


                const InputField(
                  title: "Language",
                  // enabled: false,
                  hintText: 'Input Language',
                ),
                InkWell(
                  onTap: () {
                    context.push('/selectCategory');
                  },
                  child: const InputField(
                    title: "Education",
                    titleColor: AppColor.onboardingColor,
                    enabled: false,
                    hintText: 'Select Highest level of education',
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColor.black,
                    ),
                  ),
                ),

                const InputField(
                  title: "School",
                  // enabled: false,
                  hintText: 'Input School',
                ),
                const InputField(
                  title: "Major",
                  // enabled: false,
                  hintText: 'Input field of study',
                ),
                const InputField(
                  title: "Certification",
                   titleColor: AppColor.onboardingColor,
                  // enabled: false,
                  hintText: 'Input certification or award',
                ),
                const InputField(
                  title: "Year acquired",
                  // enabled: false,
                  hintText: 'Input year',
                ),

                // DropDownWidget(
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       year = newValue!;
                //     });
                //   },
                //   dropdownValue: year,
                //   dropDownMenuItems: yearList,
                // ),
                  const InputField(
                  title: "Personal website",
                  // enabled: false,
                  hintText: 'Link to your personal website',
                ),
    
                InputField(
                  title: "Price",
                  hintText: 'Input Amount',
                  suffixIcon: Container(
                    margin: const EdgeInsets.all(5),
                    height: 30,
                    width: 32,
                    decoration: const BoxDecoration(color: AppColor.grey002),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/naira_sign.svg',
                        height: 20,
                      ),
                    ),
                  ),
                ),

            

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
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
