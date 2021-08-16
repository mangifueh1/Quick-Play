import 'package:flutter/material.dart';
import 'package:quick_play/screens/colors.dart';

class AlbumArt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/coverimg.jpg', fit: BoxFit.fill,)),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(20, 8),
            spreadRadius: 3,
            blurRadius: 25
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2, -4),
            spreadRadius: -2,
            blurRadius: 20
          )
        ],
      ),
    );
  }
}