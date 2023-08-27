import 'dart:math';
import 'package:english_grammar/screens/lesson_screen.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:english_grammar/test.dart';
import 'package:english_grammar/models/progress_provider.dart';
import 'package:provider/provider.dart';

class A1 extends StatefulWidget {
   A1({Key? key, required this.value, required this.changeValue}) : super(key: key);

  @override
  State<A1> createState() => _A1State();

    bool value;
    Function changeValue;

}

class _A1State extends State<A1> {

 void _customContextMenu(BuildContext context,
      Function cutCallback,
      Function copyCallback) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.cut),
                title: Text('Cut'),
                onTap: cutCallback(),
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy'),
                onTap: copyCallback(),
              ),
            ],
          ),
        );
      },
    );
  }

  List texts = [
    SelectableText(
      '''	حروف تعریف حروفی هستند که یک اسم را به شکل خاص و عام تعریف می کنند به این معنی برای بیان کردن معین و یا نامعین بودن اسم قبل از آن استفاده می شود. 
حروف تعریف به شکل کل به دو نوع تقسیم می شوند: 
1.	حروف تعریف نامعین ( a/an )
2.	حرف تعریف معین ( the )
                          ''',
      toolbarOptions: ToolbarOptions(
        copy: true,
        cut: false,
      ),
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
    SelectableText(
      '''حروف تعریف نامعین ( a / an ) :
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
''',
      toolbarOptions: ToolbarOptions(
        copy: true,
        cut: true,
      ),
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
    SelectableText(
      '''حروف صدادار در زبان انگلیسی شامل پنج حرف می باشد: a,e,u,i,o  و دیگر حروف زبان انگلیسی به جز از w , y  جزء حروف بی صدا شمرده میشود. ''',
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
    SelectableText(
      '''تفاوت a  و an: a  قبل از کلماتی استفاده می شود که با حرف بی صدا شروع شده باشد.               an  قبل از کلماتی استفاده می شود که به حرف صدادار شروع شده باشد. 
  مثال: 
  a pen یک قلم, an orange یک نارنج , an umbrella یک چتر , a book  یک کتاب , 
  نکته: 
  o	کلماتی که با حرف u  آغاز می شوند 
  اگر u مصوت باشد یعنی صدا آن در حنجره مسدود شود قبل از آن an  استفاده می شود: 
  An uncle پسر کاکایی, an unusual dayیک روز غیر عادی, an umbrella یک چتر
	اگر  u صامت باشد یعنی صدای آن در دهان مسدود شود قبل از آن a  استفاده می شود: 
a universityیک پوهنتون, a unionیک اتحادیه, a unitیک واحد, a usual day یک روز عادی, 
o	کلماتی که با حرف h  آغاز می شوند
اگر h  تلفظ نشود قبل از آن an استفاده میشود:  
an hourیک ساعت, an honest personیک شخص صادق, an honorیک  افتخار,
اگر h  تلفظ شود قبل از آن a  استفاده می شود: 
a holidayرخصتی , a hotelیک هوتل , a high number یک شماره ای بالا

   ''',
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
    SelectableText(
      '''حرف تعریف معین ( the ) :  حرف تعریف معین the  برای بیان کردن اسم های معرفه استفاده می شود. 
موارد استفاده the  : 
1.	قبل از اسم های استفاده میشود که قبلا در جمله ذکر شده باشد. 
به مثال زیر دقت کنید: 
There is a man in our house. The man is tall. یک مرد در خانه ما است. آن مرد قد بلند است. 
در جمله دوم قبل از man  حرف تعریف معین the  استفاده شد چون در جمله اول ذکر شده بود 
2.	زمانی که گوینده و مخاطب می دانند در باره چی چیزی صحبت می کنند؛ قبل از آن اسم the  استفاده میشود حتی اگر در جملات قبل ذکر نشده باشد. 
مثلا: 
  That is the bedroom. آن حمام است
''',
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
    SelectableText(
      '''3.	قبل از اسم های می آید که خاص باشند یعنی به مثل آن دیگر وجود نداشته باشند مانند آسمان، آفتاب، ماه و غیره. 
مثلا: 
The moonماه , the sky آسمان , the god خدا , the sun آفتاب …… 
4.	برای جمع نمودن صفت قبل از آن استفاده میشود. 
مثلا: 
The old menپیرمردان , the intelligent students شاگردان لایق  … 
5.	قبل از اعضای بدن باید از the  استفاده شود
مانند: 
The ear گوش , the eye چشم , the headسر , …..
6.	قبل از اسم های کتاب های مقدس از the  استفاده می شود. 
مثلا: 
The Quranقرآن کریم , the  bibleانجیل , …..

''',
      style: TextStyle(
        color: Colors.black,
      ),
      textDirection: TextDirection.rtl,
    ),
  ];
  int i = 0;
  int _step = 0;

  Widget backButton() {
    if (_step < 1) {
      return SizedBox(
        width: 30,
      );
    } else if(_step >= 1 && _step < 5) {
      return  ElevatedButton(
        onPressed: (){
          setState(() {
            if(_step > 0){
              _step--;
              i--;
            }
          });
        },
        child: Container(
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.arrow_back),
                  const SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text('قبلی',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                ],
              )),
          height: 40,
          width: 150,
        ),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xFF0D47A1))
        ),
      );
    }else{
      return ElevatedButton(onPressed: (){
        setState(() {if (_step > 1) {
        i++;
        _step++;
      }});},
        child: Container(
          child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('تمرین',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
          height: 40,
          width: 150,
        ),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xFF0D47A1))
        ),
      );
    }
  }
  Widget upButton(){
    if(_step < 5){
      return ElevatedButton(onPressed: (){setState(() {if (_step < 5 ) {
        i++;
        _step++;
      }});},
        child: Container(
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text('بعدی',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              )),
          height: 40,
          width: 150,
        ),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xFF0D47A1))
        ),
      );
    }else{
      return ElevatedButton(
        onPressed: (){
                  Provider.of<Progress>(context, listen: false).increment();
                  Provider.of<Progress>(context, listen: false).decrementTime();
                  Provider.of<Progress>(context, listen: false).updateBoolList();
                 // print(Provider.of<Progress>(context, listen: false).hr);
                  //print(Provider.of<Progress>(context, listen: false).min);
          Navigator.pop(context);
        },
        child: Container(
          child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('درس بعدی',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
          height: 40,
          width: 150,
        ),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xFF0D47A1))
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'درس اول',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Colors.blue.shade800,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            StepProgressIndicator(
              totalSteps: 5,
              currentStep: _step,
              padding: 0,
              selectedColor: Colors.orange,
              unselectedColor: Color.fromRGBO(224,224, 224, 1.0),
              size: 9,
              roundedEdges: Radius.circular(18),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: GestureDetector(
                      onTap: (){
                        print("Hello world");
                      },
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: texts[i],
                        ),
                      ),
                    ),
                  ),
                ],),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            backButton(),
            upButton(),

          ],
        ),
      ),
    );
  }
}



