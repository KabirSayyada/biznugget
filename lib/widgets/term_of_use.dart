import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: RichText(
        text: const TextSpan(
            text: "By clicking on Publish, you accept the ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                  text: "Terms of Use",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text:
                      ", follow\nsafety tips, and verify this post does not contain prohibited items",
                  style: TextStyle(color: Colors.black))
            ]),
      ),
    );
  }
}