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

TextEditingController pesoControler = TextEditingController();
TextEditingController alturaControler = TextEditingController();

GlobalKey<FormState> formController = GlobalKey<FormState>();

String msg = 'Informe seus dados!';

limparCampos() {
    pesoControler.text = "";
    alturaControler.text = "";
    setState(() {
      msg = "Informe os seus dados!";
      formController = GlobalKey<FormState>();
    });
  }

  calcularIMC() {
    setState(() {
      double peso = double.parse(pesoControler.text);
      double altura = double.parse(alturaControler.text);
      double imc = peso / (altura * altura);
      String imcTxt = imc.toStringAsPrecision(4);
      if(imc <18.6) {
        msg = "Abaixo do peso imc: ($imcTxt)";
      } else if(imc > 18.6 && imc < 24.9) {
        msg = "Peso ideal imc: ($imcTxt)";
      } else {
        msg = "Acima do peso imc: ($imcTxt)";
      }
     });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: Util().criaAppBar(limparCampos),
      body: Container(
        color: Colors.white,
        child: Form(
          key: formController,
          child: Column(
          children: [
            const SizedBox(height: 20),
            Util().criaIconeGrande(),
            Util().criaInputText(TextInputType.number, "Peso(Kg)", pesoControler, "Informe seu peso"),
            Util().criaInputText(TextInputType.number, "Altura", alturaControler, "Informe sua altura"),
            Util().criaBotao("Calcular", 30, Colors.white, calcularIMC, Colors.blue, formController),
            Util().criaTexto(msg, 30, Colors.blue, false),
          ],
        ),
       ),
      ),
    ),
    );
  }

}