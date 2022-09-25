import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Util {

  criaTexto(conteudo,tamanho,cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
        color: cor,
      ),
    );
  }

  criaBotao(conteudoTxt, tamanhoTxt,corTxt,acao, corFundoBtn) {
   return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: corFundoBtn,
      fixedSize: const Size(100, 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    ),
      onPressed: acao,
      child: criaTexto(conteudoTxt, tamanhoTxt, corTxt),
    );
  }

  criaAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: criaTexto('Calculadora IMC', 30.0, Colors.white),
      centerTitle: true,
      actions: [
        Row(
          children: <Widget> [
            criaIconButton(Icons.refresh, null, Colors.white)
          ],
        )
      ],
    );
  }

  criaIconButton(icon, acao, corIcon) {
    return Row(
          children: <Widget> [
            IconButton(
              onPressed: acao,
              icon: Icon(icon, color: corIcon),
              )
          ],
        );
  }

}