import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../general_widget/button.dart';
import '../../../general_widget/input_field.dart';
import '../../../utils/colors.dart';
import '../widgets/term_of_use.dart';

class CreateUserDetails extends StatefulWidget {
  const CreateUserDetails({super.key});

  @override
  State<CreateUserDetails> createState() => _CreateUserDetailsState();
}

class _CreateUserDetailsState extends State<CreateUserDetails> {
  bool isWarrantyChecked = false;
  bool isNegotiableChecked = false;

  String dropdown = '';
  String productContidionValue = 'Product condition';
  String exchangeValue = 'No';
  String deliveryTimeValue = 'Select time';

  List<String> productConditionList = [
    "Product condition",
    'New',
    'Foreign used',
    'Nigerian used'
  ];
  List<String> deliveryTimeList = [
    "Select time",
    'Instant',
    '2-3 days',
    '4-6 days'
  ];
  List<String> exchangeList = [
    "No",
    'Yes',
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
                      context.pop();
                    },

                 child:   Container(
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        // height: 30.h,
                        // width: 30.w,
                        child: SvgPicture.asset(
                          "assets/svg/cancel.svg",
                          fit: BoxFit.fill,
                        )),
                    // child: Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 10),
                    //   height: 34.h,
                    //   width: 56.w,
                    //   decoration: BoxDecoration(
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.circular(5),
                    //     ),
                    //     gradient: LinearGradient(
                    //       begin: Alignment.centerLeft,
                    //       end: Alignment.centerRight,
                    //       colors: [
                    //         const Color(0xff01C3CC).withOpacity(0.3),
                    //         const Color(0xff3F56F2).withOpacity(0.3),
                    //       ],
                    //     ),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       "Next",
                    //       style: TextStyle(
                    //           fontSize: 12.sp, fontWeight: FontWeight.w600),
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/progress_bar_3.svg',
                      width: MediaQuery.of(context).size.width.w * 0.8,
                    ),
                    Text(
                      '3/3',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              
                const InputField(
                  title: "Name",
                  //enabled: false,
                  hintText: 'Enter name',
               
                ),
             
                InputField(
                  // enabled: false,
                  title: "Phone Number",
                  hintText: 'Input phone',
                  keyBoardType: TextInputType.number,
                  
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], //
                ),
                
         
             const InputField(
                  // enabled: false,
                  title: "Email" ,
                  hintText: 'Enter email',
                  keyBoardType: TextInputType.emailAddress,
                  
               //
                ),
               
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 90.h,
                  ),
                ),

                Button(title: 'Preview',
                width: MediaQuery.of(context).size.width * 0.7.w,
                onTap: () {
                  context.push('/publishAd');
                },
                ),

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
