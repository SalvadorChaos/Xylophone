import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('notesound$soundNumber.wav');
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
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
                builder: (context) => AlienXylophone(),
              ),
            );
          },
        ),
      ),
    );
  }
}

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

class RickAndMortyXylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('rickandmortysound$soundNumber.wav');
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
            buildKey(color: Color(0xfff8f277), soundNumber: 1),
            buildKey(color: Color(0xffb8faad), soundNumber: 2),
            buildKey(color: Color(0xffacdde5), soundNumber: 3),
            buildKey(color: Color(0xff1dc2cb), soundNumber: 4),
            buildKey(color: Color(0xff499635), soundNumber: 5),
            buildKey(color: Color(0xff8e491f), soundNumber: 6),
            buildKey(color: Color(0xff000000), soundNumber: 7),
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
              builder: (context) => XylophoneApp(),
            ),
          );
        },
      ),
    );
  }
}
