
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'note.dart';


class NoteData extends ChangeNotifier{

  List<Note> _notes = [
    Note(title: "حروف تعریف ", details: '''
  حروف تعریف نامعین ( a / an ) :
1.	حروف تعریف نامعین شامل  a , an بوده و با اسم های استفاده می شود که برای مخاطب شناخته شده نباشد و یا شناخته بودن و نبودنش برای مخاطب مهم نباشد. 
		مثال:    
I have a friend  ---  من یک دوست دارم 
در مثال فوق برای مخاطب من نا معلوم است که کدام دوست را می گویم. 
همچنان در مثال های ذیل اسمهای که استفاده کردیم برای مخاطب مشخص نیست. 
I watched a movie last night. ----- من دیشب یک فلم تماشا کردم
I met a woman yesterday --------  من دیروز یک زنی را ملاقات کردم. 
I read a book everyday ------ من هر روز کتاب می خوانم 
2.	حروف تعریف نامعین قبل از اسم های قابل شمارش مفرد استفاده می شود و با اسم های قابل شمارش جمع و غیر قابل شمارش استفاده شده نمی تواند.
مثال:  
I have a book. (درست)
I have a pens. (اشتباه)
That a sugar. (اشتباه)
  '''),
    Note(title: "حروف تعریف ", details: '''
  حروف تعریف نامعین ( a / an ) :
1.	حروف تعریف نامعین شامل  a , an بوده و با اسم های استفاده می شود که برای مخاطب شناخته شده نباشد و یا شناخته بودن و نبودنش برای مخاطب مهم نباشد. 
		مثال:    
I have a friend  ---  من یک دوست دارم 
در مثال فوق برای مخاطب من نا معلوم است که کدام دوست را می گویم. 
همچنان در مثال های ذیل اسمهای که استفاده کردیم برای مخاطب مشخص نیست. 
I watched a movie last night. ----- من دیشب یک فلم تماشا کردم
I met a woman yesterday --------  من دیروز یک زنی را ملاقات کردم. 
I read a book everyday ------ من هر روز کتاب می خوانم 
2.	حروف تعریف نامعین قبل از اسم های قابل شمارش مفرد استفاده می شود و با اسم های قابل شمارش جمع و غیر قابل شمارش استفاده شده نمی تواند.
مثال:  
I have a book. (درست)
I have a pens. (اشتباه)
That a sugar. (اشتباه)
  '''),
    Note(title: "حروف تعریف ", details: '''
  حروف تعریف نامعین ( a / an ) :
1.	حروف تعریف نامعین شامل  a , an بوده و با اسم های استفاده می شود که برای مخاطب شناخته شده نباشد و یا شناخته بودن و نبودنش برای مخاطب مهم نباشد. 
		مثال:    
I have a friend  ---  من یک دوست دارم 
در مثال فوق برای مخاطب من نا معلوم است که کدام دوست را می گویم. 
همچنان در مثال های ذیل اسمهای که استفاده کردیم برای مخاطب مشخص نیست. 
I watched a movie last night. ----- من دیشب یک فلم تماشا کردم
I met a woman yesterday --------  من دیروز یک زنی را ملاقات کردم. 
I read a book everyday ------ من هر روز کتاب می خوانم 
2.	حروف تعریف نامعین قبل از اسم های قابل شمارش مفرد استفاده می شود و با اسم های قابل شمارش جمع و غیر قابل شمارش استفاده شده نمی تواند.
مثال:  
I have a book. (درست)
I have a pens. (اشتباه)
That a sugar. (اشتباه)
  '''),

  ];


  List<Note> get notes{
    return _notes;
  }

  void addTask(String newTitle, String newDetails){
    final note = Note(title: newTitle, details: newDetails);
    _notes.add(note);
    notifyListeners();
  }

  void deleteTask(Note note){
    _notes.remove(note);
    notifyListeners();
  }

}