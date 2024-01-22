// ignore_for_file: file_names

import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:calculadora_pas/widgets/slider_duplo_personalizado.dart';
import 'package:calculadora_pas/widgets/slider_personalizado.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcertoseErrosLEM extends StatelessWidget {
  const AcertoseErrosLEM({
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
            "Acertos e Erros\nLíngua Estrangeira",
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
            maxSlider: provider.numeroLEMTipoA.toDouble(),

            text_1: "Acertos tipo A:", 
            variavelProvider_1: "acertosLEMTipoA", 
            valorProvider_1: provider.acertosLEMTipoA, 

            text_2: "Erros tipo A:", 
            variavelProvider_2: "errosLEMTipoA", 
            valorProvider_2: provider.errosLEMTipoA, 
          ),
          SliderPersonalizado(
            maxHeight: maxHeight, 
            maxWidth: maxWidth, 
            variavelProvider: "acertosLEMTipoB", 
            valorProvider: provider.acertosLEMTipoB, 
            text: "Acertos tipo B:", 
            maxSlider: provider.numeroLEMTipoB.toDouble()),
          SliderDuploPersonalizado(
            maxHeight: maxHeight, 
            maxWidth: maxWidth,
            maxSlider: provider.numeroLEMTipoC.toDouble(), 

            text_1: "Acertos tipo C:", 
            variavelProvider_1: "acertosLEMTipoC", 
            valorProvider_1: provider.acertosLEMTipoC, 

            text_2: "Erros tipo C:", 
            variavelProvider_2: "errosLEMTipoC", 
            valorProvider_2: provider.errosLEMTipoC)
          ],
      ),
    );
  }
}