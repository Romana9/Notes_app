import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
   required this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 150, vertical: 13)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        onPressed: onPressed,
        child: const Text(
          "ADD",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
