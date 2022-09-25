import 'package:flutter/material.dart';
import 'package:meu_contador/util.dart';

void main() {
  runApp(const MeuContador());
}

class MeuContador extends StatefulWidget {
  const MeuContador({super.key});

  @override
  State<MeuContador> createState() => _MeuContadorState();
}

class _MeuContadorState extends State<MeuContador> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paginaPrincipal(),
    );
  }

  paginaPrincipal() {
    return Scaffold(
      appBar: Util().criaAppBar(),
      body: Container(
        
      ),
    );
  }
}