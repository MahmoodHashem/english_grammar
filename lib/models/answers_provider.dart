import 'package:flutter/foundation.dart';

class Answer extends ChangeNotifier{

  String option;
  String option2;
  String option3;
  String option4;
  String option5;
  String option6;
  String filled;

  Answer({this.option = ' ',
    this.filled = '',
    this.option2 = '',
    this.option3 = '',
    this.option4 = '',
    this.option5 = '',
    this.option6 = '' });

  List<String> answers = [];

  void updateAnswers(String selectedOption){
    answers.add(selectedOption);
    print(answers);
    notifyListeners();
  }



}