import 'package:flutter/material.dart';

class UploadItem extends StatefulWidget {
  const UploadItem({
    super.key,
  });

  @override
  State<UploadItem> createState() => _UploadItemState();
}

class _UploadItemState extends State<UploadItem> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF830D3F),
        ),
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: height,
            width: width,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/upload1.png',
              fit: BoxFit.fitWidth,
            ),
          );
        },
      ),
    );
  }
}
