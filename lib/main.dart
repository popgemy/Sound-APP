import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(SoundApp());
}

class SoundApp extends StatelessWidget {
  void PlaySound(int soundNummer) {
    final player = AudioPlayer();
    player.setSource(AssetSource('sounds/$soundNummer.wav'));
  }

  Expanded NewButton({int soundNummber, Color buttonColor, String buttonText}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          PlaySound(soundNummber);
        },
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonColor,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'sounds',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NewButton(
                soundNummber: 1,
                buttonColor: Colors.white,
                buttonText: 'sound1'),
            NewButton(
                soundNummber: 2,
                buttonColor: Colors.white,
                buttonText: 'sound2'),
            NewButton(
                soundNummber: 3,
                buttonColor: Colors.white,
                buttonText: 'sound3'),
            NewButton(
                soundNummber: 4,
                buttonColor: Colors.white,
                buttonText: 'sound4'),
            NewButton(
                soundNummber: 5,
                buttonColor: Colors.white,
                buttonText: 'sound5'),
            NewButton(
                soundNummber: 6,
                buttonColor: Colors.white,
                buttonText: 'sound6'),
            NewButton(
                soundNummber: 7,
                buttonColor: Colors.white,
                buttonText: 'sound7'),
            NewButton(
                soundNummber: 8,
                buttonColor: Colors.white,
                buttonText: 'sound8'),
          ],
        ),
      ),
    );
  }
}
