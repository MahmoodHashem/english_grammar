import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:english_grammar/screens/lesson_screen.dart';
import 'package:english_grammar/models/progress_provider.dart';
import 'package:provider/provider.dart';




class Levels extends StatefulWidget {
   Levels({
     required this.colorOfContainer,
     required this.colorOfUnselectedProgress,
     required this.title,
     required this.subtitle,
     required this.colorOfSubtitle,
     this.isNavigatable = true,
  });

   final Color colorOfContainer;
   final Color colorOfUnselectedProgress;
   final String title;
   final String subtitle;
   final Color colorOfSubtitle;
   final bool isNavigatable;

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {

  int _totalSteps = 11;

  @override
  Widget build(BuildContext context)  {

    Future navigate() async{
      if(widget.isNavigatable == true){
       return  await Navigator.push(context, MaterialPageRoute(builder: (c) =>Lessons(
            colorOfTile: widget.colorOfContainer,
            colorOfContainer: widget.colorOfContainer,
            colorOfUnselectedProgress: widget.colorOfUnselectedProgress,
            title: widget.title,
            subtitle: widget.subtitle,
            colorOfSubtitle: widget.colorOfSubtitle) ));
      }else{
        return null;
      }
    }

    return GestureDetector(
      onTap: (){
        navigate();
      },
      child: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: widget.colorOfContainer,
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
                      totalSteps: _totalSteps,
                      currentStep: Provider.of<Progress>(context).progressIndicator,
                      stepSize: 20,
                      selectedColor: Colors.white,
                      unselectedColor: widget.colorOfUnselectedProgress,
                      padding: 0,
                      width: 180,
                      height: 180,
                      roundedCap: (_, __) => true,
                    ),
                  ),
                   Positioned(
                    left: 55,
                    top: 40,
                    child: Text(widget.title,
                      style: const TextStyle(
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
                   Positioned(
                      left: 47,
                      top: 140,
                      child: Text('${(Provider.of<Progress>(context).hour)} ساعت و ${(Provider.of<Progress>(context).min)} دقیقه',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),

             Positioned(
              right: 30,
              bottom: 20,
              child: Text(widget.subtitle,
                style: TextStyle(
                  color: widget.colorOfSubtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}