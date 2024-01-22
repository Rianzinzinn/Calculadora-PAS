import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotaFinal extends StatelessWidget {
  const NotaFinal({super.key});

  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    double variavel(){
      int numeroTipoA = provider.numeroLEMTipoA + provider.numeroProvaTipoA;
      int numeroTipoB = provider.numeroLEMTipoB + provider.numeroProvaTipoB;
      int numeroTipoC = provider.numeroLEMTipoC + provider.numeroProvaTipoC;
      int numeroTipoD = provider.numeroProvaTipoD;
      double variavel = 100 / (numeroTipoA + 2 * numeroTipoB + 2 * numeroTipoC + 3 * numeroTipoD);
      return double.parse(variavel.toStringAsFixed(3));
    }

    double notaParte1(){
      double escoreBruto_1 = provider.acertosLEMTipoA - provider.errosLEMTipoA + 2*provider.acertosLEMTipoB + 
      2*provider.acertosLEMTipoC - (0.667) * provider.errosLEMTipoC;
      double escoreBruto_2 = escoreBruto_1 * variavel();
      return double.parse(escoreBruto_2.toStringAsFixed(3));
    }

    double notaParte2(){
      double escoreBruto_1 = provider.acertosProvaTipoA - provider.errosProvaTipoA + 2*provider.acertosProvaTipoB + 
      2*provider.acertosProvaTipoC - (0.667) * provider.errosProvaTipoC;
      double escoreBruto_2 = escoreBruto_1 * variavel() + provider.notaTipoD;
      return double.parse(escoreBruto_2.toStringAsFixed(3));
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              enableFeedback: false,
              onPressed: () => Navigator.pop(context), 
              icon: Icon(
                Icons.arrow_back,
                color: kcorsecundaria)),
            elevation: 8,
            backgroundColor: kcorprincipal,
            centerTitle: true,
            title: Text(
              "Escore Bruto",
              style: GoogleFonts.roboto(
                color: kcorsecundaria,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TituloPersonalizado(
                  text: "Nota Parte 1:\n${notaParte1()}",
                  maxHeight: constraints.maxHeight,
                  maxWidth: constraints.maxWidth,
                ),
                TituloPersonalizado(
                  text: "Nota Parte 2:\n${notaParte2()}",
                  maxHeight: constraints.maxHeight,
                  maxWidth: constraints.maxWidth,
                ),
                TituloPersonalizado(
                  text: "Nota Parte 1 + 2:\n${notaParte1() + notaParte2()}",
                  maxHeight: constraints.maxHeight,
                  maxWidth: constraints.maxWidth,
                ),
              ], 
            ),
          ),    
        );
      }
    );
  }
}

class TituloPersonalizado extends StatelessWidget {
  const TituloPersonalizado({
    super.key,
    required this.maxHeight,
    required this.maxWidth,
    required this.text
  });

  final double maxHeight;
  final double maxWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: kcorsecundaria,
        fontWeight: FontWeight.bold,
        fontSize: maxWidth * 0.051 < 40 ? maxWidth * 0.051 : 40
      ),
      );
  }
}