import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 40),
          CustomTextFormField(
            hint: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 32),
          CustomButton()
        ],
      ),
    );
  }
}
