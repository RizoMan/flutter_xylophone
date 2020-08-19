import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(var note) {
    final AudioCache player = AudioCache();
    player.play("note$note.wav");
  }

  Widget buildKey(var note, Color color){
    return Expanded(
                child: FlatButton(
                  color: color,
                  onPressed: () {
                    playSound('$note');
                  },
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
              buildKey('1', Colors.red),
              buildKey('2', Colors.orange),
              buildKey('3', Colors.yellow),
              buildKey('4', Colors.lime),
              buildKey('5', Colors.green),
              buildKey('6', Colors.teal),
              buildKey('7', Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
