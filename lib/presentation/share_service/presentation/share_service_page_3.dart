import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors_.dart';
import '../../../widgets/dropdown_widget.dart';
import '../../../widgets/term_of_use.dart';
import '../../widgets/input_field.dart';

class ShareServicePage3 extends StatefulWidget {
  const ShareServicePage3({super.key});

  @override
  State<ShareServicePage3> createState() => _ShareServicePage3State();
}

class _ShareServicePage3State extends State<ShareServicePage3> {
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
                      context.push('/shareServicePage4');
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
                      '3/4',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                 const InputField(
                  title: "Title",
                  // enabled: false,
                  hintText: 'e.g I design great mobile and web interfaces.',
                ),
                 const InputField(
                  title: "Target Location",
                  // enabled: false,
                  hintText: 'Enter the target location',
                ),
            const InputField(
                    title: "Company Name",
                    enabled: false,
                    hintText: 'Input company name',
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColor.black,
                    ),
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
                   Row(
                  children: [
                    GFCheckbox(
                      size: 25.sp,
                      activeBgColor: Colors.white,
                      activeIcon:
                          const Icon(Icons.check, color: Color(0xff830D3F)),
                      activeBorderColor: const Color(0xff830D3F),
                      onChanged: (value) {
                        setState(() {
                          isWarrantyChecked = value;
                        });
                      },
                      value: isWarrantyChecked,
                    ),
                    Text(
                      "Negotiable",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff830D3F)),
                    ),
                  ],
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
                   Row(
                  children: [
                    GFCheckbox(
                      size: 25.sp,
                      activeBgColor: Colors.white,
                      activeIcon:
                          const Icon(Icons.check, color: Color(0xff830D3F)),
                      activeBorderColor: const Color(0xff830D3F),
                      onChanged: (value) {
                        setState(() {
                          isWarrantyChecked = value;
                        });
                      },
                      value: isWarrantyChecked,
                    ),
                    Text(
                      "Express delivery",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff830D3F)),
                    ),
                  ],
                ),
              
                SizedBox(
                  height: 30.h,
                ),
             

                Text(
                  "Epected Delivery",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                DropDownWidget(
                  onChanged: (String? newValue) {
                    setState(() {
                      deliveryTimeValue = newValue!;
                    });
                  },
                  dropdownValue: deliveryTimeValue,
                  dropDownMenuItems: deliveryTimeList,
                ),

               
                // Text(
                //   'Selected Value: $productContidionValue',
                //   style: const TextStyle(
                //       fontSize: 30, fontWeight: FontWeight.bold),
                // ),

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
