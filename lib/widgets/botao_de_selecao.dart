import 'package:calculadora_pas/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoDeSelecao extends StatelessWidget {
  const BotaoDeSelecao({
    super.key,
    required this.text,
    required this.onPressed,
    this.maxHeight,
    this.maxWidth,
    this.color
  });

  final String text;
  final Function() onPressed;
  final double? maxHeight;
  final double? maxWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: maxWidth! * 0.8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            child: ElevatedButton(
              style: ButtonStyle(
                enableFeedback: false,
                backgroundColor: MaterialStatePropertyAll(color ?? kcorprincipal),
                foregroundColor: MaterialStatePropertyAll(kcorsecundaria)
              ),
              onPressed: onPressed, 
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: maxHeight != null ? maxHeight! * 0.025 : 24),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: maxHeight != null ? maxHeight! * 0.025 : 24,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              )),
          );
        }
      ),
    );
  }
}