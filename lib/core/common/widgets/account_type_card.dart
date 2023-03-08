import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountTypeCard extends StatelessWidget {
  final String accountType, accountImage;
  final Color cardColor;
  final VoidCallback onPressed;
  const AccountTypeCard(
      {super.key,
      required this.accountType,
      required this.cardColor,
      required this.accountImage, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      height: height * 0.30,
      child: GestureDetector(
        onTap: onPressed,
        child: Stack(
          children: [
            Card(
              margin: const EdgeInsets.all(15),
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(height: height * 0.025),
                  DottedBorder(
                    borderType: BorderType.Circle,
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: cardColor,
                          ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage(accountImage),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.012),
                  Text(
                    accountType,
                    style: GoogleFonts.lato(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    style: const ButtonStyle(),
                    onPressed: onPressed,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: cardColor),
                        ),
                        const SizedBox(width: 12),
                        Icon(Icons.arrow_forward,
                            size: 30, color: cardColor)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [cardColor, Colors.transparent],
                    stops: const [0.5, 0.5],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
