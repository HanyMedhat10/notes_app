import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
