import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class Sounds{
static FlutterTts flutterTts = FlutterTts();
bool _speechEnabled = false;
static final SpeechToText speechToText = SpeechToText();
static String _lastWords = '';
//start voice
static start(text) async{
   flutterTts.speak(text);
   // print("start");
}
Future<void> initSpeech() async {
      _speechEnabled = await speechToText.initialize();
   }
   ///It automatically get called when plugin recognize any word.
static _onSpeechResult(SpeechRecognitionResult result) {
      _lastWords = result.recognizedWords;
//here you can do anything with recognize words.
   }

   ///Call when you want to listen
static startListening() async {
      await speechToText.listen(onResult: _onSpeechResult);
   }
   ///Call when you want to stop listening
static stopListening() async {
      await speechToText.stop();
   }

}