import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/model/flutter_question_model.dart';
import 'package:quiz_app/reusable/custom_elevated_btn.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/name_screen.dart';


class FlutterCorrectAns extends StatelessWidget {

  final int? finalScore;
  final int? flutterQuestionIndex;
  final flutterAnswers? flutterSelectedAnswer;

  const FlutterCorrectAns(
      {super.key,
        this.finalScore,
        this.flutterQuestionIndex,
        this.flutterSelectedAnswer,
       });

  @override
  Widget build(BuildContext context) {
    List<flutterQuestion> flutterQuestions=flutterQuAnsList();
    int flutterQuestionIndex=0;

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
              CustomTextWidgetUbuntuMedium('Flutter Quiz Correct Answers :-',fontSize: 27,textDecoration: TextDecoration.underline,thicknesDecoration: 4),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex].flutterQuestionName} \t **Ans : Flutter is an open-source UI toolkit **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+1].flutterQuestionName} \t **Ans : Google **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+2].flutterQuestionName} \t **Ans : 2 **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+3].flutterQuestionName} \t **Ans : Dart **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+4].flutterQuestionName} \t **Ans : Firebase Database **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+5].flutterQuestionName} \t **Ans : Keys **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+6].flutterQuestionName} \t **Ans : True **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+7].flutterQuestionName} \t **Ans : Flutter run --release **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+8].flutterQuestionName} \t **Ans : runApp() **'),
              SizedBox(height: 20),
              CustomTextWidgetUbuntuMedium('${flutterQuestions[flutterQuestionIndex+9].flutterQuestionName} \t **Ans : pubspec.yaml **'),
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
