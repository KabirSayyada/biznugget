import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors_.dart';

class CategoryCard extends StatelessWidget {

   final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextAlign? textAlign;
  final TextInputType? keyBoardType;
  final String? Function(String? val)? validationCallback;
  final void Function()? onEdittingComplete;
  final String? formError;
  final String label;
  final String? hintText;
  final FocusNode? focusnode;
  final TextEditingController? controller;
  final String? message;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final Function()? clearForm;
  final Function()? onTap;
  final Function(String)? onChanged;
  final int? maxLength;
  final bool? enabled;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? fillColor;
  final Color? hintColor;
  final bool? showCursor;
  final bool readOnly;
  final Widget? labelRightItem;
  final TextStyle? labelStyle;
  final int? minLines;
  final int? maxLines;
  final String? initialValue;
  final Widget? suffixTitle;
  final String title;

  const CategoryCard({
    super.key,
    this.autovalidateMode,
    this.inputFormatters,
    this.textAlign,
    this.keyBoardType,
    this.onEdittingComplete,
    this.validationCallback,
    this.message,
    this.hintText,
    this.label = '',
    this.formError,
    this.focusnode,
    this.controller,
    this.clearForm,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.onChanged,
    this.onTap,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.enabled = true,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.fillColor,
    this.hintColor,
    this.showCursor,
    this.readOnly = false,
    this.labelRightItem,
    this.labelStyle,
    this.initialValue,
    this.suffixTitle, this.title = '',
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
           
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 143, 141, 141).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 2), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
                initialValue: initialValue,
                    showCursor: showCursor,
                    readOnly: readOnly,
                    maxLength: maxLength,
                    enabled: enabled,
                    onTap: onTap,
                    maxLines: maxLines,
                    minLines: minLines,
                    autovalidateMode: autovalidateMode,
                    focusNode: focusnode,
                    controller: controller,
                     onChanged: onChanged,
                     keyboardType: keyBoardType,
                     inputFormatters: inputFormatters,
                    onEditingComplete: onEdittingComplete,
                    obscureText: obscureText ?? false,
            decoration:  InputDecoration(
              
              border: InputBorder.none,
               suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400, color: hintColor ?? AppColor.hintGrey
                ),
                fillColor: Colors.white,
                hoverColor: Colors.blue,
                filled: true,
                contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white, width: 3.0))),
          ),
        ),
      ],
    );
  }
}


