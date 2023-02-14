import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class ImageStitch extends StatelessWidget {
  const ImageStitch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Image Stitching',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Panorama(
          child: Image.network(
              "https://images.pexels.com/photos/207385/pexels-photo-207385.jpeg"),
        ));
  }
}
