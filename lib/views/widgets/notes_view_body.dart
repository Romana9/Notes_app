import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: () {},
          ),
          Expanded(
            child: BlocBuilder<NotesCubit, NotesState>(
              builder: (context, state) {
                List<NoteModel> notes =
                    BlocProvider.of<NotesCubit>(context).notes ?? [];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ListView.builder(
                      itemCount: notes.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return   Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: NoteItem(notes: notes[index],),
                        );
                      }),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
