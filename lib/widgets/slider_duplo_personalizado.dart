import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderDuploPersonalizado extends StatefulWidget {
  const SliderDuploPersonalizado({
    super.key,
    required this.maxHeight,
    required this.maxWidth,
    required this.maxSlider,

    required this.text_1,
    required this.variavelProvider_1,
    required this.valorProvider_1,

    required this.text_2,
    required this.variavelProvider_2,
    required this.valorProvider_2,
    });

  final double maxHeight;
  final double maxWidth;
  final double maxSlider;
  
  final int valorProvider_1;
  final String variavelProvider_1;
  final String text_1;

  final int valorProvider_2;
  final String variavelProvider_2;
  final String text_2;

  @override
  State<SliderDuploPersonalizado> createState() => _SliderDuploPersonalizadoState();
}

class _SliderDuploPersonalizadoState extends State<SliderDuploPersonalizado> {
  
  late int valor1;
  late int valor2;

  @override
  void initState() {
    super.initState();
    valor1 = widget.valorProvider_1;
    valor2 = widget.valorProvider_2;
  }

  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    void definirValor1(){
      if(widget.variavelProvider_1 == "acertosLEMTipoA"){
        setState(() {
          provider.acertosLEMTipoA = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "errosLEMTipoA"){
        setState(() {
          provider.errosLEMTipoA = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "acertosLEMTipoC"){
        setState(() {
          provider.acertosLEMTipoC = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "errosLEMTipoC"){
        setState(() {
          provider.errosLEMTipoC = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "acertosProvaTipoA"){
        setState(() {
          provider.acertosProvaTipoA = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "errosProvaTipoA"){
        setState(() {
          provider.errosProvaTipoA = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "acertosProvaTipoC"){
        setState(() {
          provider.acertosProvaTipoC = valor1;
        });
      } 
      else if(widget.variavelProvider_1 == "errosProvaTipoC"){
        setState(() {
          provider.errosProvaTipoC = valor1;
        });
      }
    }

    void definirValor2(){
      if(widget.variavelProvider_2 == "acertosLEMTipoA"){
        setState(() {
          provider.acertosLEMTipoA = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "errosLEMTipoA"){
        setState(() {
          provider.errosLEMTipoA = valor2;
        });
      }
      else if(widget.variavelProvider_2 == "acertosLEMTipoC"){
        setState(() {
          provider.acertosLEMTipoC = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "errosLEMTipoC"){
        setState(() {
          provider.errosLEMTipoC = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoA"){
        setState(() {
          provider.acertosProvaTipoA = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "errosProvaTipoA"){
        setState(() {
          provider.errosProvaTipoA = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoB"){
        setState(() {
          provider.acertosProvaTipoB = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoC"){
        setState(() {
          provider.acertosProvaTipoC = valor2;
        });
      } 
      else if(widget.variavelProvider_2 == "errosProvaTipoC"){
        setState(() {
          provider.errosProvaTipoC = valor2;
        });
      } 
    }

    int retornarValor1(){
      if(widget.variavelProvider_1 == "acertosLEMTipoA"){
        return provider.acertosLEMTipoA;
      } 
      else if(widget.variavelProvider_1 == "errosLEMTipoA"){
        return provider.errosLEMTipoA;
      } 
      else if(widget.variavelProvider_1 == "errosLEMTipoC"){
        return provider.errosLEMTipoC;
      } 
      else if(widget.variavelProvider_1 == "acertosLEMTipoC"){
        return provider.acertosLEMTipoC;
      } 
      else if(widget.variavelProvider_1 == "acertosProvaTipoA"){
        return provider.acertosProvaTipoA;
      } 
      else if(widget.variavelProvider_1 == "errosProvaTipoA"){
        return provider.errosProvaTipoA;
      } 
      else if(widget.variavelProvider_1 == "acertosProvaTipoB"){
        return provider.acertosProvaTipoB;
      } 
      else if(widget.variavelProvider_1 == "errosProvaTipoC"){
        return provider.errosProvaTipoC;
      } 
      else if(widget.variavelProvider_1 == "acertosProvaTipoC"){
        return provider.acertosProvaTipoC;
      } 
      else{
        return 0;
      }
    }

    int retornarValor2(){
      if(widget.variavelProvider_2 == "acertosLEMTipoA"){
        return provider.acertosLEMTipoA;
      } 
      else if(widget.variavelProvider_2 == "errosLEMTipoA"){
        return provider.errosLEMTipoA;
      } 
      else if(widget.variavelProvider_2 == "acertosLEMTipoB"){
        return provider.acertosLEMTipoB;
      } 
      else if(widget.variavelProvider_2 == "errosLEMTipoC"){
        return provider.errosLEMTipoC;
      } 
      else if(widget.variavelProvider_2 == "acertosLEMTipoC"){
        return provider.acertosLEMTipoC;
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoA"){
        return provider.acertosProvaTipoA;
      } 
      else if(widget.variavelProvider_2 == "errosProvaTipoA"){
        return provider.errosProvaTipoA;
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoB"){
        return provider.acertosProvaTipoB;
      } 
      else if(widget.variavelProvider_2 == "errosProvaTipoC"){
        return provider.errosProvaTipoC;
      } 
      else if(widget.variavelProvider_2 == "acertosProvaTipoC"){
        return provider.acertosProvaTipoC;
      } 
      else{
        return 0;
      }
    }

    return Container(
      color: Colors.blue.withOpacity(0.0),
      width: widget.maxWidth > 735 ? 700 : widget.maxWidth * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "${widget.text_1} ${retornarValor1().toInt()}",
                style: GoogleFonts.roboto(
                  color: kcorsecundaria,
                  fontSize: widget.maxWidth * 0.7 < 436 ? widget.maxWidth * 0.7 * 0.055 : 24
                ),
                ),
              const SizedBox(height: 8),
              Container(
                color: Colors.red.withOpacity(0.0),
                width: widget.maxWidth * 0.4 > 350 ? 350 : widget.maxWidth * 0.4,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(valor1 != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                            iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                          color: kcorprincipal,
                          enableFeedback: false,
                          onPressed: (){
                            setState(() {
                              if(retornarValor1() != 0){
                                valor1 > 0 ? valor1-- : null;
                              } else {
                                valor1 = 0;
                              }
                            });
                            definirValor1();
                          }, 
                          icon: Icon(
                            Icons.remove,
                            color: kcorsecundaria,
                            )),
                        SizedBox(
                          width: constraints.maxWidth * 0.55,
                          child: Slider(
                            max: widget.maxSlider,
                            activeColor: valor1 != 0 ? kcorprincipal : Colors.black.withOpacity(0.25),
                            inactiveColor: kcorprincipal.withOpacity(0.15),
                            value: retornarValor1().toDouble(), 
                            onChanged: (value){
                              setState(() {
                              valor1 = value.toInt();  
                              definirValor1();
                              if(retornarValor1() + retornarValor2() > widget.maxSlider){
                                valor2 = widget.maxSlider.toInt() - retornarValor1();
                                definirValor2();
                              }
                              if(retornarValor1() + retornarValor2() > widget.maxSlider){
                                valor2--;
                                definirValor2();
                              }
                              });
                            }),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(valor1 != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                            iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                          enableFeedback: false,
                          onPressed: (){
                            setState(() {
                              if(retornarValor1() < valor1){
                                valor1 = 1;
                                definirValor1();
                              } else {
                                valor1 < widget.maxSlider ? valor1++ : null;
                                definirValor1();
                              }
                              if(retornarValor1() + retornarValor2() > widget.maxSlider){
                                valor2 = widget.maxSlider.toInt() - retornarValor1();
                                definirValor2();
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
          ),
          Column(
            children: [
              Text(
                "${widget.text_2} ${retornarValor2().toInt()}",
                style: GoogleFonts.roboto(
                  color: kcorsecundaria,
                  fontSize: widget.maxWidth * 0.7 < 436 ? widget.maxWidth * 0.7 * 0.055 : 24
                ),
                ),
              const SizedBox(height: 8),
              Container(
                color: Colors.red.withOpacity(0.0),
                width: widget.maxWidth * 0.4 > 350 ? 350 : widget.maxWidth * 0.4,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(valor2 != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                            iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                          color: kcorprincipal,
                          enableFeedback: false,
                          onPressed: (){
                            setState(() {
                              if(retornarValor2() != 0){
                                valor2 > 0 ? valor2-- : null;
                              } else {
                                valor2 = 0;
                              }
                            });
                            definirValor2();
                          }, 
                          icon: Icon(
                            Icons.remove,
                            color: kcorsecundaria,
                            )),
                        SizedBox(
                          width: constraints.maxWidth * 0.55,
                          child: Slider(
                            max: widget.maxSlider,
                            activeColor: valor2 != 0 ? kcorprincipal : Colors.black.withOpacity(0.25),
                            inactiveColor: kcorprincipal.withOpacity(0.15),
                            value: retornarValor2().toDouble(), 
                            onChanged: (value){
                              setState(() {
                              valor2 = value.toInt();  
                              definirValor2();
                              
                              if(retornarValor2() + retornarValor1() > widget.maxSlider){
                                valor1 = widget.maxSlider.toInt() - retornarValor2();
                                definirValor1();
                              }

                              });
                            }),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(valor2 != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                            iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                          enableFeedback: false,
                          onPressed: (){
                            setState(() {
                              if(retornarValor2() < valor2){
                                valor2 = 1;
                                definirValor2();
                              } else {
                                valor2 < widget.maxSlider ? valor2++ : null;
                                definirValor2();
                              }
                              if(retornarValor1() + retornarValor2() > widget.maxSlider){
                                valor1 = widget.maxSlider.toInt() - retornarValor2();
                                definirValor1();
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
          ),
        
        ],
      ),
    );
  }
}