import 'package:disabilities/Presentation/main%20screen/main_screen_badge.dart';
import 'package:disabilities/app/utils/sounds.dart';
import 'package:flutter/material.dart';

import 'Presentation/Text to Voice.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Sounds().initSpeech() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextToVoice(),
    );
  }
}
