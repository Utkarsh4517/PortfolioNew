import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SelectableText(
        text,
        style: GoogleFonts.chivo(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
      ),
    );
  }
}
