class OOPQuestion {
  final String OOPQuestionName;
  List<OOPAnswers> OOPQuestionAnswers;
  OOPQuestion(this.OOPQuestionName, this.OOPQuestionAnswers);
}

class OOPAnswers {
  final String OOPAnswerName;
  final bool isOOPAnswerCorrect;
  OOPAnswers(this.OOPAnswerName, this.isOOPAnswerCorrect);
}

List<OOPQuestion> oopQuAnList(){
  List<OOPQuestion> oopList=[];

  oopList.add(OOPQuestion('1-Who developed object-oriented programming?', [
        OOPAnswers('Adele Goldberg', false),
        OOPAnswers('Dennis Ritchie', false),
        OOPAnswers('Alan Kay', true),
        OOPAnswers('Andrea Ferro', false),
      ]));
  oopList.add(OOPQuestion('2-Which of the following is not an OOPS concept?', [
    OOPAnswers('Encapsulation', false),
    OOPAnswers('Polymorphism', false),
    OOPAnswers('Exception', true),
    OOPAnswers('Abstraction', false),
  ]));
  oopList.add(OOPQuestion('3-Which feature of OOPS described the reusability of code?', [
    OOPAnswers('Abstraction', false),
    OOPAnswers('Encapsulation', false),
    OOPAnswers('Polymorphism', false),
    OOPAnswers('Inheritance', true),
  ]));
  oopList.add(OOPQuestion('4-Which among the following feature is not in the general definition of OOPS?', [
    OOPAnswers('Modularity', false),
    OOPAnswers('Efficient Code', false),
    OOPAnswers('Code reusability', false),
    OOPAnswers('Duplicate or Redundant Data', true),
  ]));
  oopList.add(OOPQuestion('5-Which feature of OOPS derives the class from another class?', [
    OOPAnswers('Inheritance', true),
    OOPAnswers('Data hiding', false),
    OOPAnswers('Encapsulation', false),
    OOPAnswers('Polymorphism', false),
  ]));
  oopList.add(OOPQuestion('6-Using the concept of encapsulation security of the data is _____', [
    OOPAnswers('Ensured to some extent', true),
    OOPAnswers('Purely ensured', false),
    OOPAnswers('Not ensured', false),
    OOPAnswers('Very low', false),
  ]));
  oopList.add(OOPQuestion('7-A single program of OOPS contains ____ classes?', [
    OOPAnswers('Only 1', false),
    OOPAnswers('Only 999', false),
    OOPAnswers('Only 100', false),
    OOPAnswers('Any number', true),
  ]));
  oopList.add(OOPQuestion('8-Which function best describe the concept of polymorphism in programming languages?', [
    OOPAnswers('Class member function', false),
    OOPAnswers('Virtual function', true),
    OOPAnswers('Inline function', false),
    OOPAnswers('Undefined function', false),
  ]));
  oopList.add(OOPQuestion('9-Which of the following language uses the classes but not the polymorphism concept?', [
    OOPAnswers('Procedure Oriented language', false),
    OOPAnswers('Object-based language', true),
    OOPAnswers('Class-based language', false),
    OOPAnswers('If classes are used, then the polymorphism concept will always be used in the programming languages.', false),
  ]));
  oopList.add(OOPQuestion('10-Which of the following feature is also known as run-time binding or late binding?', [
    OOPAnswers('Dynamic typing', false),
    OOPAnswers('Dynamic loading', false),
    OOPAnswers('Dynamic binding', true),
    OOPAnswers('Data hiding', false),
  ]));

  return oopList;
}
