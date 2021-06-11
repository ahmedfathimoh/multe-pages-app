import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mult_pages_app/components2.dart';
import 'package:mult_pages_app/photosScreen.dart';
import 'package:mult_pages_app/piano-screen.dart';
import 'package:mult_pages_app/vidos-screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'homeScreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.music),
          onPressed: () {
            Navigator.pushNamed(context, PianoScreen.id);
          },
        ),
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/homeScreenTop.png',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: size.height * 0.20,
                  ),
                  Center(
                    child: Text(
                      'HOME SCREEN',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 150.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextBottonTheme(
                            color: Colors.blueGrey,
                            txt: 'Videos',
                            onPressed: () {
                              Navigator.pushNamed(context, VidosScreen.id);
                            }),
                        TextBottonTheme(
                            color: Colors.green,
                            txt: 'Photos',
                            onPressed: () {
                              Navigator.pushNamed(context, PhotosScreen.id);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 