
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_new_notes_button_sheet.dart';
import 'package:note_app/views/widgets/Notes_Views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(side:const  BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.blue,
        
        onPressed: (){

          showModalBottomSheet(
            
            isScrollControlled: true,
            context: context, builder: (context)
          {
            return const  AddNotesButtonSheet();
          });
        },child: const Icon(Icons.add),),
      body: const NotesViewsBody(), 
      
    );
  }
}


