import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.textController,
    required this.hintText,
    this.labelText,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    required this.isObscure,
  });

  final TextEditingController textController;
  final String hintText;
  final Widget? suffixIcon;
  final String? labelText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        controller: textController,
        obscureText: isObscure,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: hintText,
            hintStyle: const TextStyle(color: Color(0xFF2121211F)),
            fillColor: const Color(0xFFFFFFFF),
            suffixIcon: suffixIcon,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
      ),
    );
  }
}
