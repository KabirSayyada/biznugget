import 'package:biznugget/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors_.dart';
import '../../widgets/custom_appbar.dart';
import 'share_service.dart';

class ShareServiceSpecialty extends StatefulWidget {
  const ShareServiceSpecialty({super.key});

  @override
  State<ShareServiceSpecialty> createState() => _ShareServiceSpecialtyState();
}

class _ShareServiceSpecialtyState extends State<ShareServiceSpecialty> {
  String searchString = "";
  final List<String> _selectedSkills = [];

  final List<String> _allSkills = [
    'Programming',
    'Design',
    'Communication',
    'Leadership',
    'Project Management',
    'Marketing',
    'Data Analysis',
    'Problem Solving',
    'Teamwork',
    'Time Management',
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: AppColor.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: CustomAppBar(
            title: "Specialty",
            suffixWidget: AppBarButton(
              title: "Save",
              buttonColor: [
                const Color(0xff01C3CC).withOpacity(0.3),
                const Color(0xff3F56F2).withOpacity(0.3),
              ],
            ),
            onTap: () {
              print("selected skills $_selectedSkills");
              Navigator.pop(context, _selectedSkills);
              // context.goNamed('shareService',
              // extra: _selectedSkills
              // );
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame338S1s (102:161)
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 11 * fem, 21 * fem, 11 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x33404040)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // chooseyourexpertiseJ45 (102:162)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 150 * fem, 0 * fem),
                      child: Text(
                        'Choose your expertise',
                        style: SafeGoogleFont(
                          'SF UI Text',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375 * ffem / fem,
                          letterSpacing: -0.035 * fem,
                          color: const Color(0xff404040),
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 13 * fem,
              ),
              TextField(
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                enableSuggestions: true,
                onChanged: (value) {
                  setState(() {
                    searchString = value.toLowerCase();
                  });
                },
                decoration: const InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    hoverColor: Colors.red,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 21, 201, 225))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Colors.white, width: 3.0))),
              ),
              SizedBox(
                height: 13 * fem,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _allSkills.length,
                  itemBuilder: (context, index) {
                    final skill = _allSkills[index];
                    return 

                    CheckboxListTile(
                      title: Text(skill),
                      value: _selectedSkills.contains(skill),
                      onChanged: (isSelected) {
                        setState(() {
                          if (isSelected!) {
                            print("skill $_selectedSkills");
                            if (_selectedSkills.length < 5) {
                              _selectedSkills.add(skill);
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'You can only select up to 5 skills'),
                              ));
                            }
                          } else {
                            _selectedSkills.remove(skill);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
