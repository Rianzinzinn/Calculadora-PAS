import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Provider extends InheritedWidget{
  
  @override
  // ignore: overridden_fields
  final Widget child;


  //numero de questões lem
  int numeroLEMTipoA = 0;
  int numeroLEMTipoB = 0;
  int numeroLEMTipoC = 0;

  //numero de questões prova
  int numeroProvaTipoA = 0;
  int numeroProvaTipoB = 0;
  int numeroProvaTipoC = 0;
  int numeroProvaTipoD = 0;

  //variáveis lem
  int acertosLEMTipoA = 0;
  int errosLEMTipoA = 0;
  int acertosLEMTipoB = 0;
  int acertosLEMTipoC = 0;
  int errosLEMTipoC = 0;

  //variáveis prova
  int acertosProvaTipoA = 0;
  int errosProvaTipoA = 0;
  int acertosProvaTipoB = 0;
  int acertosProvaTipoC = 0;
  int errosProvaTipoC = 0;

  double notaTipoD = 0.000;

  Provider({super.key, required this.child}) : super(child: child);

  static Provider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>
    ();
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}