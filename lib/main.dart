import 'package:flutter/material.dart';
import 'package:mult_pages_app/home-screen.dart';
import 'package:mult_pages_app/login-screen.dart';
import 'package:mult_pages_app/photosScreen.dart';
import 'package:mult_pages_app/piano-screen.dart';
import 'package:mult_pages_app/vidos-screen.dart';
import 'package:mult_pages_app/welcome-screen.dart';

void main() {
  runApp(CodeWithAhmed());
}

class CodeWithAhmed extends StatefulWidget {
  const CodeWithAhmed({Key key}) : super(key: key);

  @override
  _CodeWithAhmedState createState() => _CodeWithAhmedState();
}

class _CodeWithAhmedState extends State<CodeWithAhmed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code With Ahmed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        PhotosScreen.id: (context) => PhotosScreen(),
        VidosScreen.id: (context) => VidosScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        PianoScreen.id: (context) => PianoScreen(),
      },
    );
  }
}
