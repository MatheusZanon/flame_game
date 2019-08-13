import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';

class PlanoGame extends Game {
   Size tamanhoTela;
   bool ganhou = false;

   void render(Canvas canvas) {
     //desenhando um background preto na tela
     Rect backgRect = Rect.fromLTWH(0, 0, tamanhoTela.width, tamanhoTela.height);
     Paint backgPaint = Paint();
     backgPaint.color = Color(0xff000000);
     canvas.drawRect(backgRect, backgPaint);

     //desenhando uma caixa branca no centro
     double centroTelaX = tamanhoTela.width / 2;
     double centroTelaY = tamanhoTela.height / 2;
     Rect planoRect = Rect.fromLTWH(centroTelaX - 75, centroTelaY - 75, 150, 150);
     Paint planoPaint = Paint();
     planoPaint.color = Color(0xffffffff);
     
     //condicao que fala se o jogador ganhou ou nao
     if (ganhou) {
       planoPaint.color = Color(0xff00ff00);
     }
     else {
       planoPaint.color = Color(0xffffffff);
     }
     canvas.drawRect(planoRect, planoPaint);
   }

   void update(double t) {
     //Implementar o update
   }

   void resize(Size tamanho) {
     tamanhoTela = tamanho;
     super.resize(tamanho);
   }

   void onTapDown(TapDownDetails d) {
    // cuidar do input do jogador
    double centroTelaX = tamanhoTela.width / 2;
    double centroTelaY = tamanhoTela.height / 2;
    if (
      d.globalPosition.dx >= centroTelaX - 75
      &&
      d.globalPosition.dx <= centroTelaX + 75
      &&
      d.globalPosition.dy >= centroTelaY - 75
      &&
      d.globalPosition.dy <= centroTelaY + 75
      
    ) { ganhou = true; }
   }
}