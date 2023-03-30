import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors_.dart';
import '../../../widgets/widgets.dart';
import '../../widgets/button.dart';
import '../../widgets/input_field.dart';

class ShareServicePage4 extends StatefulWidget {
  const ShareServicePage4 ({super.key});

  @override
  State<ShareServicePage4 > createState() => _ShareServicePage4State();
}

class _ShareServicePage4State extends State<ShareServicePage4 > {
  bool isWarrantyChecked = false;
  bool isNegotiableChecked = false;

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
                      context.pop();
                    },

                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        // height: 30.h,
                        // width: 30.w,
                        child: SvgPicture.asset(
                          "assets/svg/cancel.svg",
                          fit: BoxFit.fill,
                        )),
             
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
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/progress_bar_3.svg',
                      width: MediaQuery.of(context).size.width.w * 0.76,
                    ),
                    Text(
                      '4/4',
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
                  title: "Email",
                  hintText: 'Enter email',
                  keyBoardType: TextInputType.emailAddress,

                  
                ),
               
                  InputField(
                  title: "Location",
                  //enabled: false,
                  hintText: 'Enter your address',
                  keyBoardType: TextInputType.name,
                  prefixIcon: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    width: 32,
                    //decoration: const BoxDecoration(color: AppColor.grey002),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/location_icon.svg',
                        height: 30,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 90.h,
                  ),
                ),
                Button(
                  title: 'Preview',
                  width: MediaQuery.of(context).size.width * 0.7.w,
                  onTap: () {
                    context.push('/publishShareService');
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
