import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/radio/gf_radio.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/colors.dart';
import '../../../utils/colors.dart';
import '../../widgets/button.dart';
import '../helpers/category_list.dart';
import '../widgets/term_of_use.dart';

class ActivatePromo extends StatefulWidget {
  const ActivatePromo({super.key});

  @override
  State<ActivatePromo> createState() => _PublishAdState();
}

class _PublishAdState extends State<ActivatePromo> {
  int _currentIndex = 0;
  bool isSelected = false;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 25.h,
          ),
          Text("Activate Promotion for ad",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 12.h,
          ),
          Text("Get more visibility, Upgrade a promotional package",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500)),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, int index) {
              final activatePromo = activatePromoList[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                    _currentIndex = index;
                    setState(() {});
                  });
                },
                child: ActivatePromoCard(
                  groupValue: groupValue,
                  title: activatePromo.title,
                  description: activatePromo.description,
                  amount: activatePromo.amount,
                  onChanged: (int) {
                    (value) {
                      setState(() {
                        groupValue = value;
                        isSelected = !isSelected;
                        setState(() {});
                      });
                    };
                  },
                  isSelected: isSelected,
                  color: _currentIndex == index ? Colors.blue : Colors.white,
                  radioColor: _currentIndex == index
                      ? GFColors.SUCCESS
                      : GFColors.LIGHT,
                  textColor: _currentIndex == index
                      ? Colors.white
                      : AppColors.primaryColor1,
                ),
              );
            },
            itemCount: activatePromoList.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 20.h);
            },
          ),
          SizedBox(
            height: 39.h,
          ),
          Button(
            title: 'Make Payment',
            width: MediaQuery.of(context).size.width * 0.7.w,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  builder: (index) {
                    return Container(
                      height: 250.h,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(vertical: 15.sp),
                      decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        //color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 2),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset("assets/svg/cancel_button.svg"),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Choose your payment method",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 23.h,
                              ),
                              Container(
                                height: 40,
                                width: width,
                                color: AppColors.cardBorderColor1,
                                child: Center(
                                  child: Text("Pay with cash",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Container(
                                height: 40,
                                width: width,
                                color: AppColors.appWhite,
                                child: Center(
                                  child: Text("Pay with card",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2.h,
          ),
          const TermsOfUse(),
        ]),
      ),
    );
  }
}

class ActivatePromoCard extends StatelessWidget {
  const ActivatePromoCard(
      {super.key,
      required this.groupValue,
      required this.title,
      required this.description,
      required this.amount,
      required this.onChanged,
      required this.isSelected,
      this.color,
      required this.radioColor,
      required this.textColor});

  final int groupValue;
  final String title;
  final String description;
  final String amount;
  final Function(int)? onChanged;
  final bool isSelected;
  final Color? color;
  final Color radioColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 70.h,
        width: 343.w,
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
                width: 2,
                style: BorderStyle.solid,
                color: AppColors.searchBarBorderColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GFRadio(
              size: GFSize.SMALL,
              value: 2,
              groupValue: groupValue,
              onChanged: onChanged,
              inactiveIcon: null,
              activeBorderColor: GFColors.DARK,
              radioColor: radioColor,
              inactiveBgColor: AppColors.searchBarBorderColor,
            ),
            // GFRadio(
            //   size: GFSize.SMALL,
            //   value: 3,
            //   groupValue: groupValue,
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //     });
            //   },
            //   inactiveIcon: null,
            //   activeBorderColor: GFColors.SUCCESS,
            //   radioColor: GFColors.SUCCESS,
            //   inactiveBgColor: AppColors.searchBarBorderColor,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500)),
                Text(description,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500)),
              ],
            ),

            Text(amount,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
