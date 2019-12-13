import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({int sound, Color shadess}) {
    return Expanded(
      child: FlatButton(
        color: shadess,
        onPressed: () {
          final player = AudioCache();

          player.play('note$sound.wav');
        },
        child: Container(),
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
              buildKey(sound: 1, shadess: Colors.deepPurple),
              buildKey(sound: 2, shadess: Colors.green),
              buildKey(sound: 3, shadess: Colors.orange),
              buildKey(sound: 4, shadess: Colors.red),
              buildKey(sound: 5, shadess: Colors.deepOrangeAccent),
              buildKey(sound: 6, shadess: Colors.lime),
              buildKey(sound: 7, shadess: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
