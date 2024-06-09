import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/reusable/blue_container.dart';
import 'package:quiz_app/reusable/custom_button.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/quiz_questions.dart';

class DetailQuiz extends StatelessWidget {
  final String quizName;
  const DetailQuiz({super.key,required this.quizName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 55, left: 27, right: 27),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new_outlined, size: 27,color: whiteColor),),
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
                SizedBox(height: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomTextWidgetUbuntuMedium('$quizName', fontSize: 25),
                        Spacer(),
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 10),
                        CustomTextWidgetDMSansRegular('4.8', fontSize: 18),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'GET 10 Points',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
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
                padding:  EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 10),
                      Center(child: blueContainer()),
                      SizedBox(height: 25),
                      CustomTextWidgetNunitoBold('Brief explanation about this quiz', fontSize: 17, fontWeight: FontWeight.bold,color: blackColor),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(Icons.feed_outlined,size: 25,color: greyColor,),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextWidgetUbuntuMedium('10 Questions',
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5),
                              CustomTextWidgetNunitoBold('10 point for a correct answer', color: greyColor,fontSize: 17),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      CustomTextWidgetNunitoBold(
                        'Please read the text below carefully so you can understand it . . .', fontSize: 17, fontWeight: FontWeight.bold,color: blackColor),
                      SizedBox(height: 15),
                      CustomTextWidgetNunitoBold('1) 10 point awarded for a correct answer and nomarks for a incorrect answer', fontSize: 17,color: blackColor),
                      SizedBox(height: 15),
                      CustomTextWidgetNunitoBold('2) Tap on options to select the correct answer',fontSize: 17,color: blackColor),
                      SizedBox(height: 15),
                      CustomTextWidgetNunitoBold(
                        '3) Click submit if you are sure you want to complete all the quizzes', fontSize: 17,color: blackColor),
                      SizedBox(height: 25),
                      CustomTextWidgetNunitoBold(
                        '4) if you start quiz you can\'t back again to previous screen you \'ll lose you score and app will be close',fontSize: 17,color: blackColor),
                      SizedBox(height: 25),
                      appButton(
                          onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>QuizQuestions(quizName: quizName,))),
                          btnTxt: 'Start Quiz',
                        btnColor: backgroundColor,
                        txtColor: whiteColor,
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
