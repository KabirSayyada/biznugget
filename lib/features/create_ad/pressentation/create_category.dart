import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:go_router/go_router.dart';

import '../../../general_widget/input_field.dart';
import '../../../utils/colors.dart';
import '../widgets/dropdown_widget.dart';
import '../widgets/term_of_use.dart';

class CreateCategory extends StatefulWidget {
  const CreateCategory({super.key});

  @override
  State<CreateCategory> createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<CreateCategory> {
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
                      context.push('/createUserDetails');
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
                      width: MediaQuery.of(context).size.width.w * 0.8,
                    ),
                    Text(
                      '2/3',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              
                InkWell(
                  onTap: () {
                    context.push('/selectCategory');
                  },
                  child: const InputField(
                    title: "Category",
                    enabled: false,
                    hintText: 'Select Category',
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColor.black,
                    ),
                  ),
                ),

               
                
                  const InputField(
                    title:  "Brand",
                   // enabled: false,
                    hintText: 'Input Brand',
                
                  ),
              


                SizedBox(
                  height: 6.h,
                ),
                
               
                Text(
                  "Exchange possible",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                 SizedBox(
                  height: 6.h,
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
                  Row(
                  children: [
                    GFCheckbox(
                      size: 25.sp,
                      activeBgColor:  Colors.white,
                      activeIcon: const Icon(Icons.check, color: Color(0xff830D3F)),
                      activeBorderColor: const Color(0xff830D3F),
                      onChanged: (value) {
                        setState(() {
                          isWarrantyChecked = value;
                        });
                      },
                      value: isWarrantyChecked,
                    ),
                     Text("Warranty",style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xff830D3F)),),
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
                      activeBgColor:  Colors.white,
                      activeIcon: const Icon(Icons.check, color: Color(0xff830D3F)),
                      activeBorderColor: const Color(0xff830D3F),
                      onChanged: (value) {
                        setState(() {
                          isNegotiableChecked = value;
                        });
                      },
                      value: isNegotiableChecked,
                    ),
                     Text("Negotiable",style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xff830D3F)),),
                  ],
                ),

                SizedBox(
                  height: 7.h,
                ),
               
                //work on the dropdown

           
                DropDownWidget(
                  onChanged: (String? newValue) {
                    setState(() {
                      productContidionValue = newValue!;
                    });
                  },
                  dropdownValue: productContidionValue,
                  dropDownMenuItems: productConditionList,
                ),
                SizedBox(
                  height: 15.sp,
                ),

                Text(
                  "Delivery Time",
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

                const SizedBox(
                  height: 20,
                ),
                // Text(
                //   'Selected Value: $productContidionValue',
                //   style: const TextStyle(
                //       fontSize: 30, fontWeight: FontWeight.bold),
                // ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
             const TermsOfUse(),]),
            ],
          ),
        ),
      ),
    );
  }
}
