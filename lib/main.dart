import 'package:flame_game/plano_game.dart';
import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  PlanoGame game = PlanoGame();
  TapGestureRecognizer trigger = TapGestureRecognizer();
  trigger.onTapDown = game.onTapDown;
  runApp(game.widget);
  flameUtil.addGestureRecognizer(trigger);
  
}