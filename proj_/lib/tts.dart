import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Tts extends StatefulWidget {
  const Tts({super.key});

  @override
  State<Tts> createState() => _TtsState();
}

class _TtsState extends State<Tts> {

  String text = '';
  TextEditingController textcontroller = TextEditingController();
  FlutterTts tts = FlutterTts();

  Future<void> _speak ()  async {
    await tts.speak(text);
  }
  


  // Future<void> speech () async {
  //   var done  = await flutterTts.speak(text);
  //   if (done) {
  //     setState(() => TtsState.playing);
  //   }
  //   else {
  //     setState(() {
  //     TtsState.paused;
  //   }
  //   );
  //   }
  // }

  @override
  void initState() {
    super.initState();
    textcontroller.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text to Speech',
          style: TextStyle(
            fontSize: 25
          ),
        ),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print (text);
          if (text != ''){
            _speak();
          }
        },
        tooltip: 'Read',
        child: const Icon(Icons.play_arrow),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          controller: textcontroller,
          maxLines: 25,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter text here .....',
          ),
          onChanged: (String txt) => setState(() {text = txt;})
        ),
      ),
    );
  }
}