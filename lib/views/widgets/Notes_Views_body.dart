import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Notes_app_bar.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
        NotesAppBar()
          ],
        ),
      ),
    );
  }
}

