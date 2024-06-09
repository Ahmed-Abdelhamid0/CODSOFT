import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

Widget appCard({required Widget leading, required Widget title,required Function()onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Card(
      elevation: 8,
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        leading: leading,
        title: title,
        subtitle: Column(
          children:
          [
            Row(
              children:
              [
                Icon(Icons.feed_outlined),
                Text(
                  '10 Questions',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children:
              [
                Icon(Icons.sports_score_outlined),
                Text(
                  'Final Score',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Column(
          children: [
            Icon(Icons.star,size: 25,color: Colors.yellow,),
            SizedBox(height: 6),
            Text(
              '4.8',
              style: TextStyle(
                color: backgroundColor,
                fontSize: 18,
                fontFamily: 'Ubuntu-Medium',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

