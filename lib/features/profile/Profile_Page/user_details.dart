import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  String name = '';
  String userAccount = '';
  UserDetails({super.key, required this.name, required this.userAccount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          userAccount,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8E8585),
          ),
        ),
      ],
    );
  }
}
