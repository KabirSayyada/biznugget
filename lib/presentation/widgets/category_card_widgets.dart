import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class InputContainer extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextAlign? textAlign;


  final FocusNode? focusnode;

  final String? message;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final Function()? clearForm;
  final Function()? onTap;

  final String? initialValue;
  final Widget? suffixTitle;
  final String title;
  final String? name;

  const InputContainer({
    super.key,
    this.autovalidateMode,
    this.inputFormatters,
    this.textAlign,
 
    this.message,


    this.clearForm,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
 
    this.initialValue,
    this.suffixTitle,
    this.title = '',
    this.name ,
     this.onTap, this.focusnode,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 143, 141, 141).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(1, 2), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name ?? '',
                     style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                   ),
                   const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            )
          
          ),
        ),
      ],
    );
  }
}
