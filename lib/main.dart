// main.dart

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Player(),
    );
  }
}

class Player extends StatelessWidget {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('PlayAudio'),
                onPressed: () {
                  player.play(AssetSource('twice.mp3'));
                },
              ),
              ElevatedButton(
                child: Text('StopAudio'),
                onPressed: () {
                  player.stop();
                },
              ),
              ElevatedButton(
                child: Text('Pause'),
                onPressed: () {
                  player.pause();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
