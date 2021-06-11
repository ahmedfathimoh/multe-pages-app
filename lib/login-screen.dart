import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mult_pages_app/1.1%20components.dart';

import 'package:mult_pages_app/components2.dart';
import 'package:mult_pages_app/home-screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'loginScreen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/appIcon.png',
                      width: size.width / 3,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    'Login With : ',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RoundedButton(
                      onPressed: () {
                        print('Phone');
                      },
                      colour: Colors.teal,
                      textColor: Colors.white,
                      title: 'Login With Phone',
                      buttonIcon: FontAwesomeIcons.phone,
                      iconColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RoundedButton(
                      onPressed: () {
                        print('google');
                      },
                      colour: Colors.redAccent,
                      textColor: Colors.white,
                      title: 'Login With Google',
                      buttonIcon: FontAwesomeIcons.google,
                      iconColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RoundedButton(
                      onPressed: () {
                        print('facebook');
                      },
                      colour: Colors.blueAccent,
                      textColor: Colors.white,
                      title: 'Login With Facebook' ,
                      buttonIcon: FontAwesomeIcons.facebook,
                      iconColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextBottonTheme(
                            color: Colors.lightGreen,
                            txt: 'Skip',
                            onPressed: () {
                              Navigator.pushNamed(context, HomeScreen.id);
                            },
                          )),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(),
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
