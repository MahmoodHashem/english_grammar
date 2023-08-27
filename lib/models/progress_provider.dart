
import 'package:flutter/foundation.dart';

class Progress extends ChangeNotifier{

  int progressIndicator = 0;
  int totalSteps = 0;
  int hour = 3;
  int min = 40;
  int i = 1;


  List<bool> boolList = [true, false,false,false,false,false,false,false,false,false,false,false,
    false,false,false,false,false,false,];



  void updateBoolList() {

      boolList[i] = true;
      i++;
      notifyListeners();
  }

  void increment(){
    progressIndicator++;
    notifyListeners();
  }


  void decrementTime(){

    if(min > 0){
      min -= 20;
    }else if(hour > 0){
     hour -= 1;
     min = 40;
    }else{
      hour = 0;
      min = 0;
    }
    print(hour);
    print(min);

    notifyListeners();
  }




}