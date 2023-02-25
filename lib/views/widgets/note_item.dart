import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.notes,
  });

  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(notes.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16),
              child: ListTile(
                title: Text(
                  notes.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    notes.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 24),
              child: Text(notes.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
