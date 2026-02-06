import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlainText extends StatelessWidget {
  const PlainText(this.text, this.size, {super.key});

  final String text;
  final double size;

  @override
  Widget build(BuildContext ctx) {
    return Text(
      text,
      style: GoogleFonts.merriweather(
        color: const Color.fromARGB(255, 3, 107, 121),
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(this.text, this.size, {super.key});

  final String text;
  final double size;

  @override
  Widget build(BuildContext ctx) {
    return Text(
      text,
      style: GoogleFonts.merriweather(
        color: const Color.fromARGB(255, 3, 107, 121),
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
      textAlign: TextAlign.center,
    );
  }
}
