import 'package:biznugget/core/utils/colors.dart';
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
        toastLength: Toast.LENGTH_LONG,
        msg: msg,
        backgroundColor: color ?? AppColors.primaryColor1,
        gravity: gravity ?? ToastGravity.BOTTOM);
  }

}
