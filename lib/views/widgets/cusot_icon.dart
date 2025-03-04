
import 'package:flutter/material.dart';

class CustomIconButtuon extends StatelessWidget {
  const CustomIconButtuon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        
        borderRadius: BorderRadius.circular(16)
      ),
      child:  Icon(icon,size: 32,),
    );
  }
}