

import 'package:flutter/material.dart';
import 'package:note_app/views/Edit_Note_view.dart';

class CusotmNotesItemCard extends StatelessWidget {
  const CusotmNotesItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNoteView()));},
      child: Container(
        padding: const EdgeInsets.only(left: 16,top: 16,bottom: 20),
        decoration: BoxDecoration(
          color: Colors.amber,
      
          borderRadius: BorderRadius.circular(16),
        ),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            ListTile(
              
              title:const   Text("flutter tipes",style: TextStyle(fontSize: 30,color: Colors.black),),
              subtitle:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text("create flutter app notes with abd mlik",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),),
              ),
              trailing:  IconButton(onPressed: (){}, icon: const  Icon(Icons.delete,size: 30,color: Colors.black,),)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("may,2,2025",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),),
            ),
          ],
          
        ),
      ),
    );
  }
}