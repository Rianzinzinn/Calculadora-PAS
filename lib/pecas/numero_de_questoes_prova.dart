import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:calculadora_pas/widgets/slider_personalizado.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumeroDeQuestoesProva extends StatelessWidget {
  const NumeroDeQuestoesProva({
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
            "Parte 2 - Prova Geral",
            style: GoogleFonts.roboto(
              color: kcorsecundaria,
              fontWeight: FontWeight.bold,
              fontSize: maxWidth * 0.051 < 40 ? maxWidth * 0.051 : 40
            ),
            ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 120,
            variavelProvider: "numeroProvaTipoA",
            valorProvider: provider.numeroProvaTipoA,
            text: "Número de questões do tipo A:",
          ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 5,
            variavelProvider: "numeroProvaTipoB",
            valorProvider: provider.numeroProvaTipoB,
            text: "Número de questões do tipo B:",
          ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 20,
            variavelProvider: "numeroProvaTipoC",
            valorProvider: provider.numeroProvaTipoC,
            text: "Número de questões do tipo C:",
          ),
          SliderPersonalizado(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            maxSlider: 1,
            variavelProvider: "numeroProvaTipoD",
            valorProvider: provider.numeroProvaTipoD,
            text: "Número de questões do tipo D:",
          ),
        ],
      ),
    );
  }
}