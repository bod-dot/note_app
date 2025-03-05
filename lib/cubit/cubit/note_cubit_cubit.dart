import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/helper/constat.dart';
import 'package:note_app/models/note_model.dart';
part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());

  fetchAllNotes()
  {
    try{
      var noteBox=Hive.box<NoteModel>(kNoteBox);
      emit(NoteCubitSuccess(notes: noteBox.values.toList()));


    } catch(e)
    {
      emit(NoteCubitFaluire(errMessage: e.toString()));
    }
  }
}
