import 'package:flutter/material.dart';
import 'package:proj_/pdf_api.dart';
import 'package:proj_/main.dart';
import 'package:proj_/button_widget.dart';

class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("pdf generator"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonWidget(
                  text: 'Table PDF',
                  onClicked: () async {
                    final pdfFile = await PdfApi.generateTable();

                    PdfApi.openFile(pdfFile);
                  },
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Image PDF',
                  onClicked: () async {
                    final pdfFile = await PdfApi.generateImage();

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
