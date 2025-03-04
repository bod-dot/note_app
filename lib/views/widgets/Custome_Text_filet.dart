import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/helper/constat.dart';

class CustomeTextFilet extends StatelessWidget {
  const CustomeTextFilet({super.key , required this.hint,this.maxline=1});
  final String hint;
  final int maxline ;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: KParemryColor,
maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        

        enabledBorder:border(),
        focusedBorder: border(KParemryColor,),

        ));
      
  }
}
OutlineInputBorder border([ color])
{
  return OutlineInputBorder(
          borderSide:  BorderSide(color: color ?? Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(16))
        );
}
