import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String imagePath;

  const ProfilePic({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Align(
          alignment: AlignmentDirectional.topCenter,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.transparent,
            child: Image.asset(imagePath),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 170,
          child: GestureDetector(
            child: Image.asset(
              'assets/images/editpic.png',
              scale: 1.5,
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
