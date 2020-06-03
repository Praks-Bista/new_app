import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play("note$i.wav");
  }

  Widget builtKey({Color color, int i}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(color: Colors.red, i: 1),
              builtKey(color: Colors.orange, i: 2),
              builtKey(color: Colors.yellow, i: 3),
              builtKey(color: Colors.green, i: 4),
              builtKey(color: Colors.teal, i: 5),
              builtKey(color: Colors.blue, i: 6),
              builtKey(color: Colors.purple, i: 7),
            ],
          ),
        ),
      ),
    );
  }
}
