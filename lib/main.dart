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

  int qt = 0;

  bool get vazio => qt == 0;
  bool get cheio => qt == 10; 

  incrementar() {
    setState(() {
      qt++;
    });
  }

  decrementar() {
    setState(() {
      qt--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paginaPrincipal(),
    );
  }

  paginaPrincipal() {
    return Scaffold(
      body: Container(
        decoration: Util().configuraFundo('pub.jpg'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTexto(cheio ? 'Lotado' : 'Pode entrar!', 30, cheio ? Colors.red : Colors.white),
            Padding(
              padding: EdgeInsets.all(64),
              child: Util().criaTexto('$qt', 100, Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Util().criaBotao('Saiu', 20, Colors.black, vazio ? null : decrementar, vazio ? Colors.white.withOpacity(0.5) : Colors.white),
                  const SizedBox(width: 32),
                Util().criaBotao('Entrou', 20, Colors.black, cheio ? null : incrementar, cheio ? Colors.white.withOpacity(0.5) : Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}