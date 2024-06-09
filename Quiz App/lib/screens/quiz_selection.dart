import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/reusable/blue_container.dart';
import 'package:quiz_app/reusable/custom_card.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/quiz_detail.dart';

class QuizSelectScreen extends StatelessWidget {
  final String userName;

  const QuizSelectScreen({super.key, required this.userName});

  Future<bool> onBackButtonPressed(BuildContext context)async{
    bool exitApp=await showDialog(
        context: context,
        builder: (BuildContext context)=>AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Column(
            children: [
              Center(child: CustomTextWidgetUbuntuMedium('Quiz App',color: backgroundColor,fontSize: 22)),
              SizedBox(height: 30),
              Center(child: CustomTextWidgetUbuntuMedium('Do You Want to Close the App ?',color: backgroundColor,fontSize: 22)),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop(true);
                }, child: CustomTextWidgetUbuntuMedium('Yes',color: backgroundColor,fontSize: 17)),

                TextButton(onPressed: (){
                  Navigator.of(context).pop(false);
                },
                    child: CustomTextWidgetUbuntuMedium('No',color: backgroundColor,fontSize: 17)),
              ],
            ),
          ],
        ),

    );
    return exitApp;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>onBackButtonPressed(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 55, left: 27, right: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.sort,
                        size: 30,
                        color: whiteColor,
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  CustomTextWidgetDMSansRegular('Hello, ${userName}', fontSize: 18),
                  SizedBox(height: 14),
                  CustomTextWidgetUbuntuBold('Let\'s test your knowledge', fontSize: 20),
                  SizedBox(height: 23),
                  CustomTextWidgetPTSansNarrowRegular('Select One From Available Quizzes and Start . . .', fontSize: 25),
                  SizedBox(height: 14),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      blueContainer(),
                      SizedBox(height: 25),
                      CustomTextWidgetUbuntuMedium(
                        'Available Quizzes . . .', color: backgroundColor, fontSize: 23,),
                      SizedBox(height: 25),
                      appCard(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailQuiz(
                                    quizName: 'Dart Quiz',
                                  )));
                        },
                        leading: Image.asset(
                          'assets/images/dart.jpg',
                          width: 90,
                          height: 90,
                        ),
                        title: CustomTextWidgetUbuntuMedium('Dart Quiz', color: backgroundColor, fontSize: 18)),
                      Spacer(),
                      appCard(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailQuiz(
                                    quizName: 'OOP Quiz',
                                  )));
                        },
                        leading: Image.asset(
                          'assets/images/oop.png',
                          width: 90,
                          height: 90,
                        ),
                        title: CustomTextWidgetUbuntuMedium('OOP Quiz', color: backgroundColor, fontSize: 18)),
                      Spacer(),
                      appCard(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailQuiz(
                                    quizName: 'Flutter Quiz',
                                  )));
                        },
                        leading: Image.asset(
                          'assets/images/flutter.jpg',
                          width: 90,
                          height: 90,
                        ),
                        title: CustomTextWidgetUbuntuMedium('Flutter Quiz',color: backgroundColor,fontSize: 18,)),
                      Spacer(),
                    ],
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
