
import 'package:flutter/material.dart';
import 'package:note_app/helper/constat.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTop});
final VoidCallback? onTop;
  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onTop,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: kParemryColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child:const  Center(child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),),
      ),
    );
  }
}