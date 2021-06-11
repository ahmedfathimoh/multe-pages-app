import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:mult_pages_app/1.1%20components.dart';

class PianoScreen extends StatefulWidget {
  const PianoScreen({Key key}) : super(key: key);
  static const id = 'pianoScreen';

  @override
  _PianoScreenState createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/music.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  PianoButton(
                    buttonColor: Colors.black,
                    buttonTxt: 'DO',
                    buttonTxtColor: Colors.white,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('do.wav');
                    },
                    borderColor: Colors.white,
                  ),
                  PianoButton(
                    buttonColor: Colors.white,
                    buttonTxt: 'RE',
                    buttonTxtColor: Colors.black,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('re.wav');
                    },
                    borderColor: Colors.black,
                  ),
                  PianoButton(
                    buttonColor: Colors.black,
                    buttonTxt: 'MA',
                    buttonTxtColor: Colors.white,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('mi.wav');
                    },
                    borderColor: Colors.white,
                  ),
                  PianoButton(
                    buttonColor: Colors.white,
                    buttonTxt: 'FA',
                    buttonTxtColor: Colors.black,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('fa.wav');
                    },
                    borderColor: Colors.black,
                  ),
                  PianoButton(
                    buttonColor: Colors.black,
                    buttonTxt: 'SO',
                    buttonTxtColor: Colors.white,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('sol.wav');
                    },
                    borderColor: Colors.white,
                  ),
                  PianoButton(
                    buttonColor: Colors.white,
                    buttonTxt: 'La',
                    buttonTxtColor: Colors.black,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('la.wav');
                    },
                    borderColor: Colors.black,
                  ),
                  PianoButton(
                    buttonColor: Colors.black,
                    buttonTxt: 'Ce',
                    buttonTxtColor: Colors.white,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('si.wav');
                    },
                    borderColor: Colors.white,
                  ),
                  PianoButton(
                    buttonColor: Colors.white,
                    buttonTxt: 'DO2',
                    buttonTxtColor: Colors.black,
                    buttonWidth: size.width / 2,
                    onPressed: () {
                      nagmaTxt('do2.wav');
                    },
                    borderColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//functions
  void nagmaTxt(String txt) {
    var player = AudioCache();
    player.play(txt);
  }
}
