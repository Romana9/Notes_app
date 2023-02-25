import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomTextFormField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.validate();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
