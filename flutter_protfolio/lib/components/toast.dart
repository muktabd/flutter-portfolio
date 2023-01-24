import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomMsg {
  static void showToast(String toastMsg) {
    Fluttertoast.showToast(
        msg: toastMsg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color(0xFFF44336),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
