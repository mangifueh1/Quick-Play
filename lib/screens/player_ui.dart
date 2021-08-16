import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quick_play/screens/album_art.dart';
import 'package:quick_play/screens/colors.dart';
import 'package:quick_play/screens/navbar.dart';
import 'package:quick_play/screens/playercontrols.dart';
// import 'package:quick_play/screens/player_controls.dart';

class PlayerScreen extends StatefulWidget {
  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          NavBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AlbumArt();
              },
            ),
          ),
          Column(
            children: [
              Text(
                'Relax Beat',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: darkPrimaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Maroon 5 ft. Lil Dicky',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: darkPrimaryColor),
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 2,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
            ),
            child: Slider(
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControls()
        ],
      ),
    );
  }
}
