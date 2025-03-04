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
        child: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({
    super.key,
  });

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
   final GlobalKey<FormState> formKey= GlobalKey();
   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
   String ?title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
       const  SizedBox(height: 32,),
        CustomeTextFilet(hint: 'title',onSaved: (data){
          title = data;
        },),
       const  SizedBox(height: 20,),
        CustomeTextFilet(hint: 'content',maxline: 5,onSaved: (data)
        {
          subtitle = data;
        },),
       const  SizedBox(height:70),
        CustomButton(onTop: ()
        {
          if(formKey.currentState!.validate())
          {
            formKey.currentState!.save();
          }else{
            autovalidateMode = AutovalidateMode.always;
          }
        },),
          const  SizedBox(height: 20,),
      ],),
    );
  }
}
