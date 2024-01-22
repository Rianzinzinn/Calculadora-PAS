import 'package:calculadora_pas/widgets/botao_de_selecao.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 8.0, left: 8),
        child: Text("Criado por Rian Ferreira"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SizedBox(
              width: constraints.maxHeight * 0.45,
              child: Center(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: constraints.maxHeight * 0.45,
                          child: Lottie.asset('lottie/calculadora.json')),
                        BotaoDeSelecao(
                          text: "Calcular Escore Bruto",
                          onPressed: () => Navigator.pushNamed(context, "/apppageview"),
                          maxHeight: constraints.maxHeight,
                          maxWidth: constraints.maxWidth,
                        ),
                        BotaoDeSelecao(
                          text: "Calcular Argumento Final",
                          color: Colors.black.withOpacity(0.45),
                          onPressed: (){},
                          maxHeight: constraints.maxHeight,
                          maxWidth: constraints.maxWidth,
                        ),
                      ],
                    );
                  }
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}