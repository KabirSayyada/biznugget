import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ADVCustomTextFormFieldWidget extends StatelessWidget {
  const ADVCustomTextFormFieldWidget({
    Key? key,
    this.maxLines,
    this.maxLength,
    required this.controller,
  }) : super(key: key);

  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      keyboardType: TextInputType.multiline,
      maxLength: maxLength,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        hintText: 'Description',
      ),
    );
  }
}
