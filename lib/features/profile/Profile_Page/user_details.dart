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
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Great Sailor',
          ),
        ),
        Text(
          userAccount,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Great Sailor',
            color: Color(0xFF8E8585),
          ),
        ),
      ],
    );
  }
}
