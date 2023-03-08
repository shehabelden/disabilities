import 'package:disabilities/app/utils/sounds.dart';
import 'package:flutter/material.dart';

class TextToVoice extends StatefulWidget {
  const TextToVoice({Key? key}) : super(key: key);

  @override
  State<TextToVoice> createState() => _TextToVoiceState();
}

class _TextToVoiceState extends State<TextToVoice> {
  TextEditingController text=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
        const  Expanded(
            flex: 1,
              child: SizedBox()
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: TextField(
                controller:text,
                decoration:const InputDecoration(
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    alignment: Alignment.center,
                    height:40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        width: .1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child:InkWell(
                        onTap:(){
                          setState(() {
                            Sounds.start(text.text);
                          });
                        },
                        child: const Text("recorded")
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      width: .1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child:InkWell(
                      onTap:(){
                        setState(() {
                          Sounds.startListening();
                        });
                      },
                      child: const Text("type")
                  ),
                ),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}
