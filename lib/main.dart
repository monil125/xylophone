import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }
  Expanded pressedkey({int n, Color s}){
    return Expanded(
      child: FlatButton(
        color: s,
        onPressed: () {
          playSound(n);
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
            children: [
              pressedkey(n: 1, s: Colors.pinkAccent),
              pressedkey(n: 2, s: Colors.orange[300]),
              pressedkey(n: 3, s: Colors.blue[300]),
              pressedkey(n: 4, s: Colors.red[300]),
              pressedkey(n: 5, s: Colors.teal),
              pressedkey(n: 6, s: Colors.purple[300]),
              pressedkey(n: 7, s: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
