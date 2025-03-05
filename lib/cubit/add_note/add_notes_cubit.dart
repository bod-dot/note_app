import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:note_app/helper/constat.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote({required NoteModel note})
  {
    emit(AddNotesLodaing());
  try{
     var noteBox = Hive.box<NoteModel>(kNoteBox);

     noteBox.add(note);
       emit(AddNotesSuccess());
  }catch(e)
  {
emit(AddNotesFalier(errMessage:e.toString() ));
  }

  }
}
