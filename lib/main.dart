import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:quick_play/screens/player_ui.dart';

Map audioData = {
  'image':
      'https://thegrowingdeveloper.org/thumbs/1000x1000r/audios/quiet-time-photo.jpg',
  'url':
      'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: PlayerScreen(),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   AudioPlayer audioPlayer = AudioPlayer();

//   Duration totalDuration;
//   Duration position;
//   String audioState;

//   initAudio() {
//     audioPlayer.onDurationChanged.listen((updateDuration) {
//       setState(() {
//         totalDuration = updateDuration;
//       });
//     });
//     audioPlayer.onAudioPositionChanged.listen((updatePosition) {
//       setState(() {
//         position = updatePosition;
//       });
//     });

//     audioPlayer.onPlayerStateChanged.listen((playerState) {
//       if (playerState == AudioPlayerState.STOPPED) 
//         audioState = "Stopped";
      
//       if (playerState == AudioPlayerState.PLAYING) 
//         audioState = "Playing";
      
//       if (playerState == AudioPlayerState.PAUSED) 
//         audioState = "Paused";

//         setState(() {
                  
//         });
//       }
      
//     );
//   }

//   @override
//   void initState() {
//     initAudio();
//     super.initState();
//   }

//   pauseAudio() {
//     audioPlayer.pause();
//   }

//   stopAudio() {
//     audioPlayer.stop();
//   }

//   playAudio() {
//     audioPlayer.play(
//         'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               totalDuration.toString().split('.').first,
//             ),
//             Text(
//               position.toString().split('.').first,
//             ),
//             Text(
//               audioState.toString().split('.').first,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   playAudio();
//                 },
//                 child: Text('Play the Audio')),
//             ElevatedButton(
//                 onPressed: () {
//                   pauseAudio();
//                 },
//                 child: Text('Pause the Audio')),
//             ElevatedButton(
//                 onPressed: () {
//                   stopAudio();
//                 },
//                 child: Text('Stop the Audio'))
//           ],
//         ),
//       ),
//     );
//   }
// }
