import 'package:flutter/material.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: NoteItem(),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
