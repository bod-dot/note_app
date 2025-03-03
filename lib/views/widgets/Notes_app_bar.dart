import 'package:flutter/material.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           Text("Notes",style: TextStyle(fontSize: 28),),

       CustomIconButtuon()
      ],
    );
  }
}

class CustomIconButtuon extends StatelessWidget {
  const CustomIconButtuon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        
        borderRadius: BorderRadius.circular(16)
      ),
      child:const  Icon(Icons.search,size: 32,),
    );
  }
}