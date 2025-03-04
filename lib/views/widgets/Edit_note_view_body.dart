import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custome_Text_filet.dart';
import 'package:note_app/views/widgets/Notes_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:   Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            NotesAppBar(icon: Icons.check,title: "Edit Note",),

              SizedBox(height: 30,),
            CustomeTextFilet(hint: "title"),
            SizedBox(height: 20,),
            CustomeTextFilet(hint: "content",maxline: 5),
          ],
        ),
      ),
    );
  }
}