import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Util {

configuraFundo(imagem) {
  return BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/imgs/${imagem}'),
          fit: BoxFit.cover,
          )
        );
  }

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
      fixedSize: Size(100, 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    ),
      onPressed: acao,
      child: criaTexto(conteudoTxt, tamanhoTxt, corTxt),
    );
  }

}