import 'package:flutter/material.dart';
import 'package:note_app/helper/constat.dart';
import 'package:note_app/views/widgets/Custome_Text_filet.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(children: [
        SizedBox(height: 32,),
        CustomeTextFilet(hint: 'title',),
        SizedBox(height: 20,),
        CustomeTextFilet(hint: 'content',maxline: 5,),
        SizedBox(height:40),
        CustomButton()
      ],),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 55,
      decoration: BoxDecoration(
        color: KParemryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child:const  Center(child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),),
    );
  }
}