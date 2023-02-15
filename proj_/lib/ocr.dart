import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';


// void main() {
//   runApp(const MaterialApp(
//     title: 'ocr_scanner',
//     home: Ocr(),
//   )
//  );
// }

class Ocr extends StatefulWidget {
  const Ocr({super.key});

  @override
  State<Ocr> createState() => _OcrState();
}

class _OcrState extends State<Ocr> {

  // ignore: non_constant_identifier_names
  String scanned_text = 'Scan text from an Image!';
  bool textscanning = false;
  bool done = false;
  XFile? image;

  void getImage (source) async {
    // textscanning = true;

    try {
      done = false;
      image = await ImagePicker().pickImage(source: source);
      setState(() {});
      // ocr(image!);
    } catch (e) {
        scanned_text = "Error";
        setState(() {});
    }
  }

  void ocr (XFile image) async{
    textscanning = true;
    setState(() {});

    final img = InputImage.fromFilePath(image.path);
    var text = TextRecognizer(script: TextRecognitionScript.devanagiri);
    scanned_text = '';
    
    var recognizedText = await text.processImage(img);
    await text.close();

    scanned_text = recognizedText.text;
    
    // for (TextBlock blocks in recognizedText.blocks) {
    //   scanned_text += '\n\n';
    //   for (TextLine lines in blocks.lines) {
    //     scanned_text += '${lines.text}\n';
    //   }
    // }
    // textscanning = false;
    textscanning = false;
    done = true;

    if (scanned_text == '') 
    {
      scanned_text = 'No text detected';
    }
    setState(() {});
  }

  Widget display  (){
    if (image != null ) {
      // setState(() {});
      return textscanning? const CircularProgressIndicator(): done? SelectableText(scanned_text) : Image.file(File(image!.path));
    }
    else {
      // setState(() {});
      return Text(scanned_text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCR',
          style: TextStyle(
            fontSize: 25
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){getImage(ImageSource.gallery);}, 
            icon: const Icon(Icons.image)
          ),
          IconButton(
            onPressed: (){getImage(ImageSource.camera);}, 
            icon: const Icon(Icons.camera_alt)
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!done) {
            ocr(image!);
            // setState(() {});
          }         
        },
        tooltip: 'Scan',
        child: const Icon(Icons.camera),
      ),


      body: Center(
        child: SingleChildScrollView(
          child: display()
          //  : 
        )
      ),
    );
  }
}