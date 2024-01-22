import 'package:calculadora_pas/constantes.dart';
import 'package:calculadora_pas/pecas/acertos_e_erros_LEM.dart';
import 'package:calculadora_pas/pecas/acertos_e_erros_prova.dart';
import 'package:calculadora_pas/pecas/numero_de_questoes_LEM.dart';
import 'package:calculadora_pas/pecas/numero_de_questoes_prova.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:calculadora_pas/widgets/botao_de_acao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({super.key});

  @override
  State<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  @override
  Widget build(BuildContext context) {

    Provider provider = Provider.of(context) as Provider;

    PageController pageController = PageController(initialPage: 0);

    void zerarValores(){
      setState(() {
        if(provider.numeroLEMTipoA < provider.acertosLEMTipoA + provider.errosLEMTipoA){
          provider.acertosLEMTipoA = 0;
          provider.errosLEMTipoA = 0;
        }
        if(provider.numeroLEMTipoB < provider.acertosLEMTipoB){
          provider.acertosLEMTipoB = 0;
        }
        if(provider.numeroLEMTipoC < provider.acertosLEMTipoC + provider.errosLEMTipoC){
          provider.acertosLEMTipoC = 0;
          provider.errosLEMTipoC = 0;
        }
        if(provider.numeroProvaTipoA < provider.acertosProvaTipoA + provider.errosProvaTipoA){
          provider.acertosProvaTipoA = 0;
          provider.errosProvaTipoA = 0;
        }
        if(provider.numeroProvaTipoB < provider.acertosProvaTipoB){
          provider.acertosProvaTipoB = 0;
        }
        if(provider.numeroProvaTipoC < provider.acertosProvaTipoC + provider.errosProvaTipoC){
          provider.acertosProvaTipoC = 0;
          provider.errosProvaTipoC = 0;
        }
        if(provider.numeroProvaTipoD == 0){
          provider.notaTipoD = 0;
        }
      });
    }
    
    void redefinirValores(){
      if(pageController.page == 0){
        setState(() {
          provider.numeroLEMTipoA = 0;
          provider.numeroLEMTipoB = 0;
          provider.numeroLEMTipoC = 0;
        });
        }
      else if(pageController.page == 1){
        setState(() {
          provider.acertosLEMTipoA = 0;
          provider.errosLEMTipoA = 0;
          provider.acertosLEMTipoB = 0;
          provider.acertosLEMTipoC = 0;
          provider.errosLEMTipoC = 0;
      });
      }
      else if(pageController.page == 2){
        setState(() {
          provider.numeroProvaTipoA = 0;
          provider.numeroProvaTipoB = 0;
          provider.numeroProvaTipoC = 0;
          provider.numeroProvaTipoD = 0;
      });
      }
      else if(pageController.page == 3){
        setState(() {
          provider.acertosProvaTipoA = 0;
          provider.errosProvaTipoA = 0;
          provider.acertosProvaTipoB = 0;
          provider.acertosProvaTipoC = 0;
          provider.errosProvaTipoC = 0;
          provider.notaTipoD = 0;
      });
      }
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              enableFeedback: false,
              onPressed: () => Navigator.pop(context, "/paginainicial"), 
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
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              NumeroDeQuestoesLEM(
                maxHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth,
              ),
              AcertoseErrosLEM(
                maxHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth,
              ),
              NumeroDeQuestoesProva(
                maxHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth,
              ),
              AcertoseErrosProva(
                maxHeight: constraints.maxHeight, 
                maxWidth: constraints.maxWidth)
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            height: constraints.maxHeight * 0.12,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: constraints.maxWidth > 1300 ? constraints.maxWidth * 0.25 : constraints.maxWidth * 0.06,
                ),
                BotaoDeAcao(
                  text: "Redefinir",
                  backgroundColor: Colors.lightBlueAccent,
                  onPressed: () => redefinirValores()
                ), 
                Row(
                  children: [
                    BotaoDeAcao(
                      text: "Retornar",
                      backgroundColor: kcorprincipal,
                      onPressed: (){
                        pageController.animateToPage(
                          (pageController.page! - 1).toInt(), 
                          duration: const Duration(milliseconds: 500), 
                          curve: Curves.fastEaseInToSlowEaseOut);
                      },
                    ),
                    const SizedBox(width: 10,),
                    BotaoDeAcao(
                      text: "Continuar",
                      backgroundColor: kcorprincipal,
                      onPressed: (){
                        if(pageController.page == 3){
                          Navigator.pushNamed(context, "/notafinal");
                        }
                        else{
                          zerarValores();
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500), 
                            curve: Curves.fastEaseInToSlowEaseOut);
                        }
                      },
                    ),
                  ],
                ),                
                SizedBox(
                  width: constraints.maxWidth > 1300 ? constraints.maxWidth * 0.25 : constraints.maxWidth * 0.06,
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}