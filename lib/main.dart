import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded backendSound({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                backendSound(color: Colors.red, soundNumber: 1),
                backendSound(color: Colors.orange, soundNumber: 2),
                backendSound(color: Colors.yellow, soundNumber: 3),
                backendSound(color: Colors.green, soundNumber: 4),
                backendSound(color: Colors.teal, soundNumber: 5),
                backendSound(color: Colors.blue, soundNumber: 6),
                backendSound(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ));
  }
}
