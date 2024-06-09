import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/model/oop_question_model.dart';
import 'package:quiz_app/reusable/custom_elevated_btn.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/name_screen.dart';

class OOPCorrectAns extends StatelessWidget {
  final int? finalScore;
  final int? oopQuestionIndex;
  final OOPAnswers? oopSelectedAnswer;

  const OOPCorrectAns(
      {super.key,
        this.finalScore,
        this.oopQuestionIndex,
        this.oopSelectedAnswer,
      });
  @override
  Widget build(BuildContext context) {
    List<OOPQuestion>oopQuestions=oopQuAnList();
    int oopQuestionIndex=0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child:  CustomTextWidgetUbuntuMedium('Quiz App',fontSize: 40),),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('OOP Quiz Correct Answers :-',fontSize: 27,textDecoration: TextDecoration.underline,thicknesDecoration: 4),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex].OOPQuestionName} \t **Ans : Alan Kay **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+1].OOPQuestionName} \t **Ans : Exception **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+2].OOPQuestionName} \t **Ans : Inheritance **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+3].OOPQuestionName} \t **Ans : Duplicate or Redundant Data **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+4].OOPQuestionName} \t **Ans : Inheritance **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+5].OOPQuestionName} \t **Ans : Ensured to some extent **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+6].OOPQuestionName} \t **Ans : Any number **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+7].OOPQuestionName} \t **Ans : Virtual function **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+8].OOPQuestionName} \t **Ans : Object-based language **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${oopQuestions[oopQuestionIndex+9].OOPQuestionName} \t **Ans : Dynamic binding **'),
              SizedBox(height: 15),
              elevatedBtn(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                  child: CustomTextWidgetUbuntuMedium('Back',color: blackColor)
              ),
            ],
          ),
        ),
      ),
    );
  }
}