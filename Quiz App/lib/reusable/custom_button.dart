import 'package:flutter/material.dart';

Widget appButton({
  required Function() onPressed ,
  required String btnTxt,
  Color ? btnColor,
  Color ? txtColor,
}){
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      onPressed: onPressed,
      textColor: txtColor,
      color: btnColor,
    child: Text(
      btnTxt,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Ubuntu-Medium',
      ),
    ),
  );
}