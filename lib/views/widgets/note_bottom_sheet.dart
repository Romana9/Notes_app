import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(),
        ),
      ],
    );
  }
}


