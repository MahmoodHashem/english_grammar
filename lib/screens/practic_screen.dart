import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:english_grammar/factors/option.dart';
import 'package:provider/provider.dart';
import 'package:english_grammar/models/answers_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Practice extends StatefulWidget {
  Practice({
    Key? key,
  }) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  List<Color> color = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent
  ];
  List<Color> color2 = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent
  ];

  List<String> result = ['happy','neutral','sad'];

  String inserted1 = '';
  String inserted2 = '';
  String inserted3 = '';
  String inserted4 = '';




  List question(BuildContext context, List<Color> color) {
    return [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select an appropriate answer ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange.shade600,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'I need'),
                    TextSpan(text: '______'),
                    TextSpan(
                      text: 'pencil for my drawing',
                    ),
                  ]))),
            ),
            SizedBox(
              height: 160,
            ),
            GestureDetector(
              onTap: () {
                if (color[1] == Colors.transparent &&
                    color[2] == Colors.transparent) {
                  setState(() {
                    color[0] = color[0] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                  Provider.of<Answer>(context, listen: false).option = 'blank';
                  print(Provider.of<Answer>(context, listen: false).option);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(color: color[0], text: 'No one'),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (color[0] == Colors.transparent &&
                    color[2] == Colors.transparent) {
                  setState(() {
                    color[1] = color[1] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                  Provider.of<Answer>(context, listen: false).option = 'a';
                  print(Provider.of<Answer>(context, listen: false).option);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(color: color[1], text: 'a'),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (color[0] == Colors.transparent &&
                    color[1] == Colors.transparent) {
                  setState(() {
                    color[2] = color[2] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                }

                Provider.of<Answer>(context, listen: false).option = 'an';
                print(Provider.of<Answer>(context, listen: false).option);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(
                  color: color[2],
                  text: 'an',
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Fill in the blanks with',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: ' a ',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                      )),
                  TextSpan(
                      text: ',',
                      style: TextStyle(
                        color: Colors.orange,
                      )),
                  TextSpan(
                      text: ' an ',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                      )),
                  TextSpan(
                      text: ' or ',
                      style: TextStyle(
                        color: Colors.orange,
                      )),
                  TextSpan(
                      text: ' the.',
                      style: TextStyle(color: Colors.blue.shade600))
                ])),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('I saw '),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 3,
                            showCursor: false,
                            decoration: InputDecoration(),
                            onChanged: (value){
                              inserted1 = value;
                            },
                          ),
                        ),
                        Text(' bird flying in the sky')
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('She bought '),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          maxLength: 3,
                          showCursor: false,
                          decoration: InputDecoration(),
                          onChanged: (value){
                            inserted2 = value;
                          },
                        ),
                      ),
                      Text('new shoes for the party')
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          maxLength: 3,
                          showCursor: false,
                          decoration: InputDecoration(),
                          onChanged: (value){
                            inserted3 = value;
                          },
                        ),
                      ),
                      Text(' Taj Mahah is a famous monument in india')
                    ],
                  ),
                  Row(
                    children: [
                      Text('My brother is '),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          maxLength: 3,
                          showCursor: false,
                          decoration: InputDecoration(),
                          onChanged: (value){
                            inserted4 = value;
                          },
                        ),
                      ),
                      Text(' architect')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select an appropriate answer ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'She saw '),
                    TextSpan(text: '______'),
                    TextSpan(
                      text: ' shooting star in the sky yesterday',
                    ),
                  ]))),
            ),
            SizedBox(
              height: 160,
            ),
            GestureDetector(
              onTap: () {
                if (color2[1] == Colors.transparent &&
                    color2[2] == Colors.transparent) {
                  setState(() {
                    color2[0] = color2[0] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                  Provider.of<Answer>(context, listen: false).option2 = 'a';
                  print(Provider.of<Answer>(context, listen: false).option2);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(color: color2[0], text: 'a'),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (color2[0] == Colors.transparent &&
                    color2[2] == Colors.transparent) {
                  setState(() {
                    color2[1] = color2[1] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                  Provider.of<Answer>(context, listen: false).option2 = 'the';
                  print(Provider.of<Answer>(context, listen: false).option2);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(color: color2[1], text: 'the'),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (color2[0] == Colors.transparent &&
                    color2[1] == Colors.transparent) {
                  setState(() {
                    color2[2] = color2[2] == Colors.transparent
                        ? Colors.blue.shade800
                        : Colors.transparent;
                  });
                }

                Provider.of<Answer>(context, listen: false).option = 'an';
                print(Provider.of<Answer>(context, listen: false).option);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Option(
                  color: color2[2],
                  text: 'an',
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child:Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('!تبریک',
                style: TextStyle(
                  color: Colors.blue.shade800,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('asset/images/${result[0]}.png',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                selectedColor: Colors.orange,
                unselectedColor: const Color.fromRGBO(224, 224, 224, 1.0),
                size: 9,
                roundedEdges: const Radius.circular(18),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('تمرین با موفقیت به اتمام رسید',
                  style: TextStyle(
                    fontSize: 25,
                  )
              ),
              const SizedBox(
                height: 20,
              ),
              Text('تعداد سوالات درست',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              Text('3/3',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                  height: 30
              ),
              Text('امتیاز نهایی',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              Text('100%',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  int i = 0;
  int _step = 0;

  Widget backButton() {
    if (_step < 1) {
      return const SizedBox(
        width: 30,
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          setState(() {
            if (_step > 0) {
              _step--;
              i--;
            }
          });
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF0D47A1))),
        child: Container(
          height: 40,
          width: 150,
          child: const Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(Icons.arrow_back),
              SizedBox(
                width: 20,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'قبلی',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )),
        ),
      );
    }
  }

  Widget upButton() {
    if (_step < 3) {
      return ElevatedButton(
        onPressed: () {
            if(_step == 0)
              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option);
            else if(_step == 1){
              Provider.of<Answer>(context, listen:false).option3 = inserted1;
              Provider.of<Answer>(context, listen:false).option4 = inserted2;
              Provider.of<Answer>(context, listen:false).option5 = inserted3;

              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option3);
              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option4);
              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option5);
              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option6);

            }else{
              Provider.of<Answer>(context, listen: false).updateAnswers(Provider.of<Answer>(context, listen:false).option2);
            }
            setState(() {
              if (_step < 3) {
                i++;
                _step++;
              } });

        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF0D47A1))),
        child: Container(
          height: 40,
          width: 150,
          child: const Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'بعدی',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.arrow_forward),
            ],
          )),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          // print(Provider.of<Progress>(context, listen: false).hr);
          //print(Provider.of<Progress>(context, listen: false).min);

          print( Provider.of<Answer>(context, listen: false).updateAnswers);
          Navigator.pop(context);
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF0D47A1))),
        child: Container(
          height: 40,
          width: 150,
          child: const Center(
              child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'بازگشت به خانه ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'تمرین 1: حروف تعریف',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue.shade800,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: question(context,color)[i],
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
