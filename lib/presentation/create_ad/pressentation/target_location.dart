import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/input_field.dart';
import '../../../utils/colors.dart';

class TargetLocation extends StatefulWidget {
  const TargetLocation({super.key});

  @override
  State<TargetLocation> createState() => _TargetLocationState();
}

class _TargetLocationState extends State<TargetLocation> {
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
              "Target Location",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColor.appWhite,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Choose the region you want your ad to reach.",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            const InputField(
              hintText: 'Ejigbo, Lagos',
              hintColor: AppColor.black,
              enabled: false,
            ),
            SizedBox(
              height: 6.h,
            ),

            // Container(
            //   height: 41,
            //   margin: const EdgeInsets.symmetric(vertical: 10),
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 1,
            //         blurRadius: 2,
            //         offset: const Offset(1, 3.3), // changes position of shadow
            //       ),
            //     ],
            //     color: AppColor.appWhite
            //   ),
            //   child: Row(
            //     children: const [
            //       Text("Ejigbo, Lagos"),
            //     ],
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
