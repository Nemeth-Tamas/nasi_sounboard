import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Sounboard());
}

class Sounboard extends StatefulWidget {
  @override
  _SounboardState createState() => _SounboardState();
}

class _SounboardState extends State<Sounboard> {
  static AudioPlayer advPlayer = AudioPlayer();
  static AudioCache player = AudioCache(fixedPlayer: advPlayer);

  void logOnPress() {
    print("object");
  }

  void playLocal(String filename) {
    advPlayer.stop();
    player.play(filename);
  }

  void stopSound() {
    advPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nasi Soundboard",
      home: Scaffold(
          appBar: new AppBar(
            title: new Center(child: new Text("Nasi Soundboard")),
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: new Column(
              children: [
                new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RaisedButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () => playLocal("zalan.wav"),
                              child: Text(
                                "Zalán",
                                style: TextStyle(fontSize: 20.0),
                              )),
                          RaisedButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () => playLocal("edgy.wav"),
                              child: Text(
                                "Edgy",
                                style: TextStyle(fontSize: 20.0),
                              )),
                          RaisedButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () => playLocal("retard.wav"),
                              child: Text(
                                "Retard",
                                style: TextStyle(fontSize: 20.0),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                new Expanded(
                    child: new Align(
                  alignment: Alignment.bottomCenter,
                  child: new RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () => stopSound(),
                    child: new Text(
                      "STOP!!!!",
                      style: new TextStyle(fontSize: 30.0),
                    ),
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
