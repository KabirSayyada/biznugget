import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDescription extends StatelessWidget {
  final String jobType, jobImage;
  const JobDescription(
      {super.key, required this.jobType, required this.jobImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            jobImage,
            height: 60,
          ),
          Text(
            jobType,
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}


