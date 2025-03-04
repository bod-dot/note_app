import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/helper/constat.dart';

class CustomeTextFilet extends StatelessWidget {
  const CustomeTextFilet({super.key , required this.hint,this.maxline=1, this.onSaved});
  final String hint;
  final int maxline ;
  final Function(String?) ?onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data)
      {
        if(data?.isEmpty ?? true)
        {
         return 'this field is required'; 
        }
      },
      onSaved: onSaved,
      cursorColor: kParemryColor,
maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
    
errorBorder: border(Colors.red),
        enabledBorder:border(),
        focusedBorder: border(kParemryColor,),
focusedErrorBorder: border(Colors.red),
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
