import 'dart:ui';
import 'package:flame/game.dart';

class PlanoGame extends Game {
   Size tamanhoTela;

   void render(Canvas canvas) {
     //Implementar a renderizaçao
   }

   void update(double t) {
     //Implementar o update
   }

   void resize(Size tamanho) {
     tamanhoTela = tamanho;
     super.resize(tamanho);
   }
}