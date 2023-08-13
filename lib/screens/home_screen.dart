import 'package:flutter/material.dart';
import 'package:english_grammar/consts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:english_grammar/factors/title.dart';
import 'package:english_grammar/factors/home_list_contents.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var slides = [
    Levels(
        colorOfContainer: Color(0xFFFF9800),
        colorOfUnselectedProgress: Color(0xFFFFB74D),
        title: 'A1',
        subtitle:'سطح ابتدائی',
        colorOfSubtitle: Color(0xFFAA3C00)),
    Levels(
        colorOfContainer: Color(0xFFF57C00),
        colorOfUnselectedProgress: Color(0xFFFFB74D),
        title: 'A2',
        subtitle:'سطح ابتدائی',
        colorOfSubtitle: Color(0xFFAA3C00),),
    Levels(
        colorOfContainer:Color(0xFF4CAF50),
        colorOfUnselectedProgress:  Color(0xFF81C784),
        title: 'B1',
        subtitle:'سطح متوسط',
        colorOfSubtitle: Color(0xFF0D5212),),
    Levels(
        colorOfContainer: Color(0xFF388E3C),
        colorOfUnselectedProgress: Color(0xFF81C784),
        title: 'B2',
        subtitle:'سطح متوسط',
        colorOfSubtitle: Color(0xFF0D5212),),
    Levels(
        colorOfContainer:const Color(0xFFF44336),
        colorOfUnselectedProgress: const Color(0xFFE57373),
        title: 'C1',
        subtitle:'سطح پیشرفته',
        colorOfSubtitle: Color(0xFF770202),),
    Levels(
        colorOfContainer: Color(0xFFD32F2F),
        colorOfUnselectedProgress:  Color(0xFFE57373),
        title: 'C2',
        subtitle:'سطح پیشرفته',
        colorOfSubtitle: Color(0xFF770202),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu), color:const Color.fromRGBO(13, 71, 161, 1.0),)],
      centerTitle: true,
      elevation: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,top: 30,),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
              ),
              items: [0,1,2,3,4,5].map((i) {
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
            Container(
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





