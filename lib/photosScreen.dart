import 'package:flutter/material.dart';

class PhotosScreen extends StatefulWidget {
  static const id = 'photosScreen';
  const PhotosScreen({Key key}) : super(key: key);

  @override
  _PhotosScreenState createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Photos Screen',
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
