import 'package:calculadora_pas/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoDeAcao extends StatelessWidget {
  const BotaoDeAcao({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed
  });

  final Color backgroundColor;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        enableFeedback: false,
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        foregroundColor: MaterialStatePropertyAll(kcorsecundaria)
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}