import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

Text CustomTextWidgetUbuntuMedium(String txt,{double fontSize=17,Color  color=whiteColor,FontWeight?fontWeight,TextDecoration ? textDecoration,double ? thicknesDecoration}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'Ubuntu-Medium',
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationThickness: thicknesDecoration,

    ),
  );
}

Text CustomTextWidgetUbuntuBold(String txt,{double? fontSize,Color  color=whiteColor}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'Ubuntu-Bold',
      color: color,
    ),
  );
}

Text CustomTextWidgetPTSansNarrowRegular(String txt,{double? fontSize,Color  color=whiteColor}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'PTSansNarrow-Regular',
      color: color,
    ),
  );
}

Text CustomTextWidgetNunitoRegular(String txt,{double? fontSize,Color  color=whiteColor}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'Nunito-Regular',
      color: color,
    ),
  );
}

Text CustomTextWidgetNunitoBold(String txt,{double? fontSize,Color  color=whiteColor , FontWeight?fontWeight}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'Nunito-Bold',
      color: color,
      fontWeight: fontWeight,

    ),
  );
}

Text CustomTextWidgetDMSansRegular(String txt,{double? fontSize,Color  color=whiteColor}){
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize ,
      fontFamily: 'DMSans_36pt-Regular',
      color: color,
    ),
  );
}