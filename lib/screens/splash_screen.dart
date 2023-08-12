

import 'package:flutter/material.dart'; 


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('MGrammar', 
            style: TextStyle(
              fontSize: 40, 
              color: Color.fromRGBO(13, 71, 161, 1.0),
              fontFamily: 'LEMON MILK Pro FTR Medium',
            ),
            ),
            Text('اِم گرامر',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            )),
            Text('(مرجع معتبر گرامر زبان انگلیسی)' ,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),)
          ],
        ),
      )
    );
  }
}
