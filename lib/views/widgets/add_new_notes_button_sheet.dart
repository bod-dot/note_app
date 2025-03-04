import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custome_Text_filet.dart';
import 'package:note_app/views/widgets/custom_button.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 32,),
          CustomeTextFilet(hint: 'title',),
          SizedBox(height: 20,),
          CustomeTextFilet(hint: 'content',maxline: 5,),
          SizedBox(height:70),
          CustomButton(),
             SizedBox(height: 20,),
        ],),
      ),
    );
  }
}
