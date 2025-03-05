import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubit/add_note/add_notes_cubit.dart';
import 'package:note_app/views/widgets/myform.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding:  EdgeInsets.only(right:24,left: 24,bottom:MediaQuery.of(context).viewInsets.bottom
),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
          return AbsorbPointer(
            absorbing : state is AddNotesLodaing ?true:false,
            
            
          child:  const   SingleChildScrollView(child: MyForm()));
        }, listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          } else if (state is AddNotesFalier) {
            print("there is a prablem ${state.errMessage}");
          }
        }),
      ),
    );
  }
}
