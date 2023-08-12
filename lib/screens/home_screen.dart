import 'package:flutter/material.dart';
import 'package:english_grammar/consts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<Widget> slides = [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: myOrangeColor,
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFFFFB74D),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('A1',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text('سطح ابتدائی',
            style: TextStyle(
              color: Color(0xFFAA3C00),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFF57C00),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFFFFB74D),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('A2',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text('سطح ابتدائی',
            style: TextStyle(
              color: Color(0xFFAA3C00),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFF81C784),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('B1',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text('سطح متوسط',
            style: TextStyle(
              color: Color(0xFF0D5212),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF388E3C),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFF81C784),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('B2',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text('سطح متوسط',
            style: TextStyle(
              color: Color(0xFF0D5212),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFF44336),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFFE57373),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('C1',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text('سطح پیشرفته',
            style: TextStyle(
              color: Color(0xFF770202),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFD32F2F),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 200,
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: CircularStepProgressIndicator(
                  circularDirection: CircularDirection.counterclockwise,
                  totalSteps: 100,
                  currentStep: 50,
                  stepSize: 20,
                  selectedColor: Colors.white,
                  unselectedColor: const Color(0xFFE57373),
                  padding: 0,
                  width: 180,
                  height: 180,
                  roundedCap: (_, __) => true,
                ),
              ),
              const Positioned(
                left: 55,
                top: 40,
                child: Text('C2',
                  style: TextStyle(
                    fontSize: 56,
                    fontFamily: "LEMON MILK Pro FTR Medium",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
              const Positioned(
                  left: 55,
                  top: 120,
                  child: Text('زمان باقیمانده',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  left: 47,
                  top: 140,
                  child: Text('5 ساعت و 12 دقیقه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),

        const Positioned(
          right: 30,
          bottom: 20,
          child: Text(' سطح پیشرفته  ',
            style: TextStyle(
              color: Color(0xFF770202),
              fontSize: 16,
              fontWeight: FontWeight.w700,

            ),
          ),
        )
      ],
    ),];

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
              child: Contents(
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
              child: Contents(
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
              child: Contents(
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

class Contents extends StatefulWidget {
  Contents({
    Key? key,
    this.title,
    this.icon,
    this.needProgress = true,
  });

  final title;
  final icon;
  bool needProgress;

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {

  int step = 0;

    Widget progress(){
      if(widget.needProgress == true){
        return CircularStepProgressIndicator(
          totalSteps: 25,
          currentStep: 10,
          stepSize: 7,
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
          padding: 0,
          width: 30,
          height: 30,
          roundedCap: (_, __) => true,
        );
      }else{
        return const SizedBox(width: 20,);
      }
    }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        progress(),
        Icon(widget.icon,
          color: Colors.white30,
          size: 48,),
        const Flexible(
          child: SizedBox(
            width: 40,
          ),
        ),
        Text(widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),)
      ],
    );
  }
}


