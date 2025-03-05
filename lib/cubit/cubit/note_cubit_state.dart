part of 'note_cubit_cubit.dart';


sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}
final class NoteCubitSuccess extends NoteCubitState {


  final List<NoteModel>notes;

  NoteCubitSuccess({required this.notes});
}
final class NoteCubitFaluire extends NoteCubitState {
  final String errMessage;

  NoteCubitFaluire({required this.errMessage});
  
}
