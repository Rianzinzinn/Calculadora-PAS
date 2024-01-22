import 'package:calculadora_pas/paginas/app_page_view.dart';
import 'package:calculadora_pas/paginas/nota_final.dart';
import 'package:calculadora_pas/paginas/pagina_inicial.dart';
import 'package:calculadora_pas/provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PaginaInicial(),
        routes: {
          "/paginainicial": (_) => const PaginaInicial(),
          "/apppageview": (_) => const AppPageView(),
          "/notafinal": (_) => const NotaFinal()
        },
      ),
    );
  }
}
