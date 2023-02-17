import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static double screenHeight = 0;
  static double screenWidth = 0;

  /// This method is used to show a dialog with a message
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          msg,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            child: const Text('Ok'),
          )
        ],
      ),
    );
  }

  /// This method is used to show a toast message
  static void showToast(
      {required String msg, Color? color, ToastGravity? gravity}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}

/// images for testing
// final List<String> imageList = [
//   "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
// ];
