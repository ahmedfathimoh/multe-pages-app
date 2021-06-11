import 'package:flutter/material.dart';

class VidosScreen extends StatefulWidget {
  const VidosScreen({Key key}) : super(key: key);
  static const id = 'vidosScreen';

  @override
  _VidosScreenState createState() => _VidosScreenState();
}

class _VidosScreenState extends State<VidosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Videos Screen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/images/homeScreenTop.png'),
            top: 0,
            left: 0,
          ),
          Center(
            child: Image.asset('assets/images/appIcon.png'),
          ),
        ],
      ),
    );
  }
}
