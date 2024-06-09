class flutterQuestion {
  final String flutterQuestionName;
  List<flutterAnswers> flutterQuestionAnswers;

  flutterQuestion(this.flutterQuestionName, this.flutterQuestionAnswers);
}

class flutterAnswers {
  final String answerName;
  final bool isAnswerCorrect;

  flutterAnswers(this.answerName, this.isAnswerCorrect);
}

List<flutterQuestion> flutterQuAnsList() {
  List<flutterQuestion> flutterList = [];
  flutterList.add(flutterQuestion('1-What is Flutter?', [
      flutterAnswers(
          'Flutter is an open-source backend development framework', false),
      flutterAnswers('Flutter is an open-source UI toolkit', true),
      flutterAnswers(
          'Flutter is an open-source programming language for cross-platform applications',
          false),
      flutterAnswers(' Flutters is a DBMS toolkit', false),
    ],));
  flutterList.add(flutterQuestion('2-Who developed the Flutter Framework ?', [
    flutterAnswers(
        ' Facebook', false),
    flutterAnswers('Microsoft', false),
    flutterAnswers(
        'Google', true),
    flutterAnswers(' Oracle', false),
  ],));
  flutterList.add(flutterQuestion('3-How many types of widgets are there in Flutter?', [
    flutterAnswers('2', true),
    flutterAnswers('4', false),
    flutterAnswers('6', false),
    flutterAnswers('8', false),
  ],));
  flutterList.add(flutterQuestion('4-Which programming language is used to build Flutter applications?', [
    flutterAnswers('Kotlin', false),
    flutterAnswers('Dart', true),
    flutterAnswers('Java', false),
    flutterAnswers('Go', false),
  ],));
  flutterList.add(flutterQuestion('5-Access to a cloud database through Flutter is available through which service?', [
    flutterAnswers('SQLite', false),
    flutterAnswers('Firebase Database', true),
    flutterAnswers('NOSQL', false),
    flutterAnswers('MYSQL', false),
  ],));
  flutterList.add(flutterQuestion('6-What element is used as an identifier for components when programming in Flutter?', [
    flutterAnswers('Widgets', false),
    flutterAnswers('Elements', false),
    flutterAnswers('Serial', false),
    flutterAnswers('Keys', true),
  ],));
  flutterList.add(flutterQuestion('7-Flutter boasts improved runtime performance over most application frameworks.', [
    flutterAnswers('True', true),
    flutterAnswers('False', false),
  ],));
  flutterList.add(flutterQuestion('8-What command would you use to compile your Flutter app in release mode?', [
    flutterAnswers('Flutter --release', false),
    flutterAnswers('Flutter build --release', false),
    flutterAnswers('Flutter run --release', true),
    flutterAnswers('Flutter run \$release', false),
  ],));
  flutterList.add(flutterQuestion('9-Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?', [
    flutterAnswers('main()', false),
    flutterAnswers('runApp()', true),
    flutterAnswers('root()', false),
    flutterAnswers('container()', false),
  ],));
  flutterList.add(flutterQuestion('10-What is the key configuration file used when building a Flutter project?', [
    flutterAnswers('pubspec.yaml', true),
    flutterAnswers('pubspec.xml', false),
    flutterAnswers('config.html', false),
    flutterAnswers('root.xml', false),
  ],));
  return flutterList;
}
