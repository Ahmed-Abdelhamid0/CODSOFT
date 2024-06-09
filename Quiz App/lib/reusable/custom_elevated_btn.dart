import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

Widget elevatedBtn({Widget ? child ,required Function()onPressed,Color ? primary=whiteColor,Color onPrimary=blackColor,double ? elevation}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary,
        onPrimary: onPrimary,
        elevation: elevation,
        shape: StadiumBorder(),
      ),
      onPressed: onPressed,
      child: child,
  );
}