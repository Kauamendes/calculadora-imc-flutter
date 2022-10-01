import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Util {

  criaTexto(conteudo,tamanho,cor, negrito) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        fontWeight: negrito ? FontWeight.bold : FontWeight.normal,
        color: cor,
      ),
    );
  }

  criaBotao(conteudoTxt, tamanhoTxt,corTxt,acao, corFundoBtn, controladorFormulario) {
   return Row(
      children: [
        Expanded( 
          flex: 1,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            height: 70,
            child:  ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: corFundoBtn,
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validate()) {
                  acao();
                }
              },
              child: criaTexto(conteudoTxt, tamanhoTxt, corTxt, false),
            ),
          ),
      )
    ],
   ); 
  }

  criaAppBar(funcao) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: criaTexto('Calculadora IMC', 30.0, Colors.white,false),
      centerTitle: true,
      actions: <Widget> [
        Row(
          children: <Widget> [
            IconButton(
              onPressed: funcao,
              icon: const Icon(Icons.refresh),
              )
          ],
        ),
      ],
    );
  }

  criaIconeGrande() {
    return const Icon(
      Icons.person_outline,
      size: 120.0,
      color: Colors.blue,
    );
  }

  criaInputText(tipoTeclado, textoEtiqueta, controlador, msgValidacao) {
    return TextFormField(
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
        labelText: textoEtiqueta,
        labelStyle: const TextStyle(
          color: Colors.blue,
        ),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 25.0,
      ),
      controller: controlador,
      validator: (value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      }
    );
  }

}