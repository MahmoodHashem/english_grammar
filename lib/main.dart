import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      fontFamily: 'Far.Andalus',
      focusColor: Colors.blueAccent,
      listTileTheme: ListTileThemeData(
        selectedColor: Colors.blueAccent,
      ),
    ),
    home: Home(),
  ));
}
