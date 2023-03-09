import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

const EdgeInsets bodyPadding = EdgeInsets.symmetric(horizontal: 16);

InputDecoration inputDecoration(String hintText) => InputDecoration(
    hintText: hintText,
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8)),
    fillColor: AppColor.hintGrey.withOpacity(0.2),
    filled: true);
