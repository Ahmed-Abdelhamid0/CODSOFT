import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/reusable/custom_elevated_btn.dart';
import 'package:quiz_app/reusable/custom_text.dart';
import 'package:quiz_app/screens/quiz_selection.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
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

  GlobalKey<FormState> formState=GlobalKey();
  TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:()=>onBackButtonPressed(context) ,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(

          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Center(child: CustomTextWidgetUbuntuBold('Quiz App', fontSize: 45)),
              SizedBox(height: 20),
              CustomTextWidgetDMSansRegular('Enter Your Name to Start . . .',fontSize: 30),
              SizedBox(height: 15),
              Form(
                key: formState,
                child: TextFormField(
                  autofocus: true,
                  cursorColor: backgroundColor,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.name,
                  controller: _controller,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Name is Required !';

                    }else{
                      return null;
                    }

                  },
                  decoration: InputDecoration(
                    fillColor: whiteColor,
                    filled: true,
                    errorStyle: TextStyle(
                      color: whiteColor,
                      fontSize: 17
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
              SizedBox(height: 25),
              elevatedBtn(
                elevation: 10,
               onPrimary: backgroundColor,
                  onPressed: (){
                  if(formState.currentState!.validate()){
                    Navigator.
                    of(context).
                    pushReplacement(MaterialPageRoute(builder: (context)=>QuizSelectScreen(userName: _controller.text,)));
                  }}, child: CustomTextWidgetNunitoRegular('Select Quiz',fontSize: 22,color: backgroundColor)),
            ],
          ),
        ),
      ),
    );
  }
}
