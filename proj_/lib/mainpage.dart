import 'package:flutter/material.dart';
import 'package:proj_/qr_create_page.dart';
import 'package:proj_/qr_scan_page.dart';
import 'package:proj_/button_widget.dart';

class MainPage extends StatefulWidget {
  final String title = 'abc' ;

  // const MainPage({
  //    this.title = = 'abc',
  // });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                text: 'Create QR Code',
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRCreatePage(),
                )),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                text: 'Scan QR Code',
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRScanPage(),
                )),
              ),
            ],
          ),
        ),
      );
}
