import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderPersonalizadoDouble extends StatefulWidget {
  const SliderPersonalizadoDouble({
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
  final double valorProvider;
  final String text;
  final double maxSlider;

  @override
  State<SliderPersonalizadoDouble> createState() => _SliderPersonalizadoDoubleState();
}

class _SliderPersonalizadoDoubleState extends State<SliderPersonalizadoDouble> {

  late double valor;

  @override
  void initState() {
    super.initState();
    valor = widget.valorProvider.toDouble();
  }

  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    void definirValor(){
      if(widget.variavelProvider == "notaTipoD"){
        setState(() {
          provider.notaTipoD = valor;
        });
      } 
    }

    double retornarValor(){
      if(widget.variavelProvider == "notaTipoD"){
        return provider.notaTipoD;
      }
      else{
        return 0;
      }
    }

    return Column(
      children: [
        Text(
          "${widget.text} ${double.parse(retornarValor().toStringAsFixed(3))}",
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
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(valor != 0 ? kcorprincipal : Colors.black.withOpacity(0.45)),
                      iconColor: MaterialStatePropertyAll(kcorsecundaria)),
                    color: kcorprincipal,
                    enableFeedback: false,
                    onPressed: (){
                      setState(() {
                          if(retornarValor() != 0){
                            valor > 0 ? valor = valor - 0.001 : null;
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
                        valor = value;  
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
                            valor = 0.001;
                            definirValor();
                          } else {
                            valor < widget.maxSlider ? valor = valor + 0.001 : null;
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