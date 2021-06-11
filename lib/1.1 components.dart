import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon,
      @required this.onPressed,
      this.iconColor,
      this.buttonColor});
  final IconData icon;
  final Function onPressed;
  final iconColor;
  final buttonColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: iconColor,
      ),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: buttonColor,
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({
    @required this.colour,
    @required this.title,
    @required this.onPressed,
    @required this.textColor,
    @required this.buttonIcon,
    @required this.iconColor,
  });
  final Color colour;
  final Color textColor;
  final Color iconColor;
  final String title;
  final Function onPressed;
  final buttonIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Icon(
                buttonIcon,
                color: iconColor,
              ),
            ),
            MaterialButton(
              onPressed: () {
                onPressed();
              },
              minWidth: 1000.0,
              height: 42.0,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Playfair',
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PianoButton extends StatelessWidget {
  PianoButton({
    @required this.buttonColor,
    @required this.buttonTxt,
    @required this.buttonTxtColor,
    @required this.buttonWidth,
    @required this.onPressed,
    @required this.borderColor,
  });
  final Color buttonColor, buttonTxtColor, borderColor;
  final String buttonTxt;
  final double buttonWidth;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: buttonWidth,
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(
                color: borderColor,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Center(
              child: Text(
                buttonTxt,
                style: TextStyle(
                  color: buttonTxtColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
