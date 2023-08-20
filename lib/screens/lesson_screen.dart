
import 'package:flutter/material.dart';
import 'package:english_grammar/factors/title.dart';
import 'package:english_grammar/test.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:english_grammar/lessons/a1.dart';

class Lessons extends StatefulWidget {
   const Lessons({Key? key,
     required this.colorOfContainer,
     required this.colorOfUnselectedProgress,
     required this.title,
     required this.subtitle,
     required this.colorOfSubtitle,
     required this.colorOfTile,
   }) : super(key: key,
   );

   final Color colorOfContainer;
   final Color colorOfUnselectedProgress;
   final String title;
   final String subtitle;
   final Color colorOfSubtitle;
   final Color colorOfTile;


  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {

  var lessons = ['اول','دوم','سوم','چهارم','پنجم','ششم','هفتم','هشتم','نهم','دهم','یازدهم','دوازدهم',
    'سیزدهم','چهاردهم','پانزدهم','شانزدهم','هفدهم ','هجدهم','نوزدهم','بیستم',];

List<String> a1Subs = ['کلمه و انواع آن ','کاربر حروف تعریف نامعین a و an','آوا','حرف تعریف معین the','ضمیر',
  'صفت','ترتیب صفات ','صفات مقایسوی','قید','فعل و اشکال آن ','انواع قید','جملات شرطی','سوالیه شرطی','زمان حال ساده', 'زمان گذشته ساده'];
List<String> a2Subs = ['فعل wish','افعال توبی ','فعل مجهول','جمله ای معلوم و مجهول','افعال سببی',
  'ing - اسم مصدر','زمان حال جاری','زمان گذشته جاری','ضمایر موصولی whose, whome, who, which, that','(ing + فعل) در جمله ای فرعی و بعد از افعال حسی',
  'enough, too, so...that, such....that','migh, may, must,should','کلمات ربط دهنده 1','کلمات ربط دهنده 2'];
List<String> b1Subs = ['جملات نقل قول','whether and whether...or','neither,either,too,so','still and anymore',
  'جمله ای وابسته - clause','روش تعیین شکل صحیح فعل','زمان حال کامل','زمان گذشته کامل',];
List<String> b2Subs = ['اشکال مختلف فعل','used to, be used to','کمیت نما ها','افعال کمکی ','adj clause',
  'whould rather and whould prefer','زمان آینده ساده ','فعل مصر - infinitive','indirect question',
  'ضمایر فاعلی ','صفات ملکی','حروف اضاهف'];
List<String> c1Subs =  ['اشکال مختلف فعل','used to, be used to','کمیت نما ها','افعال کمکی ','adj clause',
  'whould rather and whould prefer','زمان آینده ساده ','فعل مصر - infinitive','indirect question',
  'ضمایر فاعلی ','صفات ملکی','حروف اضاهف'];
List<String> c2Subs = ['اشکال مختلف فعل','used to, be used to','کمیت نما ها','افعال کمکی ','adj clause',
  'whould rather and whould prefer','زمان آینده ساده ','فعل مصر - infinitive','indirect question',
  'ضمایر فاعلی ','صفات ملکی','حروف اضاهف'];


 List<String> subtitlesList(){

    var title = widget.title;

    switch(title){
      case 'A1': return a1Subs;
      case 'A2': return a2Subs;
      case 'B1': return b1Subs;
      case 'B2': return b2Subs;
      case 'C1': return b2Subs;
      case 'C2': return b2Subs;
      default:
        return [];
    }

  }
  int lenghtOfSubtitleList(){
    var title = widget.title;

    switch(title){
      case 'A1': return a1Subs.length;
      case 'A2': return a2Subs.length;
      case 'B1': return b1Subs.length;
      case 'B2': return b2Subs.length;
      case 'C1': return b2Subs.length;
      case 'C2': return b2Subs.length;
      default:
        return 0;
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back), color: Colors.blue),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.alarm), color: Colors.blue,)],
          title: Align(
              alignment: Alignment.centerRight,
              child: Text("${widget.title} ${widget.subtitle} ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 0,
              child: Levels(
                  colorOfContainer: widget.colorOfContainer,
                  colorOfUnselectedProgress: widget.colorOfUnselectedProgress,
                  title: widget.title,
                  subtitle: widget.subtitle,
                  colorOfSubtitle: widget.colorOfSubtitle,
                  isNavigatable: false),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: lenghtOfSubtitleList(),
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 7),
                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (c) => A1()));

                            // Alert(
                            //   context: context,
                            //   type: AlertType.warning,
                            //   title: "درس قفل است",
                            //   desc: "ابتدا درس قبلی را تکمیل نمائید",
                            //   buttons: [
                            //     DialogButton(
                            //       onPressed: () => Navigator.pop(context),
                            //       width: 120,
                            //       child: const Text(
                            //         "باشه",
                            //         style: TextStyle(color: Colors.white, fontSize: 20),
                            //       ),
                            //     )
                            //   ],
                            // ).show();

                          },
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: widget.colorOfTile,  width:1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          title: Align(
                              alignment: Alignment.centerRight,
                              child: Text('درس ${lessons[i]}',
                                textDirection: TextDirection.rtl,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          subtitle: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(subtitlesList()[i],
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          tileColor: Colors.transparent,
                          leading: Radio(
                            value: true,
                            groupValue:true ,
                            onChanged: (value){

                            },
                            activeColor: widget.colorOfTile, ),
                        ),
                      );
                    })
            )
          ],
        ),
      ),
    );
  }
}
