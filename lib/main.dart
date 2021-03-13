import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int _soundNum) {
    final player = AudioCache();
    player.play('note$_soundNum.wav');
  }

  Widget buildKey({Color colorKey, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: colorKey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorKey: Colors.red, soundNum: 1),
              buildKey(colorKey: Colors.orange, soundNum: 2),
              buildKey(colorKey: Colors.yellow, soundNum: 3),
              buildKey(colorKey: Colors.green, soundNum: 4),
              buildKey(colorKey: Colors.teal, soundNum: 5),
              buildKey(colorKey: Colors.blue, soundNum: 6),
              buildKey(colorKey: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
