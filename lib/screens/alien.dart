import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'rickandmorty.dart';

class AlienXylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('aliensound$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.green[200], soundNumber: 1),
            buildKey(color: Colors.green[300], soundNumber: 2),
            buildKey(color: Colors.green[400], soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.green[600], soundNumber: 5),
            buildKey(color: Colors.green[700], soundNumber: 6),
            buildKey(color: Colors.green[800], soundNumber: 7),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.threesixty),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RickAndMortyXylophone(),
            ),
          );
        },
      ),
    );
  }
}
