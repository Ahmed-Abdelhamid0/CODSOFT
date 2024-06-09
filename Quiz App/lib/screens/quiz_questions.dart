import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/model/drt_question_model.dart';
import 'package:quiz_app/model/flutter_question_model.dart';
import 'package:quiz_app/model/oop_question_model.dart';
import 'package:quiz_app/reusable/blue_container.dart';
import 'package:quiz_app/reusable/custom_elevated_btn.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/dart_correct_ans.dart';
import 'package:quiz_app/screens/flutter_correct_ans.dart';
import 'package:quiz_app/screens/oop_correct_ans.dart';

class QuizQuestions extends StatefulWidget {
  final String ? quizName;

  const QuizQuestions({super.key,required this.quizName});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}
Future<bool> onBackButtonPressed(BuildContext context)async{
  bool exitApp=await showDialog(
    context: context,
    builder: (BuildContext context)=>AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Column(
        children: [
          Center(child: CustomTextWidgetUbuntuMedium('Quiz App',color: backgroundColor,fontSize: 22)),
          SizedBox(height: 30),
          Center(child: CustomTextWidgetUbuntuMedium('''You will lose your quiz score now
          
                      if you back !''',color: backgroundColor,fontSize: 22)),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: CustomTextWidgetUbuntuMedium('Back',color: backgroundColor,fontSize: 17)),

            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
                child: CustomTextWidgetUbuntuMedium('Cont.Quiz',color: backgroundColor,fontSize: 17)),
          ],
        ),
      ],
    ),

  );
  return exitApp;
}

class _QuizQuestionsState extends State<QuizQuestions> {
  List<Question> questionOfList = questionList();
  List<flutterQuestion> flutterQuestionsList=flutterQuAnsList();
  List<OOPQuestion> oopQuestionsList=oopQuAnList();
  int oopQuestionIndex=0;
  OOPAnswers ? oopSelectedAns;
  int flutterQuestionIndex=0;
  flutterAnswers ? flutterSelectAns;
  int questionIndex = 0;
  int finalScore = 0;
   Answer ? selectedAns;
  bool  isSelected=false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>onBackButtonPressed(context),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 55, left: 27, right: 27),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                          Icons.reorder,
                          size: 27,
                          color: whiteColor,
                      ),
                      SizedBox(width: 20),
                      CustomTextWidgetUbuntuMedium('${widget.quizName}',fontSize: 23),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
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
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 10),
                      Center(child: blueContainer()),
                      SizedBox(height: 15),
                     quizSelection(),
                      SizedBox(height: 50),
                      nextAndSubmitButton(),
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

  Widget answerButton(Answer answer){

    bool isSelected=answer==selectedAns;

    return Container(
      margin: EdgeInsets.all(8),
      child: elevatedBtn(
          primary:isSelected?backgroundColor:whiteColor,
          onPrimary: isSelected?whiteColor:Colors.black,
        onPressed: (){
          if(selectedAns==null){
            if(answer.isCorrectAnswer){
              finalScore++;
            }
            setState(() {
              selectedAns=answer;
            });
          }

        },
        child: Text(
            answer.answer
        ),
      ),
    );
  }
  Widget flutterAnswerButton(flutterAnswers flutterAnswer){

    bool isSelected=flutterAnswer==flutterSelectAns;

    return Container(
      margin: EdgeInsets.all(8),
      child: elevatedBtn(
          primary:isSelected?backgroundColor:whiteColor,
          onPrimary: isSelected?whiteColor:Colors.black,
        onPressed: (){
          if(flutterSelectAns==null){
            if(flutterAnswer.isAnswerCorrect){
              finalScore++;
            }
            setState(() {
              flutterSelectAns=flutterAnswer;
            });
          }

        },
        child: Text(
            flutterAnswer.answerName
        ),
      ),
    );
  }
  Widget oopAnswerButton(OOPAnswers oopAnswer){

    bool isSelected=oopAnswer==oopSelectedAns;

    return Container(
      margin: EdgeInsets.all(8),
      child: elevatedBtn(
          primary:isSelected?backgroundColor:whiteColor,
          onPrimary: isSelected?whiteColor:Colors.black,
        onPressed: (){
          if(oopSelectedAns==null){
            if(oopAnswer.isOOPAnswerCorrect){
              finalScore++;
            }
            setState(() {
              oopSelectedAns=oopAnswer;
            });
          }

        },
        child: Text(
            oopAnswer.OOPAnswerName
        ),
      ),
    );
  }

  Widget nextAndSubmitButton(){
  bool isLastQuestion=false;
  if(questionIndex==questionOfList.length-1){
    isLastQuestion=true;

  }if(flutterQuestionIndex==flutterQuestionsList.length-1){
    isLastQuestion=true;
  }
  if(oopQuestionIndex==oopQuestionsList.length-1){
    isLastQuestion=true;
  }
    return Container(
      margin: EdgeInsets.all(8),
      child: elevatedBtn(
          primary:Colors.deepOrange,
          onPrimary: whiteColor,
        onPressed: (){
           setState(() {
             if(isLastQuestion){
             showDialog(context: context, builder: (_){
               return alertDialogScore();
             });
             }else{
               flutterSelectAns=null;
               oopSelectedAns=null;
               selectedAns=null;

               flutterQuestionIndex++;
               oopQuestionIndex++;
               questionIndex++;

             }
           });
        },
        child: Text(
           '${isLastQuestion?'Submit Answers':'Next Question'}',
        ),
      ),
    );
  }
  Widget alertDialogScore(){
    bool isPassed=false;
    if(finalScore>=5){
      isPassed=true;
    }
    String result=isPassed?'Pass':'Failed';
    return AlertDialog(
      title: Text('${result}|You Have ${finalScore} From 10'),
      content: elevatedBtn(
        primary: backgroundColor,
        onPrimary: whiteColor,
        onPressed: (){
          if(widget.quizName=='Dart Quiz'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                DartCorrectAns(
                  finalScore: finalScore,
                  questionIndex: questionIndex,
                  selectedAnswer: selectedAns,
                )));
          }else if(widget.quizName=='Flutter Quiz'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                FlutterCorrectAns(
                  finalScore: finalScore,
                  flutterQuestionIndex:flutterQuestionIndex,
                  flutterSelectedAnswer: flutterSelectAns,
                )));
          }else{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                OOPCorrectAns(
                  finalScore: finalScore,
                  oopQuestionIndex: oopQuestionIndex,
                  oopSelectedAnswer: oopSelectedAns,
                )));
          }

        },
        child: Text('Show Correct Answers'),
      ),
    );
  }
   quizSelection(){
    if(widget.quizName=='Flutter Quiz'){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomTextWidgetUbuntuMedium('Question ${flutterQuestionIndex + 1}/${flutterQuestionsList.length.toString()}', fontSize: 18,color: blackColor),
          ),
          SizedBox(height: 30),
          CustomTextWidgetUbuntuMedium(
            '${flutterQuestionsList[flutterQuestionIndex].flutterQuestionName.toString()}', fontSize: 23,color: blackColor),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: flutterQuestionsList[flutterQuestionIndex].flutterQuestionAnswers.map((e) => flutterAnswerButton(e)).toList(),
          ),
        ],
      );
    }else if(widget.quizName=='Dart Quiz'){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomTextWidgetUbuntuMedium(
              'Question ${questionIndex + 1}/${questionOfList.length.toString()}', fontSize: 18,color: blackColor),
          ),
          SizedBox(height: 30),
          CustomTextWidgetUbuntuMedium(
            '${questionOfList[questionIndex].questionName.toString()}', fontSize: 23,color: blackColor),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: questionOfList[questionIndex].
            questionAnswerList.map((e) => answerButton(e)).toList(),
          ),
        ],
      );
    }else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomTextWidgetUbuntuMedium(
              'Question ${oopQuestionIndex + 1}/${oopQuestionsList.length.toString()}', fontSize: 18,color: blackColor),
          ),
          SizedBox(height: 30),
          CustomTextWidgetUbuntuMedium(
            '${oopQuestionsList[oopQuestionIndex].OOPQuestionName.toString()}', fontSize: 23,color: blackColor),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: oopQuestionsList[oopQuestionIndex].OOPQuestionAnswers.map((e) => oopAnswerButton(e)).toList(),
          ),
        ],
      );
    }

  }
}
