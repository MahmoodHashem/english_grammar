
import 'package:english_grammar/models/note_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:english_grammar/models/progress_provider.dart';

class AddNote extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? newTitle;
    String? newDetails;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Note',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (newValue){
                  newTitle = newValue;
                },
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (newValue){
                  newDetails = newValue;
                },
              ),
              ElevatedButton(onPressed: (){
                Provider.of<NoteData>(context, listen: false).addTask(newTitle!, newDetails!);
                Navigator.pop(context);
              }, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}