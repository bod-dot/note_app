import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CusotmNotesItemCart.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        physics:const  BouncingScrollPhysics(),
        itemBuilder: (context,index){
        return  const Padding(
          padding:  EdgeInsets.symmetric(vertical: 8),
          child: CusotmNotesItemCard(),
        );
      
      }),
    );
  }
}