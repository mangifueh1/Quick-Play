import 'package:flutter/material.dart';
import 'package:quick_play/screens/colors.dart';

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(
            icon: Icons.repeat,
          ),
          Controls(icon: Icons.skip_previous),
          PlayControls(
            icon: Icons.play_arrow,
          ),
          Controls(icon: Icons.skip_next),
          Controls(icon: Icons.shuffle),
        ],
      ),
    );
  }
}

class PlayControls extends StatelessWidget {
  final IconData icon;

  const PlayControls({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: darkPrimaryColor.withOpacity(0.5),
                offset: Offset(5, 10),
                spreadRadius: 3,
                blurRadius: 10),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-2, -4),
                spreadRadius: -2,
                blurRadius: 20)
          ]),
      child: Stack(
        children: [
          Center(
              child: Container(
            margin: EdgeInsets.all(6),
            decoration:
                BoxDecoration(color: darkPrimaryColor, shape: BoxShape.circle),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.all(12),
            decoration:
                BoxDecoration(color: primaryColor, shape: BoxShape.circle),
            child: Center(
                child: Icon(
              icon,
              size: 50,
            )),
          )),
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;

  const Controls({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: darkPrimaryColor.withOpacity(0.5),
                offset: Offset(5, 10),
                spreadRadius: 3,
                blurRadius: 10),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-2, -4),
                spreadRadius: -2,
                blurRadius: 20)
          ]),
      child: Stack(
        children: [
          Center(
              child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.all(10),
            decoration:
                BoxDecoration(color: primaryColor, shape: BoxShape.circle),
            child: Center(child: Icon(icon)),
          )),
        ],
      ),
    );
  }
}
