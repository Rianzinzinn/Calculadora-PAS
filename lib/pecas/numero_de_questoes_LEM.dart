// ignore_for_file: file_names

import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:calculadora_pas/widgets/slider_personalizado.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumeroDeQuestoesLEM extends StatelessWidget {
  const NumeroDeQuestoesLEM({
    super.key,
    required this.maxHeight,
    required this.maxWidth
  });

  final double maxHeight;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Parte 1 - Língua Estrangeira",
            style: GoogleFonts.roboto(
              color: kcorsecundaria,
              fontWeight: FontWeight.bold,
              fontSize: maxWidth * 0.051 < 40 ? maxWidth * 0.051 : 40
            ),
            ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 10,
            variavelProvider: "numeroLEMTipoA",
            valorProvider: provider.numeroLEMTipoA,
            text: "Número de questões do tipo A:",
          ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 3,
            variavelProvider: "numeroLEMTipoB",
            valorProvider: provider.numeroLEMTipoB,
            text: "Número de questões do tipo B:",
          ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 3,
            variavelProvider: "numeroLEMTipoC",
            valorProvider: provider.numeroLEMTipoC,
            text: "Número de questões do tipo C:",
          ),
        ],
      ),
    );
  }
}