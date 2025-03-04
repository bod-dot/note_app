import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/cusot_icon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           Text(title,style:const  TextStyle(fontSize: 28),),

       CustomIconButtuon(icon: icon,)
      ],
    );
  }
}
