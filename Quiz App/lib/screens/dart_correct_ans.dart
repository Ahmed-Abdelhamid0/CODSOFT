import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/model/drt_question_model.dart';
import 'package:quiz_app/model/flutter_question_model.dart';
import 'package:quiz_app/model/oop_question_model.dart';
import 'package:quiz_app/reusable/custom_elevated_btn.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/name_screen.dart';

class DartCorrectAns extends StatelessWidget {

  final int? finalScore;
  final int? questionIndex;
  final Answer? selectedAnswer;

  const DartCorrectAns(
      {super.key,
      this.finalScore,
      this.questionIndex,
      this.selectedAnswer,
      });
  @override
  Widget build(BuildContext context) {

    List<Question> questions = questionList();
    int questionIndex = 0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: CustomTextWidgetUbuntuMedium('Quiz App',fontSize: 40),),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('Dart Quiz Correct Answers :-',fontSize: 27,textDecoration: TextDecoration.underline,thicknesDecoration: 4),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex].questionName} \t **Ans : Non of the above**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 1].questionName} \t **Ans: Error**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 2].questionName} \t **Ans: Flutter**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 3].questionName} \t **Ans: Google**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 4].questionName} \t **Ans: main()**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 5].questionName} \t**Ans:No**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 6].questionName} \t**Ans: .dart**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 7].questionName} \t **Ans: extends**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 8].questionName} \t **Ans: both async and sync function**'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${questions[questionIndex + 9].questionName} \t **Ans: Yes**'),
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