import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/cubit/note_cubit_cubit.dart';

import 'package:note_app/views/widgets/Notes_app_bar.dart';
import 'package:note_app/views/widgets/note_list_view.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubitCubit(),
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              NotesAppBar(
                icon: Icons.search,
                title: "Note",
              ),
              Expanded(child: NoteListView())
            ],
          ),
        ),
      ),
    );
  }
}
