// ignore_for_file: file_names

import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:calculadora_pas/widgets/slider_duplo_personalizado.dart';
import 'package:calculadora_pas/widgets/slider_personalizado.dart';
import 'package:calculadora_pas/widgets/slider_personalizado_double.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcertoseErrosProva extends StatelessWidget {
  const AcertoseErrosProva({
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
            "Acertos e Erros\nProva Geral",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: kcorsecundaria,
              fontWeight: FontWeight.bold,
              fontSize: maxWidth * 0.051 < 40 ? maxWidth * 0.051 : 40
            ),
            ),
          SliderDuploPersonalizado(
            maxHeight: maxHeight, 
            maxWidth: maxWidth, 
            maxSlider: provider.numeroProvaTipoA.toDouble(),

            text_1: "Acertos tipo A:", 
            variavelProvider_1: "acertosProvaTipoA", 
            valorProvider_1: provider.acertosProvaTipoA, 

            text_2: "Erros tipo A:", 
            variavelProvider_2: "errosProvaTipoA", 
            valorProvider_2: provider.errosProvaTipoA, 
          ),
          SliderPersonalizado(
            maxHeight: maxHeight, 
            maxWidth: maxWidth, 
            variavelProvider: "acertosProvaTipoB", 
            valorProvider: provider.acertosProvaTipoB, 
            text: "Acertos tipo B:", 
            maxSlider: provider.numeroProvaTipoB.toDouble()),
          SliderDuploPersonalizado(
            maxHeight: maxHeight, 
            maxWidth: maxWidth,
            maxSlider: provider.numeroProvaTipoC.toDouble(), 

            text_1: "Acertos tipo C:", 
            variavelProvider_1: "acertosProvaTipoC", 
            valorProvider_1: provider.acertosProvaTipoC, 

            text_2: "Erros tipo C:", 
            variavelProvider_2: "errosProvaTipoC", 
            valorProvider_2: provider.errosProvaTipoC),
          SliderPersonalizadoDouble(
            maxHeight: maxHeight, 
            maxWidth: maxWidth, 
            variavelProvider: "notaTipoD", 
            valorProvider: provider.notaTipoD, 
            text: "Nota tipo D:", 
            maxSlider: provider.numeroProvaTipoD * 3)
          ],
      ),
    );
  }
}