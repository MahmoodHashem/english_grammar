
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:english_grammar/models/progress_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Note.dart';
import 'boxes.dart';
import 'package:english_grammar/screens/dictionary_screen.dart';
import 'package:english_grammar/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:english_grammar/models/answers_provider.dart';
import 'package:english_grammar/models/note_data.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  noteBoxes = await Hive.openBox<Note>('noteBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => Progress(),
        ),
        ChangeNotifierProvider(
          create: (context) => Answer(),
        ),
    ChangeNotifierProvider(
    create: (context) =>NoteData(),
    ),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily:  'Estedad regular'
        ),
        home:Home(),
      ),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              color = color == Colors.transparent ? Colors.blue.shade800 : Colors.transparent;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.blue.shade800,
                  width: 2,
                )
              ),
              child: Center(
                child: Text('blank'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

