import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.onChanged,
    required this.dropdownValue,
    required this.dropDownMenuItems,
  });

  final void Function(String?)? onChanged;
  final String dropdownValue;
  final List<String> dropDownMenuItems;

  //String dropdownValue = 'Product condition';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 143, 141, 141).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            //hint: const Text("data"),
            hint: SizedBox(
              width: 150, //and here
              child: const Text(
                "Product condition",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ),

            icon: Icon(Icons.keyboard_arrow_down_sharp, size: 30.h),
            disabledHint: const Text("data"),
            //iconSize: 20,
            value: dropdownValue,
            focusColor: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            items:
                dropDownMenuItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            //style: Theme.of(context).textTheme.bodySmall,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
