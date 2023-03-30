import 'dart:io';

import 'package:biznugget/presentation/share_service/data/models/specialty_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/colors_.dart';
import '../../../widgets/dropdown_widget.dart';
import '../../widgets/category_card_widgets.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/input_field.dart';

class ShareService extends StatefulWidget {
  const ShareService(
      {super.key, this.category, this.specialtype, this.selectedSkills});

  final String? category;
  final SpecialtyType? specialtype;
  final List<String>? selectedSkills;

  @override
  State<ShareService> createState() => _ShareServiceState();
}

class _ShareServiceState extends State<ShareService> {
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

  final List<Widget> _selectedFiles = [];
  int _totalUploadedFiles = 0;

  void _selectFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'mp4'],
    );

    if (result != null) {
      List<PlatformFile> files = result.files;
//       final f = File(files as String);
//       int sizeInBytes = f.lengthSync();
//       double sizeInMb = sizeInBytes / (1024 * 1024);
//       if (sizeInMb > 5){
//     // This file is Longer the
//     print("Image size is larger than 5MB");
// }
      for (PlatformFile file in files) {
        _totalUploadedFiles++;
        setState(() {
          _selectedFiles.add(
            Row(
              children: [
                Image.file(
                  File(file.path!),
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    file.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _selectedFiles.remove(file);
                      _totalUploadedFiles--;
                    });
                  },
                ),
              ],
            ),
          );
        });
        _uploadFile(file);
      }
    }
  }

  void _uploadFile(PlatformFile file) async {
    // Perform file upload using http package
    // Update the loading animation using a FutureBuilder
  }

  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  void initState() {
    //print("incoming skills $selectedSkills");
 
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appWhite,
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
            onTap: () {
              context.pushNamed('shareServicePage2',
              );
            },
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
                  width: MediaQuery.of(context).size.width.w * 0.76,
                ),
                Text(
                  '1/3',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            
           // final category = context.state.queryParams['cgy'] as String?;
            InkWell(
              onTap: () async {
                context.push('/selectServiceCategory');
                //final result =  context.go('/categories') as String?;
              },
              child: InputContainer(
                title: "Category",
                
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
               name: widget.category ?? '',
              ),
            ),

            // InkWell(
            //   onTap: () async {
            //     // context.push('/selectServiceCategory');
            //     context.push('/shareServiceSpecialty');
            //   },
            //   child: InputField(
            //     title: "Specialty",
            //     hintText: 'Choose your expertise',
            //     suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
            //     controller: widget.selectedSkills.join(', ').toString(),
            //     enabled: false,
            //   ),
            // ),
            InputContainer(
              onTap: () {
                context.pushNamed('specialtyType');
              },
              title: "Specialty",
              name: widget.specialtype.toString() ?? ''),
                  InputContainer(
              onTap: () {
                context.pushNamed('specialtyType');
              },
              title: "Skills",
         
              name: widget.specialtype.toString() ?? 'Select the skills that suit you'),
            
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
                  color: AppColor.hintGrey),
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
                  child: InkWell(
                    onTap: _selectFiles,
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
            ),
            const SizedBox(height: 10),
            Text('Uploading $_totalUploadedFiles files'),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _selectedFiles.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    _selectedFiles[index],
                    const SizedBox(height: 10),

                    //progress bar animation
                    //         GFProgressBar(
                    //   percentage: 0.2,
                    //   lineHeight: 10,
                    //   alignment: MainAxisAlignment.spaceBetween,
                    //   backgroundColor: Colors.black26,
                    //   progressBarColor: GFColors.INFO,
                    // ),
                    const SizedBox(height: 10),
                  ],
                );
              },
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
