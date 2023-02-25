import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 50),
          const CustomTextFormField(hint: "Title"),
          const SizedBox(height: 20),
          const CustomTextFormField(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
