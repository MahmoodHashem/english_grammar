

import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:translator/translator.dart';


class Dictionary extends StatefulWidget {
  const Dictionary({Key? key}) : super(key: key);

  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {

  TextEditingController _controller = TextEditingController();


  List languagesFromList = ['Persian', ' English', 'Pashto', 'Arabic'];
  List languagesToList = ['English', ' Persian', 'Pashto', 'Arabic'];
  List languageTags = ['fa','en','ps', 'ar'];

  String selectedFromLanguage = 'Persian';
  String selectedToLanguage = 'English';
  String translated = ' ';

  var translation;

  @override

  GoogleTranslator translator = GoogleTranslator();

  Future<String> _translateText(String text, String to) async {
    // Simulating translation delay

    String translatedText = ' ';
    await Future.delayed(Duration(seconds: 2));
    // Perform translation using Google Translate API or any other translation service
    await translator.translate(
      text,
      to: to, // Translate to French
    ).then((value) {
      translatedText = value.text;
    });

    return translatedText;
  }

  DropdownButton fromLanguageDropdown() {
    setState(() {

    });
    List<DropdownMenuItem<String>> dropdown = [];
    for (int i = 0; i < languagesFromList.length; i++) {
      String langauge = languagesFromList[i];
      var myDropdown = DropdownMenuItem(
        value: langauge,
        child: Text(langauge),
      );
      dropdown.add(myDropdown);
    }
    return DropdownButton(
        value: selectedFromLanguage,
        items: dropdown,
        onChanged: (value) {
          setState(() {
            selectedFromLanguage = value;
          });
        });
  }
  DropdownButton toLanguageDropdown() {
    setState(() {

    });
    List<DropdownMenuItem<String>> dropdown = [];
    for (int i = 0; i < languagesToList.length; i++) {
      String langauge = languagesToList[i];
      var myDropdown = DropdownMenuItem(
        value: langauge,
        child: Text(langauge),
      );
      dropdown.add(myDropdown);
    }
    return DropdownButton(
        value: selectedToLanguage,
        items: dropdown,
        onChanged: (value) {
          setState(() {
            selectedToLanguage = value;
          });
        });
  }

  String toBeTranslated(String language){
    switch(language){
      case 'Persian': return 'fa';
      case 'English': return 'en';
      case 'Pashto': return 'ps';
      case 'Arabic': return 'ar';
      default:
        return 'fa';
    }
  }
  bool direction(){
    if(toBeTranslated(selectedToLanguage) == 'en'){
      return false;
    }else{
      return true;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'دیکشنری آنلاین ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Colors.blue.shade800,)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB( 8,32,8,5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  margin: EdgeInsets.only(left: 5, top: 0, bottom: 0, right: 5),
                    child: fromLanguageDropdown()),
                Text('متن مورد نظر تان را اینجا وارد کنید',
                textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.blue.shade600,
                    width: 1,
                  )
                ),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textDirection: TextDirection.rtl,
                  maxLines: null,
                ),
              ),
            ),
            Card(
              child: TextButton(onPressed: ()async{
                 setState(() {
                      });
                      await _controller.text.translate(from:toBeTranslated(selectedFromLanguage) ,to: toBeTranslated(selectedToLanguage)).then((value) {
                   translated = value.text;

                 });


              }, child: Text("Translate",
                style: TextStyle(
                  fontFamily: 'LEMON MILK Pro FTR Medium',
                  color: Colors.blue.shade800,
                ),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                    margin: EdgeInsets.only(left: 5, top: 0, bottom: 0, right: 5),
                    child: toLanguageDropdown()),
                SizedBox(
                  width: 120,
                ),
                Text('ترجمه',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, ),
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.blue.shade600,
                      width: 1,
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder<String>(
                    future: _translateText(_controller.text.isNull? '':_controller.text,toBeTranslated(selectedToLanguage)),
                    builder: (context,snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator()); // Show loading indicator
                      } else if (snapshot.hasError) {
                        return Text(' '); // Show error message
                      } else {
                        return Text("${snapshot.data}",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textDirection: direction()?TextDirection.rtl:TextDirection.ltr,
                          maxLines: null,
                        );// Show translated text
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

