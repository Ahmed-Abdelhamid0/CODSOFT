class Question {
  final String questionName;
  final List<Answer> questionAnswerList;

  Question(this.questionName, this.questionAnswerList);
}

class Answer {
  final String answer;
  final bool isCorrectAnswer;

  Answer(this.answer, this.isCorrectAnswer);
}

List<Question> questionList() {
  List<Question> listQuestion = [];
  listQuestion.add(
    Question('1.What is Dart?', [
      Answer('Dart is a object-oriented programming language', false),
      Answer('Dart is used to create a frontend user interfaces', false),
      Answer('Both of the above', false),
      Answer('None of the above', true),
    ]),

  );

  listQuestion.add(
    Question('2.What will be the output of this program : void main() { int num; print(num); }', [
      Answer('Error', true),
      Answer('Null', false),
      Answer('Num', false),
      Answer('None of these', false),
    ],
    )
  );

  listQuestion.add(
    Question('3.Which framework uses dart?', [
      Answer('Python', false),
      Answer('Java', false),
      Answer('Flutter', true),
      Answer('React', false),
    ],
    ),
  );

  listQuestion.add(
    Question('4.Dart is originally developed by?', [
      Answer('Microsoft', false),
      Answer('Google', true),
      Answer('IBM', false),
      Answer('Facebook', false),
    ]),
  );

  listQuestion.add(
    Question('5.The ___ function is a predefined method in Dart.', [
      Answer('declare()', false),
      Answer('list()', false),
      Answer('main()', true),
      Answer('return()', false),
    ]),
  );

  listQuestion.add(
    Question('6.Dart is an Object-Oriented language.', [
      Answer('Yes', false),
      Answer('No', true),
    ]),
  );

  listQuestion.add(
    Question('7.What is the extension of Dart file?', [
      Answer('.dart', true),
      Answer('.drt', false),
      Answer('.java', false),
      Answer('.py', false),
    ]),
  );

  listQuestion.add(
    Question('8.Which keyword in Dart is used to create a subclass', [
      Answer('extends', true),
      Answer('subclass', false),
      Answer('super', false),
      Answer('none of these', false),
    ]),
  );

  listQuestion.add(
    Question('9.The await keyboard works in. . . ', [
      Answer('async function only', false),
      Answer('sync function only', false),
      Answer('both async and sync function', true),
      Answer('none', false),
    ]),
  );

  listQuestion.add(
    Question('10.Is Dart Case Sensitive Programming Language? ', [
      Answer('Yes', true),
      Answer('No', false),
    ]),
  );

  return listQuestion;
}