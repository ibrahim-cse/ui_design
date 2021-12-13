import 'package:flutter/material.dart';

class Recorder extends StatelessWidget {
  const Recorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Home')),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_sound/flutter_sound.dart';
// import 'dart:io';
// import 'dart:async';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:intl/date_symbol_data_local.dart';
// import 'package:intl/intl.dart' show DateFormat;
// import 'package:path/path.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class Recorder extends StatefulWidget {
//   const Recorder({Key? key}) : super(key: key);
//
//   @override
//   _RecorderState createState() => _RecorderState();
// }
//
// class _RecorderState extends State<Recorder> {
//   FlutterSound flutterSound = FlutterSound();
//
//   recorder() async{
//     String path = await flutterSound.startPlayer(null);
//     _playerSubscription = flutterSound.onPlayerStateChanged.listen((e) {
//       if (e != null) {
//         DateTime date = new DateTime.fromMillisecondsSinceEpoch(e.currentPosition.toInt());
//         String txt = DateFormat(‘mm:ss:SS’, ‘en_US’).format(date);
//         this.setState(() {
//           this._isPlaying = true;
//           this._playerTxt = txt.substring(0, 8);
//         });
//       }
//     });
//   }
//
//   stoper() async{
//     String result = await flutterSound.stopRecorder();
//     print(‘stopRecorder: $result’);
//     if (_recorderSubscription != null) {
//       _recorderSubscription.cancel();
//       _recorderSubscription = null;
//     }
//   }
//   startPlayer()async{
//     String path = await flutterSound.startPlayer(null);
//     _playerSubscription = flutterSound.onPlayerStateChanged.listen((e) {
//       if (e != null) {
//         DateTime date = new DateTime.fromMillisecondsSinceEpoch(e.currentPosition.toInt());
//         String txt = DateFormat(‘mm:ss:SS’, ‘en_US’).format(date);
//         this.setState(() {
//           this._isPlaying = true;
//           this._playerTxt = txt.substring(0, 8);
//         });
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 400.0,
//               // decoration: BoxDecoration(
//               //   gradient: const LinearGradient(
//               //     begin: Alignment.topCenter,
//               //     end: Alignment.bottomCenter,
//               //     colors: [
//               //       Color.fromARGB(255, 2, 199, 226),
//               //       Color.fromARGB(255, 6, 75, 210)
//               //     ],
//               //   ),
//               //   borderRadius: BorderRadius.vertical(
//               //     bottom: Radius.elliptical(
//               //         MediaQuery.of(context).size.width, 100.0),
//               //   ),
//               // ),
//               child: const Text(
//                 "tttt",
//                 style: TextStyle(fontSize: 70),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildElevatedButton(
//                     myTap: () {}, icon: Icons.mic, iconColor: Colors.redAccent),
//                 SizedBox(width: 30.0),
//                 buildElevatedButton(
//                     myTap: () {}, icon: Icons.stop, iconColor: Colors.black),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildElevatedButton(
//                     myTap: () {},
//                     icon: Icons.play_arrow,
//                     iconColor: Colors.black),
//                 SizedBox(width: 30.0),
//                 buildElevatedButton(
//                     myTap: () {}, icon: Icons.stop, iconColor: Colors.black),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   ElevatedButton buildElevatedButton(
//       {required IconData icon,
//       required Color iconColor,
//       required GestureTapCallback myTap}) {
//     return ElevatedButton.icon(
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.all(5.0),
//         side: BorderSide(color: Colors.redAccent, width: 3.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         primary: Colors.white,
//         elevation: 10.0,
//       ),
//       onPressed: myTap,
//       icon: Icon(
//         icon,
//         color: iconColor,
//         size: 35.0,
//       ),
//       label: Text(''),
//     );
//   }
// }
