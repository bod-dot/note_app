import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CusotmNotesItemCart.dart';
import 'package:note_app/views/widgets/Notes_app_bar.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
        NotesAppBar(),
       Expanded(child: NoteListView())
          ],
        ),
      ),
    );
  }
}

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const  BouncingScrollPhysics(),
      itemBuilder: (context,index){
      return  const Padding(
        padding:  EdgeInsets.symmetric(vertical: 8),
        child: CusotmNotesItemCard(),
      );
    
    });
  }
}