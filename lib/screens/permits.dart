import 'package:flutter/material.dart';

class Permit extends StatelessWidget {
  const Permit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Permits')),
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
//   FlutterSoundRecorder? _myRecorder;
//   AudioPlayer advancedPlayer = AudioPlayer();
//   String? filePath;
//   bool _play = false;
//   String _recorderTxt = '00:00:00';
//   FlutterSound flutterSound = FlutterSound();
//
//   void startIT() async {
//     filePath = '/sdcard/Download/temp.wav';
//     _myRecorder = FlutterSoundRecorder();
//     await _myRecorder!.openAudioSession(
//       focus: AudioFocus.requestFocusAndKeepOthers,
//       category: SessionCategory.playAndRecord,
//       mode: SessionMode.modeDefault,
//       device: AudioDevice.speaker,
//     );
//     await _myRecorder!.setSubscriptionDuration(Duration(milliseconds: 10));
//     await initializeDateFormatting();
//     await Permission.microphone.request();
//     await Permission.storage.request();
//     await Permission.manageExternalStorage.request();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     startIT();
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
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color.fromARGB(255, 2, 199, 226),
//                     Color.fromARGB(255, 6, 75, 210)
//                   ],
//                 ),
//                 borderRadius: BorderRadius.vertical(
//                   bottom: Radius.elliptical(
//                       MediaQuery.of(context).size.width, 100.0),
//                 ),
//               ),
//               child: Text(
//                 _recorderTxt,
//                 style: TextStyle(fontSize: 70),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildElevatedButton(
//                     myTap: record,
//                     icon: Icons.mic,
//                     iconColor: Colors.redAccent),
//                 SizedBox(width: 30.0),
//                 buildElevatedButton(
//                     myTap: stopRecord,
//                     icon: Icons.stop,
//                     iconColor: Colors.black),
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
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 elevation: 10.0,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _play = !_play;
//                 });
//                 if (_play) startPlaying();
//                 if (!_play) stopPlaying();
//               },
//               icon: _play
//                   ? Icon(
//                       Icons.stop,
//                     )
//                   : Icon(Icons.play_arrow),
//               label: _play
//                   ? Text(
//                       "Stop Playing",
//                       style: TextStyle(
//                         fontSize: 25,
//                       ),
//                     )
//                   : Text(
//                       "Start Playing",
//                       style: TextStyle(
//                         fontSize: 25,
//                       ),
//                     ),
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
//
//   Future<void> record() async {
//     Directory dir = Directory(filePath!);
//     if (!dir.existsSync()) {
//       dir.createSync();
//     }
//     _myRecorder!.openAudioSession();
//     await _myRecorder!.startRecorder(
//       toFile: filePath,
//       codec: Codec.pcm16WAV,
//     );
//
//     StreamSubscription _recorderSubscription =
//         _myRecorder!.onProgress!.listen((e) {
//       var date = DateTime.fromMillisecondsSinceEpoch(e.duration.inMilliseconds,
//           isUtc: true);
//       var txt = DateFormat('mm:ss:SS', 'en_GB').format(date);
//
//       setState(() {
//         _recorderTxt = txt.substring(0, 8);
//       });
//     });
//     _recorderSubscription.cancel();
//   }
//
//   Future<String?> stopRecord() async {
//     _myRecorder!.closeAudioSession();
//     return await _myRecorder!.stopRecorder();
//   }
//
//   Future<void> startPlaying() async {
//     AudioPlayer.open(
//       Audio.file(filePath),
//       autoStart: true,
//       showNotification: true,
//     );
//   }
//
//   Future<void> stopPlaying() async {
//     AudioPlayer.stop();
//   }
// }
