import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/helper/constat.dart';
import 'package:note_app/models/note_model.dart';
part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
 

  List<NoteModel>?notes;
  fetchAllNotes()
  {

      var noteBox=Hive.box<NoteModel>(kNoteBox);
      notes= noteBox.values.toList();
   


   
  }
}
