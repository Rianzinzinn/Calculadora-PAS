import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderPersonalizado extends StatefulWidget {
  const SliderPersonalizado({
    super.key,
    required this.maxHeight,
    required this.maxWidth,
    required this.variavelProvider,
    required this.valorProvider,
    required this.text,
    required this.maxSlider
    });
  final double maxHeight;
  final double maxWidth;
  final String variavelProvider;
  final int valorProvider;
  final String text;
  final double maxSlider;

  @override
  State<SliderPersonalizado> createState() => _SliderPersonalizadoState();
}

class _SliderPersonalizadoState extends State<SliderPersonalizado> {

  late int valor;

  @override
  void initState() {
    super.initState();
    valor = widget.valorProvider;
  }

  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    void definirValor(){
      if(widget.variavelProvider == "numeroLEMTipoA"){
        setState(() {
          provider.numeroLEMTipoA = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroLEMTipoB"){
        setState(() {
          provider.numeroLEMTipoB = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroLEMTipoC"){
        setState(() {
          provider.numeroLEMTipoC = valor;
        });
      } 
      else if(widget.variavelProvider == "acertosLEMTipoB"){
        setState(() {
          provider.acertosLEMTipoB = valor;
        });
      } 
      else if(widget.variavelProvider == "acertosProvaTipoB"){
        setState(() {
          provider.acertosProvaTipoB = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroProvaTipoA"){
        setState(() {
          provider.numeroProvaTipoA = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroProvaTipoB"){
        setState(() {
          provider.numeroProvaTipoB = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroProvaTipoC"){
        setState(() {
          provider.numeroProvaTipoC = valor;
        });
      } 
      else if(widget.variavelProvider == "numeroProvaTipoD"){
        setState(() {
          provider.numeroProvaTipoD = valor;
        });
      } 
    }

    double retornarValor(){
      if(widget.variavelProvider == "numeroLEMTipoA"){
        return provider.numeroLEMTipoA.toDouble();
      } 
      else if(widget.variavelProvider == "numeroLEMTipoB"){
        return provider.numeroLEMTipoB.toDouble();
      } 
      else if(widget.variavelProvider == "numeroLEMTipoC"){
        return provider.numeroLEMTipoC.toDouble();
      }
      else if(widget.variavelProvider == "acertosLEMTipoB"){
        return provider.acertosLEMTipoB.toDouble();
      } 
      else if(widget.variavelProvider == "acertosProvaTipoB"){
        return provider.acertosProvaTipoB.toDouble();
      } 
      else if(widget.variavelProvider == "numeroProvaTipoA"){
        return provider.numeroProvaTipoA.toDouble();
      } 
      else if(widget.variavelProvider == "numeroProvaTipoB"){
        return provider.numeroProvaTipoB.toDouble();
      } 
      else if(widget.variavelProvider == "numeroProvaTipoC"){
        return provider.numeroProvaTipoC.toDouble();
      }
      else if(widget.variavelProvider == "numeroProvaTipoD"){
        return provider.numeroProvaTipoD.toDouble();
      }
      else{
        return 0;
      }
    }

    return Column(
      children: [
        Text(
          "${widget.text} ${retornarValor().toInt()}",
          style: GoogleFonts.roboto(
            color: kcorsecundaria,
            fontSize: widget.maxWidth * 0.7 < 436 ? widget.maxWidth * 0.7 * 0.055 : 24
          ),
          ),
        const SizedBox(height: 8),
        Container(
          color: Colors.red.withOpacity(0.0),
          width: widget.maxWidth * 0.7 < 650 ? widget.maxWidth * 0.7 : 650,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    splashColor: Colors.black,
                    style: ButtonStyle( 
                      backgroundColor: MaterialStatePropertyAll(valor != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                      iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                    color: kcorprincipal,
                    enableFeedback: false,
                    onPressed: (){
                      setState(() {
                          if(retornarValor() != 0){
                            valor > 0 ? valor-- : null; 
                          } else {
                            valor = 0;
                          }
                        }); 
                        definirValor(); 
                    },
                    icon: Icon(
                      Icons.remove,
                      color: kcorsecundaria,
                      )),
                  SizedBox(
                    width: constraints.maxWidth * 0.75,
                    child: Slider(
                      max: widget.maxSlider,
                      activeColor: valor != 0 ? kcorprincipal : Colors.black.withOpacity(0.25),
                      inactiveColor: kcorprincipal.withOpacity(0.15),
                      value: retornarValor().toDouble(), 
                      onChanged: (value){
                        setState(() {
                        valor = value.toInt();  
                        definirValor();
                        });
                      }),
                  ),
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(valor != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                      iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                    enableFeedback: false,
                    onPressed: (){
                      setState(() {
                          if(retornarValor() < valor){
                            valor = 1;
                            definirValor();
                          } else {
                            valor < widget.maxSlider ? valor++ : null;
                            definirValor();
                          }
                        });
                    }, 
                    icon: Icon(
                      Icons.add,
                      color: kcorsecundaria,
                      ),),
                ],
              );
            }
          ),
        ),
      ],
    );
  }
}