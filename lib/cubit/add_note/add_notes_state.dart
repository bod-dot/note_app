part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}
final class AddNotesLodaing extends AddNotesState {}
final class AddNotesSuccess extends AddNotesState {}
final class AddNotesFalier extends AddNotesState {
 final String errMessage;
  AddNotesFalier(this.errMessage);
}
