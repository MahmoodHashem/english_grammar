import 'package:flutter/material.dart';
import 'package:english_grammar/consts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:english_grammar/factors/title.dart';
import 'package:english_grammar/factors/home_list_contents.dart';
import 'lesson_screen.dart';
import 'note_screen.dart';
import 'package:english_grammar/lessons/a1.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  var slides = [
    Levels(
        colorOfContainer: const Color(0xFFFF9800),
        colorOfUnselectedProgress: const Color(0xFFFFB74D),
        title: 'A1',
        subtitle:'سطح ابتدائی',
        colorOfSubtitle:const Color(0xFFAA3C00)),
    Levels(
        colorOfContainer: const Color(0xFFF57C00),
        colorOfUnselectedProgress: const Color(0xFFFFB74D),
        title: 'A2',
        subtitle:'سطح ابتدائی',
        colorOfSubtitle: const Color(0xFFAA3C00),),
    Levels(
        colorOfContainer:const Color(0xFF4CAF50),
        colorOfUnselectedProgress:  const Color(0xFF81C784),
        title: 'B1',
        subtitle:'سطح متوسط',
        colorOfSubtitle: const Color(0xFF0D5212),),
    Levels(
        colorOfContainer: const Color(0xFF388E3C),
        colorOfUnselectedProgress: const Color(0xFF81C784),
        title: 'B2',
        subtitle:'سطح متوسط',
        colorOfSubtitle: const Color(0xFF0D5212),),
    Levels(
        colorOfContainer:const Color(0xFFF44336),
        colorOfUnselectedProgress: const Color(0xFFE57373),
        title: 'C1',
        subtitle:'سطح پیشرفته',
        colorOfSubtitle: const Color(0xFF770202),),
    Levels(
        colorOfContainer: const Color(0xFFD32F2F),
        colorOfUnselectedProgress: const Color(0xFFE57373),
        title: 'C2',
        subtitle:'سطح پیشرفته',
        colorOfSubtitle: const Color(0xFF770202),),

  ];

  List pageNo = [0,1,2,3,4,5];
  int activePage = 0;
  List<Color> colorsOfIndicator = const [Color(0xFFFF9800),Color(0xFFF57C00),
    Color(0xFF4CAF50),Color(0xFF388E3C),Color(0xFFF44336),Color(0xFFD32F2F)];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: (){
                 Navigator.pop(context);

                },
                    icon:Icon(Icons.close, color: Colors.blue.shade800,) ),
              ),
              Container(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('MGrammar',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(13, 71, 161, 1.0),
                          fontFamily: 'LEMON MILK Pro FTR Medium',
                        ),
                      ),
                      const Text('اِم گرامر',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          )),
                      const Text('(مرجع معتبر گرامر زبان انگلیسی)' ,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),),
                    ],
                  ),
                ),
              ),
             ListTile(
               onTap: (){

               },
               focusColor: Colors.grey,
               hoverColor: Colors.grey,
               selectedTileColor: Colors.grey,
               contentPadding: EdgeInsets.only(left: 50, right: 50),
               title: Align(
                 alignment: Alignment.centerRight,
                 child: Text("دیکشنری",
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.w500,
                   fontSize: 20,
                 ),
                 ),
               ),
               trailing: Icon(Icons.translate, color: Colors.blue.shade800,),
             ),
             ListTile(
               onTap: (){},
               contentPadding: EdgeInsets.only(left: 50, right: 50),
               title: Align(
                 alignment: Alignment.centerRight,
                 child: Text("تنظیمات",
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 20,
                   ),
                 ),
               ),
               trailing: Icon(Icons.settings_outlined, color: Colors.blue.shade800,),
             ),
             ListTile(
               tileColor: Colors.blue,
               onTap: (){},
               contentPadding: EdgeInsets.only(left: 50, right: 50),
               title: Align(
                 alignment: Alignment.centerRight,
                 child: Text("درباره",
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 20,
                   ),),
               ),
               trailing: Icon(Icons.info_outline, color: Colors.blue.shade800,),
             ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromRGBO(13, 71, 161, 1.0),),
        shadowColor: const Color.fromRGBO(0,0, 0, 0.5),
        backgroundColor: Colors.white,
        title: const Text('MGrammar',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'LEMON MILK Pro FTR Medium',
        ),
        ),
        leading: const Icon(Icons.account_circle_rounded,
        color: Color.fromRGBO(13, 71, 161, 1,),
          size: 24,
        ),
      centerTitle: true,
      elevation: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,top: 30,),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index,r){
                  setState(() {
                    activePage = index;
                  });

                },
                height: 200.0,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
              ),
              items: pageNo.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return slides[i];
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(slides.length, (i) =>
                  Container(
                    margin: const EdgeInsets.all(2),
                    child: Icon(Icons.circle,
                    size: 15,
                      color: activePage == i? colorsOfIndicator[i]:Colors.grey
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (c) => Notes()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: myOrangeColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 80,
                child: HomeListTileContents(
                  needProgress: false,
                  title: 'نوت های من',
                  icon: Icons.edit_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: myOrangeColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 80,
              child: HomeListTileContents(
                title: '      تمرین ها',
                icon: Icons.edit_note
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: myOrangeColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 80,
              child: HomeListTileContents(
                title: 'تست های پایانی',
                icon: Icons.assignment,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





