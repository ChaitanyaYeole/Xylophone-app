import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int noteNumber) {
    final audioPlayer = new AudioPlayer();
    audioPlayer.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded btns(Color clr, int noteNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(noteNumber),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(clr),
          overlayColor: MaterialStatePropertyAll(Colors.transparent),
        ),
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            btns(Colors.red, 1),
            btns(Colors.orange, 2),
            btns(Colors.yellow, 3),
            btns(Colors.green, 4),
            btns(Colors.teal, 5),
            btns(Colors.blue, 6),
            btns(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
